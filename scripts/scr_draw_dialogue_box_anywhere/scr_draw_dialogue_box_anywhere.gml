function scr_draw_dialogue_box_anywhere(argument0, argument1, argument2, argument3)
{
    var xs1, ys1, xs2, ys2, xx, yy;
    
    xs1 = argument0;
    ys1 = argument1;
    bsize = argument2;
    xs2 = xs1 + bsize;
    ys2 = ys1 + bsize;
    xx = argument3;
    
    if (position == 0)
        yy = 198;
    else
        yy = 45;
    
    draw_sprite_ext(spr_dialoguebox, 1, xx, yy, xs2, ys2, image_angle, c_white, image_alpha);
    draw_sprite_ext(spr_dialoguebox, 0, xx, yy, xs1, ys1, image_angle, image_blend, image_alpha);
}
