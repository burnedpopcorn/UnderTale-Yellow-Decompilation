function draw_sprite_clip(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
{
    var s = arg0;
    var sw = sprite_get_width(s);
    var sh = sprite_get_height(s);
    var sx = sprite_get_xoffset(s);
    var sy = sprite_get_yoffset(s);
    var si = arg1;
    var _x = arg2;
    var _y = arg3;
    var cx1 = arg4;
    var cy1 = arg5;
    var cx2 = cx1 + arg6;
    var cy2 = cy1 + arg7;
    var bx1 = _x - sprite_get_xoffset(s);
    var by1 = _y - sprite_get_yoffset(s);
    var bx2 = bx1 + sprite_get_width(s);
    var by2 = by1 + sprite_get_height(s);
    
    switch (rectangle_in_rectangle(bx1, by1, bx2, by2, cx1, cy1, cx2, cy2))
    {
        case 1:
            draw_sprite(s, si, _x, _y);
            return true;
        
        case 2:
            var lx1 = max(0, cx1 - bx1);
            var ly1 = max(0, cy1 - by1);
            var lx2 = sw + min(0, cx2 - bx2);
            var ly2 = sh + min(0, cy2 - by2);
            draw_sprite_part(s, si, lx1, ly1, lx2 - lx1, ly2 - ly1, (_x + lx1) - sx, (_y + ly1) - sy);
            return true;
    }
}
