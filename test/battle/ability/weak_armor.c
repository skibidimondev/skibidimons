#include "global.h"
#include "test/battle.h"

ASSUMPTIONS
{
    ASSUME(gBattleMoves[MOVE_TACKLE].power != 0);
    ASSUME(gBattleMoves[MOVE_GUST].power != 0);
    ASSUME(gBattleMoves[MOVE_GUST].split == SPLIT_SPECIAL);
    ASSUME(gBattleMoves[MOVE_TACKLE].split == SPLIT_PHYSICAL);
}

SINGLE_BATTLE_TEST("Weak Armor lowers Defense by 1 and boosts Speed by 2 when hit by a physical attack")
{
    u16 move;

    PARAMETRIZE { move = MOVE_TACKLE; }
    PARAMETRIZE { move = MOVE_GUST; }

    GIVEN {
        PLAYER(SPECIES_SLUGMA) { Ability(ABILITY_WEAK_ARMOR); }
        OPPONENT(SPECIES_WOBBUFFET);
    } WHEN {
        TURN { MOVE(opponent, move); }
    } SCENE {
        ANIMATION(ANIM_TYPE_MOVE, move, opponent);
        HP_BAR(player);
        if (move == MOVE_TACKLE) {
            ABILITY_POPUP(player, ABILITY_WEAK_ARMOR);
            ANIMATION(ANIM_TYPE_GENERAL, B_ANIM_STATS_CHANGE, player);
            MESSAGE(SPECIES_NAME(SPECIES_SLUGMA) "'s Weak Armor lowered its Defense!");
            MESSAGE(SPECIES_NAME(SPECIES_SLUGMA) "'s Weak Armor raised its Speed!");
        } else {
            NONE_OF {
                ABILITY_POPUP(player, ABILITY_WEAK_ARMOR);
                ANIMATION(ANIM_TYPE_GENERAL, B_ANIM_STATS_CHANGE, player);
                MESSAGE(SPECIES_NAME(SPECIES_SLUGMA) "'s Weak Armor lowered its Defense!");
                MESSAGE(SPECIES_NAME(SPECIES_SLUGMA) "'s Weak Armor raised its Speed!");
            }
        }
    } THEN {
        if (move == MOVE_TACKLE) {
            EXPECT_EQ(player->statStages[STAT_DEF], DEFAULT_STAT_STAGE - 1);
            EXPECT_EQ(player->statStages[STAT_SPEED], DEFAULT_STAT_STAGE + 2);
        }
    }
}

// Oddly specific, but it was a bug at one point.
SINGLE_BATTLE_TEST("Weak Armor does not trigger when brought in by Dragon Tail and taking Stealth Rock damage")
{
    GIVEN {
        ASSUME(gBattleMoves[MOVE_STEALTH_ROCK].effect == EFFECT_STEALTH_ROCK);
        ASSUME(gBattleMoves[MOVE_DRAGON_TAIL].effect == EFFECT_HIT_SWITCH_TARGET);
        PLAYER(SPECIES_WOBBUFFET);
        PLAYER(SPECIES_SLUGMA) { Ability(ABILITY_WEAK_ARMOR); }
        OPPONENT(SPECIES_WOBBUFFET);
    } WHEN {
        TURN { MOVE(opponent, MOVE_STEALTH_ROCK); }
        TURN { MOVE(opponent, MOVE_DRAGON_TAIL); }
    } SCENE {
        ANIMATION(ANIM_TYPE_MOVE, MOVE_STEALTH_ROCK, opponent);
        ANIMATION(ANIM_TYPE_MOVE, MOVE_DRAGON_TAIL, opponent);
        HP_BAR(player);
        MESSAGE(SPECIES_NAME(SPECIES_SLUGMA) " was dragged out!");
        HP_BAR(player);
        MESSAGE("Pointed stones dug into Slugma!");
        NONE_OF {
            ABILITY_POPUP(player, ABILITY_WEAK_ARMOR);
            ANIMATION(ANIM_TYPE_GENERAL, B_ANIM_STATS_CHANGE, player);
            MESSAGE(SPECIES_NAME(SPECIES_SLUGMA) "'s Weak Armor lowered its Defense!");
            MESSAGE(SPECIES_NAME(SPECIES_SLUGMA) "'s Weak Armor raised its Speed!");
        }
    } THEN {
        EXPECT_EQ(player->statStages[STAT_DEF], DEFAULT_STAT_STAGE);
        EXPECT_EQ(player->statStages[STAT_SPEED], DEFAULT_STAT_STAGE);
    }
}

