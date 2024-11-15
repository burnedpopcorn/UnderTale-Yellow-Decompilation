if (live_call())
    return global.live_result;

if (sprite_index == spr_container_rise)
{
    image_speed = 0;
    image_index = 0;
    y += 25;
    self_soul = instance_create_depth(x, y, depth - 1, obj_barrier_soul);
    self_soul.spawner = id;
    self_soul.soul_target_x = soul_target_x;
    self_soul.soul_target_y = soul_target_y;
    sprite_index = open_sprite;
    scene++;
}
