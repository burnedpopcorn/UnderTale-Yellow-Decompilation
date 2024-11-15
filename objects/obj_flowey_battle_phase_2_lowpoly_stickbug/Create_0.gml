event_inherited();

if (live_call())
    return global.live_result;

hp_self = 8;
move_speed = 2;
vspeed = move_speed;
image_alpha = 0;
hurtbox = instance_create_depth(x, y, depth, obj_flowey_battle_phase_2_lowpoly_hurtbox);
hurtbox.spawner = id;
attack_noloop = false;
charge_state = 0;
