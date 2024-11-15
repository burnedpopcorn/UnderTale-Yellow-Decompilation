if (instance_exists(obj_battle_hp_current_boss_attacking) && !instance_exists(obj_battle_hp_overlay_boss_attacking))
{
    global.overlay_hp_enemy_draw = 1;
    instance_create(obj_battle_hp_current_boss_attacking.x, obj_battle_hp_current_boss_attacking.y, obj_battle_hp_overlay_boss_attacking);
}
