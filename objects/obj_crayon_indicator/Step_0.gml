if (live_call())
    return global.live_result;

sprite_index = asset_get_index("spr_size_crayon_" + string(obj_crayon_minigame.crayon_selected));
image_alpha = obj_crayon_minigame.draw_alpha;

switch (obj_crayon_minigame.brush_size_current)
{
    case obj_crayon_minigame.brush_size_large:
        image_angle = lerp(image_angle, 180, 0.25);
        break;
    
    default:
        image_angle = lerp(image_angle, 0, 0.25);
        break;
}
