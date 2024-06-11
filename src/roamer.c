#include "global.h"
#include "event_data.h"
#include "pokemon.h"
#include "random.h"
#include "roamer.h"

// Despite having a variable to track it, the roamer is
// hard-coded to only ever be in map group 0
#define ROAMER_MAP_GROUP 0

enum
{
    MAP_GRP, // map group
    MAP_NUM, // map number
};

#define ROAMER(index) (&gSaveBlock1Ptr->roamer[index])
EWRAM_DATA static u8 sLocationHistory[ROAMER_COUNT][3][2] = {0};
EWRAM_DATA static u8 sRoamerLocation[ROAMER_COUNT][2] = {0};
EWRAM_DATA u8 gEncounteredRoamerIndex = 0;

#define ___ MAP_NUM(UNDEFINED) // For empty spots in the location table

// Note: There are two potential softlocks that can occur with this table if its maps are
//       changed in particular ways. They can be avoided by ensuring the following:
//       - There must be at least 2 location sets that start with a different map,
//         i.e. every location set cannot start with the same map. This is because of
//         the while loop in RoamerMoveToOtherLocationSet.
//       - Each location set must have at least 3 unique maps. This is because of
//         the while loop in RoamerMove. In this loop the first map in the set is
//         ignored, and an additional map is ignored if the roamer was there recently.
//       - Additionally, while not a softlock, it's worth noting that if for any
//         map in the location table there is not a location set that starts with
//         that map then the roamer will be significantly less likely to move away
//         from that map when it lands there.
static const u8 sRoamerLocations[][6] =
{
    { MAP_NUM(ROUTE110), MAP_NUM(ROUTE111), MAP_NUM(ROUTE117), MAP_NUM(ROUTE118), MAP_NUM(ROUTE134), ___ },
    { MAP_NUM(ROUTE111), MAP_NUM(ROUTE110), MAP_NUM(ROUTE117), MAP_NUM(ROUTE118), ___, ___ },
    { MAP_NUM(ROUTE117), MAP_NUM(ROUTE111), MAP_NUM(ROUTE110), MAP_NUM(ROUTE118), ___, ___ },
    { MAP_NUM(ROUTE118), MAP_NUM(ROUTE117), MAP_NUM(ROUTE110), MAP_NUM(ROUTE111), MAP_NUM(ROUTE119), MAP_NUM(ROUTE123) },
    { MAP_NUM(ROUTE119), MAP_NUM(ROUTE118), MAP_NUM(ROUTE120), ___, ___, ___ },
    { MAP_NUM(ROUTE120), MAP_NUM(ROUTE119), MAP_NUM(ROUTE121), ___, ___, ___ },
    { MAP_NUM(ROUTE121), MAP_NUM(ROUTE120), MAP_NUM(ROUTE122), MAP_NUM(ROUTE123), ___, ___ },
    { MAP_NUM(ROUTE122), MAP_NUM(ROUTE121), MAP_NUM(ROUTE123), ___, ___, ___ },
    { MAP_NUM(ROUTE123), MAP_NUM(ROUTE122), MAP_NUM(ROUTE118), ___, ___, ___ },
    { MAP_NUM(ROUTE124), MAP_NUM(ROUTE121), MAP_NUM(ROUTE125), MAP_NUM(ROUTE126), ___, ___ },
    { MAP_NUM(ROUTE125), MAP_NUM(ROUTE124), MAP_NUM(ROUTE127), ___, ___, ___ },
    { MAP_NUM(ROUTE126), MAP_NUM(ROUTE124), MAP_NUM(ROUTE127), ___, ___, ___ },
    { MAP_NUM(ROUTE127), MAP_NUM(ROUTE125), MAP_NUM(ROUTE126), MAP_NUM(ROUTE128), ___, ___ },
    { MAP_NUM(ROUTE128), MAP_NUM(ROUTE127), MAP_NUM(ROUTE129), ___, ___, ___ },
    { MAP_NUM(ROUTE129), MAP_NUM(ROUTE128), MAP_NUM(ROUTE130), ___, ___, ___ },
    { MAP_NUM(ROUTE130), MAP_NUM(ROUTE129), MAP_NUM(ROUTE131), ___, ___, ___ },
    { MAP_NUM(ROUTE131), MAP_NUM(ROUTE130), MAP_NUM(ROUTE132), ___, ___, ___ },
    { MAP_NUM(ROUTE132), MAP_NUM(ROUTE131), MAP_NUM(ROUTE133), ___, ___, ___ },
    { MAP_NUM(ROUTE133), MAP_NUM(ROUTE132), MAP_NUM(ROUTE134), ___, ___, ___ },
    { MAP_NUM(ROUTE134), MAP_NUM(ROUTE133), MAP_NUM(ROUTE110), ___, ___, ___ },
    { ___, ___, ___, ___, ___, ___ },
};

