var i, spawn_dir, spike;

if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("flowey2", "void", "void");
depth = -100;
speed = 6;
direction = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
destroy_self = false;
alarm[0] = 160;

for (i = 0; i < 4; i++)
{
    spawn_dir = i * 90;
    spike = instance_create_depth(x + lengthdir_x(120, spawn_dir), y + lengthdir_y(120, spawn_dir), -100, obj_flowey_battle_gray_fella_spikes);
    spike.spawner = id;
    spike.orbit_direction = spawn_dir;
}
