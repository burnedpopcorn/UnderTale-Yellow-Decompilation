function draw_sprite_clip_ext(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
{
    var s = arg0;
    var sw = sprite_get_width(s);
    var sh = sprite_get_height(s);
    var sx = sprite_get_xoffset(s);
    var sy = sprite_get_yoffset(s);
    var si = arg1;
    var _x = arg2;
    var _y = arg3;
    var mx = arg4;
    var my = arg5;
    var sc = arg6;
    var sa = arg7;
    var cx1 = arg8;
    var cy1 = arg9;
    var cx2 = cx1 + arg10;
    var cy2 = cy1 + arg11;
    var bx1 = _x - (sprite_get_xoffset(s) * mx);
    var by1 = _y - (sprite_get_yoffset(s) * my);
    var bx2 = bx1 + (sprite_get_width(s) * mx);
    var by2 = by1 + (sprite_get_height(s) * my);
    
    switch (rectangle_in_rectangle(bx1, by1, bx2, by2, cx1, cy1, cx2, cy2))
    {
        case 1:
            draw_sprite_ext(s, si, _x, _y, mx, my, 0, sc, sa);
            return true;
        
        case 2:
            if (mx == 0 || my == 0)
                return true;
            
            var lx1 = max(0, cx1 - bx1) / mx;
            var ly1 = max(0, cy1 - by1) / my;
            var lx2 = sw + (min(0, cx2 - bx2) / mx);
            var ly2 = sh + (min(0, cy2 - by2) / my);
            draw_sprite_part_ext(s, si, lx1, ly1, lx2 - lx1, ly2 - ly1, _x + ((lx1 - sx) * mx), _y + ((ly1 - sy) * my), mx, my, sc, sa);
            return true;
    }
    
    return false;
}
