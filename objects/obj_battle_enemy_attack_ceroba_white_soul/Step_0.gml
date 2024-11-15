if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

x = xstart;
y = ystart;
x += irandom_range(-2, 2);
y += irandom_range(-2, 2);
obj_heart_battle_fighting_parent.x = x;
obj_heart_battle_fighting_parent.y = y;
image_index = obj_heart_battle_fighting_parent.image_index;