#undef ___
#define NUM_LOCATION_SETS (ARRAY_COUNT(sRoamerLocations) - 1)
#define NUM_LOCATIONS_PER_SET (ARRAY_COUNT(sRoamerLocations[0]))

void ClearRoamerData(void)
{
    u32 i;

    for (i = 0; i < ROAMER_COUNT; i++)
        SetRoamerInactive(i);
}

void ClearRoamerLocationData(void)
{
    u32 i, j;
	for (i = 0; i < ROAMER_COUNT; i++)
	{
		for (j = 0; j < ARRAY_COUNT(sLocationHistory); j++)
		{
			sLocationHistory[i][j][MAP_GRP] = 0;
			sLocationHistory[i][j][MAP_NUM] = 0;
		}
		sRoamerLocation[i][MAP_GRP] = 0;
		sRoamerLocation[i][MAP_NUM] = 0;
	}
}

static void CreateInitialRoamerMon(u8 index, u16 species, u8 level)
{
    CreateMon(&gEnemyParty[0], species, level, USE_RANDOM_IVS, FALSE, 0, OT_ID_PLAYER_ID, 0);
    ROAMER(index)->ivs = GetMonData(&gEnemyParty[0], MON_DATA_IVS);
    ROAMER(index)->personality = GetMonData(&gEnemyParty[0], MON_DATA_PERSONALITY);
    ROAMER(index)->species = species;
    ROAMER(index)->level = level;
    ROAMER(index)->status = 0;
    ROAMER(index)->hp = GetMonData(&gEnemyParty[0], MON_DATA_MAX_HP);
    ROAMER(index)->cool = GetMonData(&gEnemyParty[0], MON_DATA_COOL);
    ROAMER(index)->beauty = GetMonData(&gEnemyParty[0], MON_DATA_BEAUTY);
    ROAMER(index)->cute = GetMonData(&gEnemyParty[0], MON_DATA_CUTE);
    ROAMER(index)->smart = GetMonData(&gEnemyParty[0], MON_DATA_SMART);
    ROAMER(index)->tough = GetMonData(&gEnemyParty[0], MON_DATA_TOUGH);
    ROAMER(index)->active = TRUE;
    sRoamerLocation[index][MAP_GRP] = ROAMER_MAP_GROUP;
    sRoamerLocation[index][MAP_NUM] = sRoamerLocations[Random() % NUM_LOCATION_SETS][0];
}

// gSpecialVar_0x8004 here corresponds to the options in the multichoice MULTI_TV_LATI (0 for 'Red', 1 for 'Blue')
void InitRoamer(void)
{
    ClearRoamerData();
    ClearRoamerLocationData();

    if (gSpecialVar_0x8004 == 0) // Red
        CreateInitialRoamerMon(0, SPECIES_LATIAS, 40);
    else
        CreateInitialRoamerMon(0, SPECIES_LATIOS, 40);
}

void UpdateLocationHistoryForRoamer(void)
{
    u32 i;

    for (i = 0; i < ROAMER_COUNT; i++)
    {
        sLocationHistory[i][2][MAP_GRP] = sLocationHistory[i][1][MAP_GRP];
        sLocationHistory[i][2][MAP_NUM] = sLocationHistory[i][1][MAP_NUM];

        sLocationHistory[i][1][MAP_GRP] = sLocationHistory[i][0][MAP_GRP];
        sLocationHistory[i][1][MAP_NUM] = sLocationHistory[i][0][MAP_NUM];

        sLocationHistory[i][0][MAP_GRP] = gSaveBlock1Ptr->location.mapGroup;
        sLocationHistory[i][0][MAP_NUM] = gSaveBlock1Ptr->location.mapNum;
    }
}

void RoamerMoveToOtherLocationSet(u8 roamerIndex)
{
    u8 mapNum = 0;

    if (!ROAMER(roamerIndex)->active)
        return;

    sRoamerLocation[roamerIndex][MAP_GRP] = ROAMER_MAP_GROUP;

    // Choose a location set that starts with a map
    // different from the roamer's current map
    while (1)
    {
        mapNum = sRoamerLocations[Random() % NUM_LOCATION_SETS][0];
        if (sRoamerLocation[roamerIndex][MAP_NUM] != mapNum)
        {
            sRoamerLocation[roamerIndex][MAP_NUM] = mapNum;
            return;
        }
    }
}

