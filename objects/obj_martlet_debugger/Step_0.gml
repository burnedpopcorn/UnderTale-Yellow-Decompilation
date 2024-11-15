if (live_call())
    return global.live_result;

if (keyboard_check_pressed(vk_pageup))
    global.attack_cycle += 1;
else if (keyboard_check_pressed(vk_pagedown))
    global.attack_cycle -= 1;

global.turns_passed = 0;

if (instance_exists(obj_ceroba_body_pacifist_phase_2))
{
    if (keyboard_check_pressed(vk_numpad0))
    {
        obj_ceroba_body_pacifist_phase_2.sprite_index = spr_ceroba_p2_idle_reveal;
        obj_ceroba_body_pacifist_phase_2.image_index = 0;
    }
    
    if (keyboard_check_pressed(vk_numpad1))
    {
        obj_ceroba_body_pacifist_phase_2.sprite_index = spr_ceroba_p2_sign;
        obj_ceroba_body_pacifist_phase_2.image_index = 0;
    }
    
    if (keyboard_check_pressed(vk_numpad2))
    {
        obj_ceroba_body_pacifist_phase_2.sprite_index = spr_ceroba_p2_1;
        obj_ceroba_body_pacifist_phase_2.image_index = 0;
    }
}