SINGLE_BATTLE_TEST("Weak Armor still lowers boosts Speed if Defense can't go any lower")
{
    GIVEN {
        PLAYER(SPECIES_SLUGMA) { Ability(ABILITY_WEAK_ARMOR); }
        OPPONENT(SPECIES_WOBBUFFET);
    } WHEN {
        TURN { MOVE(opponent, MOVE_SCREECH); }
        TURN { MOVE(opponent, MOVE_SCREECH); }
        TURN { MOVE(opponent, MOVE_SCREECH); }
        TURN { MOVE(opponent, MOVE_TACKLE); }
    } SCENE {
        ANIMATION(ANIM_TYPE_MOVE, MOVE_TACKLE, opponent);
        HP_BAR(player);
        ABILITY_POPUP(player, ABILITY_WEAK_ARMOR);
        NONE_OF {
            ANIMATION(ANIM_TYPE_GENERAL, B_ANIM_STATS_CHANGE, player);
            MESSAGE(SPECIES_NAME(SPECIES_SLUGMA) "'s Weak Armor lowered its Defense!");
        }
        MESSAGE(SPECIES_NAME(SPECIES_SLUGMA) "'s Defense won't go lower!");
        ANIMATION(ANIM_TYPE_GENERAL, B_ANIM_STATS_CHANGE, player);
        MESSAGE(SPECIES_NAME(SPECIES_SLUGMA) "'s Weak Armor raised its Speed!");
    } THEN {
        EXPECT_EQ(player->statStages[STAT_DEF], MIN_STAT_STAGE);
        EXPECT_EQ(player->statStages[STAT_SPEED], DEFAULT_STAT_STAGE + 2);
    }
}

SINGLE_BATTLE_TEST("Weak Armor still lowers Defense if Speed can't go any higher")
{
    GIVEN {
        PLAYER(SPECIES_SLUGMA) { Ability(ABILITY_WEAK_ARMOR); }
        OPPONENT(SPECIES_WOBBUFFET);
    } WHEN {
        TURN { MOVE(player, MOVE_AGILITY); }
        TURN { MOVE(player, MOVE_AGILITY); }
        TURN { MOVE(player, MOVE_AGILITY); }
        TURN { MOVE(opponent, MOVE_TACKLE); }
    } SCENE {
        ANIMATION(ANIM_TYPE_MOVE, MOVE_TACKLE, opponent);
        HP_BAR(player);
        ABILITY_POPUP(player, ABILITY_WEAK_ARMOR);
        ANIMATION(ANIM_TYPE_GENERAL, B_ANIM_STATS_CHANGE, player);
        MESSAGE(SPECIES_NAME(SPECIES_SLUGMA) "'s Weak Armor lowered its Defense!");
        NONE_OF {
            ANIMATION(ANIM_TYPE_GENERAL, B_ANIM_STATS_CHANGE, player);
            MESSAGE(SPECIES_NAME(SPECIES_SLUGMA) "'s Weak Armor raised its Speed!");
        }
        MESSAGE(SPECIES_NAME(SPECIES_SLUGMA) "'s Speed won't go higher!");
    } THEN {
        EXPECT_EQ(player->statStages[STAT_DEF], DEFAULT_STAT_STAGE - 1);
        EXPECT_EQ(player->statStages[STAT_SPEED], MAX_STAT_STAGE);
    }
}

