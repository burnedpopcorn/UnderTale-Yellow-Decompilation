function draw_sprite_clip_ext(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11)
{
    var s, sw, sh, sx, sy, si, _x, _y, mx, my, sc, sa, cx1, cy1, cx2, cy2, bx1, by1, bx2, by2, lx1, ly1, lx2, ly2;
    
    s = argument0;
    sw = sprite_get_width(s);
    sh = sprite_get_height(s);
    sx = sprite_get_xoffset(s);
    sy = sprite_get_yoffset(s);
    si = argument1;
    _x = argument2;
    _y = argument3;
    mx = argument4;
    my = argument5;
    sc = argument6;
    sa = argument7;
    cx1 = argument8;
    cy1 = argument9;
    cx2 = cx1 + argument10;
    cy2 = cy1 + argument11;
    bx1 = _x - (sprite_get_xoffset(s) * mx);
    by1 = _y - (sprite_get_yoffset(s) * my);
    bx2 = bx1 + (sprite_get_width(s) * mx);
    by2 = by1 + (sprite_get_height(s) * my);
    
    switch (rectangle_in_rectangle(bx1, by1, bx2, by2, cx1, cy1, cx2, cy2))
    {
        case 1:
            draw_sprite_ext(s, si, _x, _y, mx, my, 0, sc, sa);
            return true;
        
        case 2:
            if (mx == 0 || my == 0)
                return true;
            
            lx1 = max(0, cx1 - bx1) / mx;
            ly1 = max(0, cy1 - by1) / my;
            lx2 = sw + (min(0, cx2 - bx2) / mx);
            ly2 = sh + (min(0, cy2 - by2) / my);
            draw_sprite_part_ext(s, si, lx1, ly1, lx2 - lx1, ly2 - ly1, _x + ((lx1 - sx) * mx), _y + ((ly1 - sy) * my), mx, my, sc, sa);
            return true;
    }
    
    return false;
}
