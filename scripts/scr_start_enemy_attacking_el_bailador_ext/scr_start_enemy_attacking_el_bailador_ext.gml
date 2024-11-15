function scr_start_enemy_attacking_el_bailador_ext()
{
    instance_create(390, 74, obj_quote_bubble_battle_yellow_3);
    
    if (global.route != 3)
        instance_create(0, 0, obj_quote_battle_el_bailador);
    else
        instance_create_depth(0, 0, -1000, obj_quote_battle_el_bailador_g);
}
