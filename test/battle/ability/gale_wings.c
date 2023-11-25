#include "global.h"
#include "test/battle.h"

SINGLE_BATTLE_TEST("Gale Wings only grants priority at full HP")
{
    u16 hp;
    PARAMETRIZE { hp = 100; }
    PARAMETRIZE { hp = 99; }
    GIVEN {
        ASSUME(B_GALE_WINGS >= GEN_7);
        ASSUME(gBattleMoves[MOVE_AERIAL_ACE].type == TYPE_FLYING);
        PLAYER(SPECIES_TALONFLAME) { Ability(ABILITY_GALE_WINGS); HP(hp); MaxHP(100); Speed(1);}
        OPPONENT(SPECIES_WOBBUFFET) { Speed(100);};
    } WHEN {
        TURN { MOVE(player, MOVE_AERIAL_ACE); }
    } SCENE {
        if (hp == 100) {
            MESSAGE(SPECIES_NAME(SPECIES_TALONFLAME) " used " MOVE_NAME(MOVE_AERIAL_ACE) "!");
            MESSAGE("Foe " SPECIES_NAME(SPECIES_WOBBUFFET) " used " MOVE_NAME(MOVE_CELEBRATE) "!");
        }
        else {
            MESSAGE("Foe " SPECIES_NAME(SPECIES_WOBBUFFET) " used " MOVE_NAME(MOVE_CELEBRATE) "!");
            MESSAGE(SPECIES_NAME(SPECIES_TALONFLAME) " used " MOVE_NAME(MOVE_AERIAL_ACE) "!");
        }
    }
}

SINGLE_BATTLE_TEST("Gale Wings only grants priority to Flying-type moves")
{
    u32 move;
    PARAMETRIZE { move = MOVE_AERIAL_ACE; }
    PARAMETRIZE { move = MOVE_FLARE_BLITZ; }
    GIVEN {
        ASSUME(B_GALE_WINGS >= GEN_7);
        ASSUME(gBattleMoves[MOVE_AERIAL_ACE].type == TYPE_FLYING);
        ASSUME(gBattleMoves[MOVE_FLARE_BLITZ].type == TYPE_FIRE);
        PLAYER(SPECIES_TALONFLAME) { Ability(ABILITY_GALE_WINGS); HP(100); MaxHP(100); Speed(1);}
        OPPONENT(SPECIES_WOBBUFFET) { Speed(100);};
    } WHEN {
        TURN { MOVE(player, move); }
    } SCENE {
        if (move == MOVE_AERIAL_ACE) {
            MESSAGE(SPECIES_NAME(SPECIES_TALONFLAME) " used " MOVE_NAME(MOVE_AERIAL_ACE) "!");
            MESSAGE("Foe " SPECIES_NAME(SPECIES_WOBBUFFET) " used " MOVE_NAME(MOVE_CELEBRATE) "!");
        }
        else {
            MESSAGE("Foe " SPECIES_NAME(SPECIES_WOBBUFFET) " used " MOVE_NAME(MOVE_CELEBRATE) "!");
            MESSAGE(SPECIES_NAME(SPECIES_TALONFLAME) " used " MOVE_NAME(MOVE_FLARE_BLITZ) "!");
        }
    }
}

TO_DO_BATTLE_TEST("Gale Wings doesn't increase priority of Flying-type Hidden Power, Natural Gift, Judgment or Tera Blast");
