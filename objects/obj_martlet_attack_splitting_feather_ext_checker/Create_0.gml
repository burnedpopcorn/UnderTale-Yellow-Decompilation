if (live_call())
    return global.live_result;

var heart = obj_heart_battle_fighting_parent;
instance_create(x, y, obj_battle_enemy_attack_martlet_genocide_feather_ext_explosion);
alarm[0] = 3;
feather_radius = 15;
feather_speed = 14;
feather_alpha = 1;
can_move = false;
can_fade_out = false;
fcreate_count = 5;
fcreate_spread = 60;
fcreate_decrease = fcreate_spread / fcreate_count;
fcreate_angle = (point_direction(x, y, heart.x, heart.y) + (fcreate_spread * 0.5)) - (fcreate_decrease * 0.5);
feather_targetted = true;
