var battle_box;

if (live_call())
    return global.live_result;

vspeed = lerp(vspeed, -speed_target, 0.15);
battle_box = 3154;

if (y < obj_flowey_1_attack_9_head.y)
    instance_destroy();

if (image_index >= 7 || y < battle_box.bbox_top)
{
    image_alpha = lerp(image_alpha, 0.5, 0.35);
    depth = obj_flowey_1_attack_9_head.depth + 1;
}
else
{
    image_alpha = lerp(image_alpha, 1, 0.35);
    depth = obj_flowey_1_attack_9_head.depth - 1;
    
    if (place_meeting(x, y, obj_heart_battle_fighting_parent) && obj_heart_battle_fighting_parent.vulnerable == true)
        scr_battle_damage_player();
}
