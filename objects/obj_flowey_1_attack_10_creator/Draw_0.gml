if (live_call())
    return global.live_result;

if (room == rm_battle_flowey)
    draw_sprite_ext(flowey_face_sprite, 0, flowey_face_x, flowey_face_y, 3 + random_range(-0.1, 0.1), 3 + random_range(-0.1, 0.1), 0, c_white, 0.5);

draw_set_color(c_black);
draw_set_alpha(transition_overlay_alpha);
draw_rectangle(0, 0, 640, 480, false);
draw_set_alpha(1);

if (instance_exists(obj_battle_hp_max_self))
{
    if (global.current_hp_self < 10 && global.current_hp_self > -10)
        draw_text_colour((314 + obj_battle_hp_max_self.sprite_width) - 25, 20, string_hash_to_newline("0" + string(global.current_hp_self) + " / " + string(global.max_hp_self)), c_white, c_white, c_white, c_white, global.image_alpha_enemy_attacking);
    else
        draw_text_colour((314 + obj_battle_hp_max_self.sprite_width) - 25, 20, string_hash_to_newline(string(global.current_hp_self) + " / " + string(global.max_hp_self)), c_white, c_white, c_white, c_white, global.image_alpha_enemy_attacking);
}
