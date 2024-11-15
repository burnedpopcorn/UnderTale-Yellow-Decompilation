event_inherited();

if (live_call())
    return global.live_result;

hp_self = 1;
move_speed = 4;
vspeed = move_speed;
image_xscale = 0.5;
image_yscale = 0.5;
bullet_number = 6;
hurtbox = instance_create_depth(x, y, depth, obj_flowey_battle_phase_2_lowpoly_hurtbox);
hurtbox.spawner = id;
