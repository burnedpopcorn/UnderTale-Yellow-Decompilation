if (place_meeting(x, y, obj_heart_battle_fighting_parent))
{
    if (image_index == 7)
        instance_create(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_ceroba_white_soul);
}

if (fade_out == true)
{
    image_alpha -= 0.15;
    
    if (image_alpha < 0)
        instance_destroy();
}
