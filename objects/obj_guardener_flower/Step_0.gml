if (image_index >= (image_number - 1))
{
    if (sprite_index == spr_guardener_plant_grows)
    {
        image_index = image_number - 1;
        image_speed = 0;
    }
    else
    {
        instance_destroy();
    }
}

if (!instance_exists(obj_quote_battle_guardener) && !instance_exists(obj_battle_enemy_attack_guardener_attack_3) && sprite_index != spr_guardener_plant_disappear)
{
    sprite_index = spr_guardener_plant_disappear;
    image_index = 0;
    image_speed = 1;
}
