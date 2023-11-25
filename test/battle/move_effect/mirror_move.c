#include "global.h"
#include "test/battle.h"

ASSUMPTIONS
{
    ASSUME(gBattleMoves[MOVE_MIRROR_MOVE].effect == EFFECT_MIRROR_MOVE);
}

SINGLE_BATTLE_TEST("Mirror Move copies the last used move by the target")
{
    GIVEN {
        PLAYER(SPECIES_WOBBUFFET);
        OPPONENT(SPECIES_WOBBUFFET);
    } WHEN {
        TURN { MOVE(opponent, MOVE_TACKLE); MOVE(player, MOVE_MIRROR_MOVE); }
    } SCENE {
        ANIMATION(ANIM_TYPE_MOVE, MOVE_TACKLE, opponent);
        HP_BAR(player);
        MESSAGE(SPECIES_NAME(SPECIES_WOBBUFFET) " used " MOVE_NAME(MOVE_MIRROR_MOVE) "!");
        MESSAGE(SPECIES_NAME(SPECIES_WOBBUFFET) " used " MOVE_NAME(MOVE_TACKLE) "!");
        ANIMATION(ANIM_TYPE_MOVE, MOVE_TACKLE, player);
        HP_BAR(opponent);
    }
}

SINGLE_BATTLE_TEST("Mirror Move fails if no move was used before")
{
    GIVEN {
        PLAYER(SPECIES_WOBBUFFET);
        OPPONENT(SPECIES_WOBBUFFET);
    } WHEN {
        TURN { MOVE(player, MOVE_MIRROR_MOVE); MOVE(opponent, MOVE_TACKLE); }
    } SCENE {
        MESSAGE(SPECIES_NAME(SPECIES_WOBBUFFET) " used " MOVE_NAME(MOVE_MIRROR_MOVE) "!");
        MESSAGE("The Mirror Move failed!");
        ANIMATION(ANIM_TYPE_MOVE, MOVE_TACKLE, opponent);
        HP_BAR(player);
    }
}

SINGLE_BATTLE_TEST("Mirror Move's called powder move fails against Grass Types")
{
    GIVEN {
        ASSUME(gBattleMoves[MOVE_STUN_SPORE].powderMove);
        ASSUME(gSpeciesInfo[SPECIES_ODDISH].types[0] == TYPE_GRASS);
        ASSUME(gBattleMoves[MOVE_STUN_SPORE].effect == EFFECT_PARALYZE);
        PLAYER(SPECIES_ODDISH);
        OPPONENT(SPECIES_WOBBUFFET);
    } WHEN {
        TURN { MOVE(player, MOVE_STUN_SPORE); MOVE(opponent, MOVE_MIRROR_MOVE); }
    } SCENE {
        ANIMATION(ANIM_TYPE_MOVE, MOVE_STUN_SPORE, player);
        STATUS_ICON(opponent, paralysis: TRUE);
        MESSAGE("Foe " SPECIES_NAME(SPECIES_WOBBUFFET) " used " MOVE_NAME(MOVE_MIRROR_MOVE) "!");
        MESSAGE("Foe " SPECIES_NAME(SPECIES_WOBBUFFET) " used " MOVE_NAME(MOVE_STUN_SPORE) "!");
        NOT ANIMATION(ANIM_TYPE_MOVE, MOVE_STUN_SPORE, opponent);
        MESSAGE("It doesn't affect " SPECIES_NAME(SPECIES_ODDISH) "…");
        NOT STATUS_ICON(player, paralysis: TRUE);
    }
}

SINGLE_BATTLE_TEST("Mirror Move's called multi-hit move hits multiple times")
{
    GIVEN {
        ASSUME(gBattleMoves[MOVE_BULLET_SEED].effect == EFFECT_MULTI_HIT);
        PLAYER(SPECIES_WOBBUFFET);
        OPPONENT(SPECIES_WOBBUFFET);
    } WHEN {
        TURN { MOVE(player, MOVE_BULLET_SEED); MOVE(opponent, MOVE_MIRROR_MOVE); }
    } SCENE {
        ANIMATION(ANIM_TYPE_MOVE, MOVE_BULLET_SEED, player);
        HP_BAR(opponent);
        MESSAGE("Hit 5 time(s)!");
        MESSAGE("Foe " SPECIES_NAME(SPECIES_WOBBUFFET) " used " MOVE_NAME(MOVE_MIRROR_MOVE) "!");
        MESSAGE("Foe " SPECIES_NAME(SPECIES_WOBBUFFET) " used " MOVE_NAME(MOVE_BULLET_SEED) "!");
        ANIMATION(ANIM_TYPE_MOVE, MOVE_BULLET_SEED, opponent);
        HP_BAR(player);
        MESSAGE("Hit 5 time(s)!");
    }
}
