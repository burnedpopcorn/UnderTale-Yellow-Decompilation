function sw_laser(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10)
{
    var _x1, _y1, _x2, _y2, _w1, _w2, _c1, _c3, _c2, _a1, _a2, _a3, _s, _amt, i;
    
    _x1 = argument0;
    _y1 = argument1;
    _x2 = argument2;
    _y2 = argument3;
    _w1 = argument4;
    _w2 = argument5;
    _c1 = argument6;
    _c3 = argument7;
    _c2 = merge_color(_c1, _c3, 0.1);
    _a1 = argument8;
    _a2 = argument9;
    _a3 = argument10;
    _dir = point_direction(_x1, _y1, _x2, _y2);
    _s = max(1, ceil((_w1 + (_w2 * 2)) / 16));
    _amt = 90 / _s;
    draw_primitive_begin(pr_trianglestrip);
    
    for (i = 0; i <= _s; i++)
    {
        draw_vertex_color(_x1 + lengthdir_x(_w1 / 2, _dir + 180 + (i * _amt)), _y1 + lengthdir_y(_w1 / 2, _dir + 180 + (i * _amt)), _c2, _a2);
        draw_vertex_color(_x1, _y1, _c1, _a1);
    }
    
    for (i = 0; i <= _s; i++)
    {
        draw_vertex_color(_x2 + lengthdir_x(_w1 / 2, (_dir - 90) + (i * _amt)), _y2 + lengthdir_y(_w1 / 2, (_dir - 90) + (i * _amt)), _c2, _a2);
        draw_vertex_color(_x2, _y2, _c1, _a1);
    }
    
    for (i = 0; i <= _s; i++)
    {
        draw_vertex_color(_x2 + lengthdir_x(_w1 / 2, _dir + (i * _amt)), _y2 + lengthdir_y(_w1 / 2, _dir + (i * _amt)), _c2, _a2);
        draw_vertex_color(_x2, _y2, _c1, _a1);
    }
    
    for (i = 0; i <= _s; i++)
    {
        draw_vertex_color(_x1 + lengthdir_x(_w1 / 2, ((_dir + 180) - 90) + (i * _amt)), _y1 + lengthdir_y(_w1 / 2, ((_dir + 180) - 90) + (i * _amt)), _c2, _a2);
        draw_vertex_color(_x1, _y1, _c1, _a1);
    }
    
    draw_primitive_end();
    draw_primitive_begin(pr_trianglestrip);
    
    for (i = 0; i <= _s; i++)
    {
        draw_vertex_color(_x1 + lengthdir_x((_w1 / 2) + _w2, _dir + 180 + (i * _amt)), _y1 + lengthdir_y((_w1 / 2) + _w2, _dir + 180 + (i * _amt)), _c3, _a3);
        draw_vertex_color(_x1 + lengthdir_x(_w1 / 2, _dir + 180 + (i * _amt)), _y1 + lengthdir_y(_w1 / 2, _dir + 180 + (i * _amt)), _c2, _a2);
    }
    
    for (i = 0; i <= _s; i++)
    {
        draw_vertex_color(_x2 + lengthdir_x((_w1 / 2) + _w2, (_dir - 90) + (i * _amt)), _y2 + lengthdir_y((_w1 / 2) + _w2, (_dir - 90) + (i * _amt)), _c3, _a3);
        draw_vertex_color(_x2 + lengthdir_x(_w1 / 2, (_dir - 90) + (i * _amt)), _y2 + lengthdir_y(_w1 / 2, (_dir - 90) + (i * _amt)), _c2, _a2);
    }
    
    for (i = 0; i <= _s; i++)
    {
        draw_vertex_color(_x2 + lengthdir_x((_w1 / 2) + _w2, _dir + (i * _amt)), _y2 + lengthdir_y((_w1 / 2) + _w2, _dir + (i * _amt)), _c3, _a3);
        draw_vertex_color(_x2 + lengthdir_x(_w1 / 2, _dir + (i * _amt)), _y2 + lengthdir_y(_w1 / 2, _dir + (i * _amt)), _c2, _a2);
    }
    
    for (i = 0; i <= _s; i++)
    {
        draw_vertex_color(_x1 + lengthdir_x((_w1 / 2) + _w2, ((_dir + 180) - 90) + (i * _amt)), _y1 + lengthdir_y((_w1 / 2) + _w2, ((_dir + 180) - 90) + (i * _amt)), _c3, _a3);
        draw_vertex_color(_x1 + lengthdir_x(_w1 / 2, ((_dir + 180) - 90) + (i * _amt)), _y1 + lengthdir_y(_w1 / 2, ((_dir + 180) - 90) + (i * _amt)), _c2, _a2);
    }
    
    draw_primitive_end();
}
