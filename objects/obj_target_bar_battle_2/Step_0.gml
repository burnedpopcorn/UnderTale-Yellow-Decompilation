script_execute(scr_controls_battle_target_2);

if (x <= 44 && no_loop == false)
{
    hsp = 0;
    image_alpha = 0;
    alarm[0] = 1;
    no_loop = true;
}

if (key_select)
{
    hsp = 0;
    image_speed = 0.2;
    
    if (global.fight_number == 1)
        instance_create(global.enemy_target_x, global.enemy_target_y, obj_strike);
    else if (global.fight_number == 2)
        instance_create(global.enemy_target_x_2, global.enemy_target_y_2, obj_strike);
    else if (global.fight_number == 3)
        instance_create(global.enemy_target_x_3, global.enemy_target_y_3, obj_strike);
    
    button_pressed = true;
}

x -= hsp;
