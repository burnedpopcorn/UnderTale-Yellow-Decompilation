var new_hspeed, i, bit;

if (image_alpha < 1)
{
    image_alpha += 0.15;
    
    if (image_alpha >= 1)
    {
        image_alpha = 1;
        can_drop = true;
    }
}

if (can_drop == true)
    vspeed = lerp(vspeed, fall_speed, 0.25);

if (bbox_bottom >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 3))
{
    instance_destroy();
    new_hspeed = -3;
    
    for (i = 0; i < 3; i++)
    {
        bit = instance_create(x, y, obj_battle_enemy_attack_flowergirls_growing_flowers_droplet_bit);
        bit.hspeed = new_hspeed;
        new_hspeed += 3;
    }
    
    instance_create(x, obj_dialogue_box_battle_transformation_any.bbox_bottom - 3, obj_battle_enemy_attack_flowergirls_growing_flowers);
}
