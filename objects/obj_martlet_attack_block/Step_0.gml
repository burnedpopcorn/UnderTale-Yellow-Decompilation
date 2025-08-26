if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
scr_enemy_attack_bullet_hit();

if (bullet_destroy_self)
{
    instance_create_depth(x, y, depth, obj_martlet_attack_block_piece);
    instance_destroy();
}

if (y > (battle_box.bbox_bottom + 10))
{
    image_alpha -= 0.2;
    
    if (image_alpha <= 0)
        instance_destroy();
}
else if (image_alpha < 1)
{
    image_alpha += 0.25;
}
