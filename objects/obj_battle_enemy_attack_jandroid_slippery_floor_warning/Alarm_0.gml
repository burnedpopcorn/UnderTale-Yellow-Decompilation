var soul, ghost;

soul = 2979;

if (instance_exists(soul))
{
    ghost = instance_create_depth(soul.x, soul.y, soul.depth + 1, obj_slippery_ghost);
    ghost.sprite_index = soul.sprite_index;
    ghost.image_speed = 0;
}

alarm[0] = 3;
