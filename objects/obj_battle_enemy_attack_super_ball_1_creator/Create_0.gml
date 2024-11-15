if (live_call())
    return global.live_result;

if (obj_heart_battle_fighting_parent.movement_mode == 2)
    instance_create_depth(320, 320, -9999, obj_battle_enemy_attack_axis_hand);

global.image_alpha_enemy_attacking_immunity = true;
noloop = false;
scene = 0;
axis_deg = 0;
axis_x_offset = 200;
box_resize = false;

if (global.enemy_mode == 0)
{
    axis_deg_inc = 2;
    launch_speed = 12;
}
else if (global.enemy_mode == 1)
{
    axis_deg_inc = 2.5;
    launch_speed = 13;
}
else if (global.enemy_mode == 2)
{
    axis_deg_inc = 3;
    launch_speed = 14;
}
else if (global.enemy_mode == 3)
{
    axis_deg_inc = 3.5;
    launch_speed = 15;
}
else if (global.enemy_mode < 6)
{
    box_resize = true;
    axis_deg_inc = 0;
    launch_speed = 16;
}
else if (global.enemy_mode == 6)
{
    axis_deg_inc = 4;
    launch_speed = 17;
}
else if (global.enemy_mode == 7)
{
    axis_deg_inc = 4.5;
    launch_speed = 18;
}
else if (global.enemy_mode == 8)
{
    axis_deg_inc = 8;
    launch_speed = 19;
}

if (obj_battlebox_controller_axis.axis_trash_meter < 100)
    instance_destroy();

if (instance_exists(obj_quote_battle_axis_attack_end))
    scene = -1;