void RoamerMove(u8 roamerIndex)
{
    u8 locSet = 0;

    if ((Random() % 16) == 0)
    {
        RoamerMoveToOtherLocationSet(roamerIndex);
    }
    else
    {
        if (!ROAMER(roamerIndex)->active)
            return;

        while (locSet < NUM_LOCATION_SETS)
        {
            // Find the location set that starts with the roamer's current map
            if (sRoamerLocation[roamerIndex][MAP_NUM] == sRoamerLocations[locSet][0])
            {
                u8 mapNum;
                while (1)
                {
                    // Choose a new map (excluding the first) within this set
                    // Also exclude a map if the roamer was there 2 moves ago
                    mapNum = sRoamerLocations[locSet][(Random() % (NUM_LOCATIONS_PER_SET - 1)) + 1];
                    if (!(sLocationHistory[roamerIndex][2][MAP_GRP] == ROAMER_MAP_GROUP
                       && sLocationHistory[roamerIndex][2][MAP_NUM] == mapNum)
                     && mapNum != MAP_NUM(UNDEFINED))
                        break;
                }
                sRoamerLocation[roamerIndex][MAP_NUM] = mapNum;
                return;
            }
            locSet++;
        }
    }
}

bool8 IsRoamerAt(u8 roamerIndex, u8 mapGroup, u8 mapNum)
{
    if (ROAMER(roamerIndex)->active && mapGroup == sRoamerLocation[roamerIndex][MAP_GRP] && mapNum == sRoamerLocation[roamerIndex][MAP_NUM])
        return TRUE;
    else
        return FALSE;
}

void CreateRoamerMonInstance(u8 roamerIndex)
{
    u32 status;
    struct Pokemon *mon = &gEnemyParty[0];
    ZeroEnemyPartyMons();
    CreateMonWithIVsPersonality(mon, ROAMER(roamerIndex)->species, ROAMER(roamerIndex)->level, ROAMER(roamerIndex)->ivs, ROAMER(roamerIndex)->personality);
    // The roamer's status field is u8, but SetMonData expects status to be u32, so will set the roamer's status
    // using the status field and the following 3 bytes (cool, beauty, and cute).
#ifdef BUGFIX
    status = ROAMER(roamerIndex)->status;
    SetMonData(mon, MON_DATA_STATUS, &status);
#else
    SetMonData(mon, MON_DATA_STATUS, &ROAMER->status);
#endif
    SetMonData(mon, MON_DATA_HP, &ROAMER(roamerIndex)->hp);
    SetMonData(mon, MON_DATA_COOL, &ROAMER(roamerIndex)->cool);
    SetMonData(mon, MON_DATA_BEAUTY, &ROAMER(roamerIndex)->beauty);
    SetMonData(mon, MON_DATA_CUTE, &ROAMER(roamerIndex)->cute);
    SetMonData(mon, MON_DATA_SMART, &ROAMER(roamerIndex)->smart);
    SetMonData(mon, MON_DATA_TOUGH, &ROAMER(roamerIndex)->tough);
}

bool8 TryStartRoamerEncounter(void)
{
    u32 i;

    for (i = 0; i < ROAMER_COUNT; i++)
    {
        if (IsRoamerAt(i, gSaveBlock1Ptr->location.mapGroup, gSaveBlock1Ptr->location.mapNum) == TRUE && (Random() % 4) == 0)
        {
            CreateRoamerMonInstance(i);
            gEncounteredRoamerIndex = i;
            return TRUE;
        }
    }
    return FALSE;
}

void UpdateRoamerHPStatus(struct Pokemon *mon)
{
    ROAMER(gEncounteredRoamerIndex)->hp = GetMonData(mon, MON_DATA_HP);
    ROAMER(gEncounteredRoamerIndex)->status = GetMonData(mon, MON_DATA_STATUS);

    RoamerMoveToOtherLocationSet(gEncounteredRoamerIndex);
}

void SetRoamerInactive(u8 roamerIndex)
{
    ROAMER(roamerIndex)->active = FALSE;
}

void GetRoamerLocation(u8 roamerIndex, u8 *mapGroup, u8 *mapNum)
{
    *mapGroup = sRoamerLocation[roamerIndex][MAP_GRP];
    *mapNum = sRoamerLocation[roamerIndex][MAP_NUM];
}
