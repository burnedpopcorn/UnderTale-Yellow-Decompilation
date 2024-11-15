if (sprite_index == spr_trihecta_falling)
{
    global.battle_phase_step += 1;
    global.battle_enemy_name = "trihecta separated";
    script_execute(scr_generate_battle_trihecta_separated);
    global.enemy_attacking = true;
    instance_destroy();
    exit;
}
