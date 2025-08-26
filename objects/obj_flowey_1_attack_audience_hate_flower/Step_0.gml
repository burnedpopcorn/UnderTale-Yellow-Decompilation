if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;

if (image_alpha < 1)
    image_alpha += 0.2;

if (vspeed > 0)
{
}

image_angle -= (angle_difference(image_angle, direction + 90) * 0.05);

if (place_meeting(x, y, obj_heart_battle_fighting_parent) && obj_heart_battle_fighting_parent.vulnerable == true)
    scr_battle_damage_player();