SINGLE_BATTLE_TEST("Weak Armor doesn't interrupt multi hit moves if Defense can't go any lower")
{
    u32 j;
    GIVEN {
        PLAYER(SPECIES_MAGCARGO) { Ability(ABILITY_WEAK_ARMOR); Defense(999); }
        OPPONENT(SPECIES_CLOYSTER) { Ability(ABILITY_SKILL_LINK); }
    } WHEN {
        TURN { MOVE(opponent, MOVE_SCREECH); }
        TURN { MOVE(opponent, MOVE_SCREECH); }
        TURN { MOVE(opponent, MOVE_FURY_SWIPES); }
    } SCENE {
        for (j = 0; j < 2; j++)
        {
            ANIMATION(ANIM_TYPE_MOVE, MOVE_FURY_SWIPES, opponent);
            ABILITY_POPUP(player, ABILITY_WEAK_ARMOR);
            MESSAGE(SPECIES_NAME(SPECIES_MAGCARGO) "'s Weak Armor lowered its Defense!");
            MESSAGE(SPECIES_NAME(SPECIES_MAGCARGO) "'s Weak Armor raised its Speed!");
        }
        ANIMATION(ANIM_TYPE_MOVE, MOVE_FURY_SWIPES, opponent);
        ABILITY_POPUP(player, ABILITY_WEAK_ARMOR);
        MESSAGE(SPECIES_NAME(SPECIES_MAGCARGO) "'s Defense won't go lower!");
        MESSAGE(SPECIES_NAME(SPECIES_MAGCARGO) "'s Weak Armor raised its Speed!");
        for (j = 0; j < 2; j++)
        {
            ANIMATION(ANIM_TYPE_MOVE, MOVE_FURY_SWIPES, opponent);
            // Ability doesn't activate if neither stat can be changed.
            NONE_OF {
                ABILITY_POPUP(player, ABILITY_WEAK_ARMOR);
                MESSAGE(SPECIES_NAME(SPECIES_MAGCARGO) "'s Defense won't go lower!");
                MESSAGE(SPECIES_NAME(SPECIES_MAGCARGO) "'s Speed won't go higher!");
            }
        }
    } THEN {
        EXPECT_EQ(player->statStages[STAT_DEF], MIN_STAT_STAGE);
        EXPECT_EQ(player->statStages[STAT_SPEED], MAX_STAT_STAGE);
    }
}

SINGLE_BATTLE_TEST("Weak Armor doesn't interrupt multi hit moves if Speed can't go any higher")
{
    u32 j;
    GIVEN {
        PLAYER(SPECIES_MAGCARGO) { Ability(ABILITY_WEAK_ARMOR); Defense(999); }
        OPPONENT(SPECIES_CLOYSTER) { Ability(ABILITY_SKILL_LINK); }
    } WHEN {
        TURN { MOVE(player, MOVE_AGILITY); }
        TURN { MOVE(player, MOVE_AGILITY); }
        TURN { MOVE(opponent, MOVE_FURY_SWIPES); }
    } SCENE {
        ANIMATION(ANIM_TYPE_MOVE, MOVE_FURY_SWIPES, opponent);
        ABILITY_POPUP(player, ABILITY_WEAK_ARMOR);
        MESSAGE(SPECIES_NAME(SPECIES_MAGCARGO) "'s Weak Armor lowered its Defense!");
        MESSAGE(SPECIES_NAME(SPECIES_MAGCARGO) "'s Weak Armor raised its Speed!");
        for (j = 0; j < 4; j++)
        {
            ANIMATION(ANIM_TYPE_MOVE, MOVE_FURY_SWIPES, opponent);
            ABILITY_POPUP(player, ABILITY_WEAK_ARMOR);
            MESSAGE(SPECIES_NAME(SPECIES_MAGCARGO) "'s Weak Armor lowered its Defense!");
            MESSAGE(SPECIES_NAME(SPECIES_MAGCARGO) "'s Speed won't go higher!");
        }
    } THEN {
        EXPECT_EQ(player->statStages[STAT_DEF], DEFAULT_STAT_STAGE - 5);
        EXPECT_EQ(player->statStages[STAT_SPEED], MAX_STAT_STAGE);
    }
}
