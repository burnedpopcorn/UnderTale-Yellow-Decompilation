if (live_call())
    return global.live_result;

draw_set_alpha(image_alpha);
var wsprite = sprite_get_width(sprite_index);
var hsprite = sprite_get_height(sprite_index);
draw_sprite_part_ext(sprite_index, 0, 0, 0, wsprite * 0.5, hsprite * 0.5, x + (wsprite * 0.5) + lengthdir_x(dist, 135), y + (hsprite * 0.5) + lengthdir_y(dist, 135), 2, 2, image_blend, image_alpha);
draw_sprite_part_ext(sprite_index, 0, wsprite * 0.5, 0, wsprite, hsprite * 0.5, x + (wsprite * 0.5) + lengthdir_x(dist, 45), y + (hsprite * 0.5) + lengthdir_y(dist, 45), 2, 2, image_blend, image_alpha);
draw_sprite_part_ext(sprite_index, 0, 0, hsprite * 0.5, wsprite * 0.5, hsprite, x + (wsprite * 0.5) + lengthdir_x(dist, 225), y + (hsprite * 0.5) + lengthdir_y(dist, 225), 2, 2, image_blend, image_alpha);
draw_sprite_part_ext(sprite_index, 0, wsprite * 0.5, hsprite * 0.5, wsprite, hsprite, x + (wsprite * 0.5) + lengthdir_x(dist, 315), y + (hsprite * 0.5) + lengthdir_y(dist, 315), 2, 2, image_blend, image_alpha);
draw_set_alpha(1);
