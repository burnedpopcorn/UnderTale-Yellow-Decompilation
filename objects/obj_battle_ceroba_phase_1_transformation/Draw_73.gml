if (live_call())
    return global.live_result;

draw_set_alpha(draw_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, 640, 480, false);
draw_set_alpha(1);

if (scene >= 29 && instance_exists(obj_ceroba_transformation_mask))
{
    with (obj_ceroba_transformation_mask)
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

if (scene < 6 && instance_exists(obj_heart_battle_fighting_parent))
{
    shader_set(sh_flash);
    draw_sprite_ext(obj_heart_battle_fighting_parent.sprite_index, obj_heart_battle_fighting_parent.image_index, obj_heart_battle_fighting_parent.x + soul_x_offset, obj_heart_battle_fighting_parent.y + soul_y_offset, 1, 1, 0, c_white, soul_flash_overlay);
    shader_reset();
    draw_sprite_ext(obj_heart_battle_fighting_parent.sprite_index, obj_heart_battle_fighting_parent.image_index, obj_heart_battle_fighting_parent.x + soul_x_offset, obj_heart_battle_fighting_parent.y + soul_y_offset, 1, 1, 0, c_white, 1);
}
