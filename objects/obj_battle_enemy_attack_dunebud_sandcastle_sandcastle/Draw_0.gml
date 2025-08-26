if (instance_exists(obj_battle_enemy_attack_dunebud_sandcastle_bucket))
{
    if (place_meeting(x, y, obj_battle_enemy_attack_dunebud_sandcastle_bucket))
    {
        var target = obj_battle_enemy_attack_dunebud_sandcastle_bucket;
        draw_sprite_clip(sprite_index, image_index, x, y, bbox_left - 10, target.bbox_bottom + 1, (bbox_right - bbox_left) + 20, bbox_bottom - target.bbox_bottom);
    }
    else
    {
        draw_sprite(sprite_index, image_index, x, y);
    }
}
else
{
    draw_sprite(sprite_index, image_index, x, y);
}
