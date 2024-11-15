if (live_call())
    return global.live_result;

with (obj_dialogue_box_battle)
{
    if (other.box_size > 0)
        draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_black, 1);
    
    draw_sprite_ext(sprite_index, 0, x - (other.box_size * sprite_width * 0.5), y - (other.box_size * sprite_height * 0.5), 1 + other.box_size, 1 + other.box_size, 0, c_yellow, other.box_alpha);
}
