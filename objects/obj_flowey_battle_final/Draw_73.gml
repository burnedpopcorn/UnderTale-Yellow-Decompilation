if (live_call())
    return global.live_result;

draw_set_alpha(white_alpha);
draw_set_color(c_white);
draw_rectangle(0, 0, 640, 480, false);
draw_set_alpha(1);
draw_set_alpha(hp_bar_alpha);
var hp = (global.current_hp_self / global.max_hp_self) * 100;
draw_healthbar(270, 448, 370, 472, hp, c_red, c_yellow, c_yellow, 0, true, false);
draw_set_alpha(1);
shader_set(sh_yellow);
draw_sprite_ext(spr_pl_up, 0, obj_heart_battle_fighting_yellow_final.x + clover_offset_x, obj_heart_battle_fighting_yellow_final.y + clover_offset_y, 2, 2, 0, c_white, clover_alpha);
shader_reset();
shader_set(sh_flash);

with (obj_heart_battle_fighting_yellow_final)
    draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, other.soul_overlay_alpha);

shader_reset();
