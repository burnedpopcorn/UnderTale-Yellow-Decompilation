if (live_call())
    return global.live_result;

pellet_count = 8;
pellet_dist_default = 56;
pellet_dist = pellet_dist_default;
pellet_speed = 3 * choose(1, -1);

for (var i = 0; i < pellet_count; i++)
{
    pellet[i] = instance_create_depth(x, y, -300, obj_battle_enemy_attack_fpellets_simple);
    pellet[i].image_speed = 0;
    pellet[i].image_index = 1;
    pellet[i].image_alpha = 0;
    pellet[i].direction = i * (360 / pellet_count);
    pellet[i].image_angle = pellet[i].direction;
}

var box = obj_dialogue_box_battle_transformation_any;
image_alpha = 0;
direction = point_direction(x, y, box.x, box.y);
speed = 3.5;
fade_out = false;
alarm[0] = 50;
alarm[1] = 15;
