var i, new_spray;

if (live_call())
    return global.live_result;

image_index = 0;
image_speed = 1;

for (i = 0; i < spray_amount; i++)
{
    new_spray = instance_create_depth(x - 8, y - 9, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_spray_bottle_spray);
    new_spray.direction = 135 + (i * (90 / spray_amount));
}

alarm[1] = spray_interval;
