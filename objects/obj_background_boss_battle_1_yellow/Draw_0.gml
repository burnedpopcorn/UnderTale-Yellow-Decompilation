if (instance_exists(obj_battle_enemy_attack_dalv_lightning_vertical))
{
    if (obj_battle_enemy_attack_dalv_lightning_vertical.image_speed_counter < 1 || (obj_battle_enemy_attack_dalv_lightning_vertical.image_speed_counter >= 2 && obj_battle_enemy_attack_dalv_lightning_vertical.image_speed_counter < 4))
    {
        d3d_set_fog(true, c_white, 0, 0);
        draw_self();
        d3d_set_fog(false, c_white, 0, 0);
    }
    else
    {
        draw_self();
    }
}
else if (instance_exists(obj_battle_enemy_attack_dalv_lightning_horizontal))
{
    if (obj_battle_enemy_attack_dalv_lightning_horizontal.image_speed_counter < 1 || (obj_battle_enemy_attack_dalv_lightning_horizontal.image_speed_counter >= 2 && obj_battle_enemy_attack_dalv_lightning_horizontal.image_speed_counter < 4))
    {
        d3d_set_fog(true, c_white, 0, 0);
        draw_self();
        d3d_set_fog(false, c_white, 0, 0);
    }
    else
    {
        draw_self();
    }
}
else
{
    draw_self();
}
