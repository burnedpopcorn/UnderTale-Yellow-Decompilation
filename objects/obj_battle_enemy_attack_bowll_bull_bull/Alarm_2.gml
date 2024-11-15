if (image_alpha > 0)
{
    global.id_store = id;
    instance_create(x - (dust_disjoint * x_dir), y - (dust_disjoint * y_dir), obj_battle_enemy_attack_bowll_bull_dust);
    alarm[2] = dust_alarm;
}
