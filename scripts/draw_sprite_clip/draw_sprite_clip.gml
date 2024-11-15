function draw_sprite_clip(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7)
{
    var s, sw, sh, sx, sy, si, _x, _y, cx1, cy1, cx2, cy2, bx1, by1, bx2, by2, lx1, ly1, lx2, ly2;
    
    s = argument0;
    sw = sprite_get_width(s);
    sh = sprite_get_height(s);
    sx = sprite_get_xoffset(s);
    sy = sprite_get_yoffset(s);
    si = argument1;
    _x = argument2;
    _y = argument3;
    cx1 = argument4;
    cy1 = argument5;
    cx2 = cx1 + argument6;
    cy2 = cy1 + argument7;
    bx1 = _x - sprite_get_xoffset(s);
    by1 = _y - sprite_get_yoffset(s);
    bx2 = bx1 + sprite_get_width(s);
    by2 = by1 + sprite_get_height(s);
    
    switch (rectangle_in_rectangle(bx1, by1, bx2, by2, cx1, cy1, cx2, cy2))
    {
        case 1:
            draw_sprite(s, si, _x, _y);
            return true;
        
        case 2:
            lx1 = max(0, cx1 - bx1);
            ly1 = max(0, cy1 - by1);
            lx2 = sw + min(0, cx2 - bx2);
            ly2 = sh + min(0, cy2 - by2);
            draw_sprite_part(s, si, lx1, ly1, lx2 - lx1, ly2 - ly1, (_x + lx1) - sx, (_y + ly1) - sy);
            return true;
    }
}
