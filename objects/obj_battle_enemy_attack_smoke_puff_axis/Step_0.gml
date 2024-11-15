if (image_alpha < 1)
{
    image_alpha += 0.1;
    exit;
}

speed += speed_inc;

if (speed > speed_max)
    speed = speed_max;

if (place_meeting(x, y, obj_heart_battle_fighting_parent))
{
    noloop = true;
    
    with (obj_battle_enemy_attack_smoke_puff_axis)
    {
        if (y == other.y)
            noloop = true;
    }
}

if (y < (obj_heart_battle_fighting_parent.bbox_top - 15) && noloop == false)
{
    obj_battlebox_controller_axis.axis_trash_meter = clamp(obj_battlebox_controller_axis.axis_trash_meter + 8, 0, 100);
    noloop = true;
    
    with (obj_battle_enemy_attack_smoke_puff_axis)
    {
        if (y == other.y)
            noloop = true;
    }
}
