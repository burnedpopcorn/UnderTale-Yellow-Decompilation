function scr_draw_dialogue_box_anywhere(arg0, arg1, arg2, arg3)
{
    var xs1 = arg0;
    var ys1 = arg1;
    bsize = arg2;
    var xs2 = xs1 + bsize;
    var ys2 = ys1 + bsize;
    var xx = arg3;
    var yy;
    
    if (position == 0)
        yy = 198;
    else
        yy = 45;
    
    draw_sprite_ext(spr_dialoguebox, 1, xx, yy, xs2, ys2, image_angle, c_white, image_alpha);
    draw_sprite_ext(spr_dialoguebox, 0, xx, yy, xs1, ys1, image_angle, image_blend, image_alpha);
}
