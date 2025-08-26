function sw_laser(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
{
    var _x1 = arg0;
    var _y1 = arg1;
    var _x2 = arg2;
    var _y2 = arg3;
    var _w1 = arg4;
    var _w2 = arg5;
    var _c1 = arg6;
    var _c3 = arg7;
    var _c2 = merge_color(_c1, _c3, 0.1);
    var _a1 = arg8;
    var _a2 = arg9;
    var _a3 = arg10;
    _dir = point_direction(_x1, _y1, _x2, _y2);
    var _s = max(1, ceil((_w1 + (_w2 * 2)) / 16));
    var _amt = 90 / _s;
    draw_primitive_begin(pr_trianglestrip);
    
    for (var i = 0; i <= _s; i++)
    {
        draw_vertex_color(_x1 + lengthdir_x(_w1 / 2, _dir + 180 + (i * _amt)), _y1 + lengthdir_y(_w1 / 2, _dir + 180 + (i * _amt)), _c2, _a2);
        draw_vertex_color(_x1, _y1, _c1, _a1);
    }
    
    for (var i = 0; i <= _s; i++)
    {
        draw_vertex_color(_x2 + lengthdir_x(_w1 / 2, (_dir - 90) + (i * _amt)), _y2 + lengthdir_y(_w1 / 2, (_dir - 90) + (i * _amt)), _c2, _a2);
        draw_vertex_color(_x2, _y2, _c1, _a1);
    }
    
    for (var i = 0; i <= _s; i++)
    {
        draw_vertex_color(_x2 + lengthdir_x(_w1 / 2, _dir + (i * _amt)), _y2 + lengthdir_y(_w1 / 2, _dir + (i * _amt)), _c2, _a2);
        draw_vertex_color(_x2, _y2, _c1, _a1);
    }
    
    for (var i = 0; i <= _s; i++)
    {
        draw_vertex_color(_x1 + lengthdir_x(_w1 / 2, ((_dir + 180) - 90) + (i * _amt)), _y1 + lengthdir_y(_w1 / 2, ((_dir + 180) - 90) + (i * _amt)), _c2, _a2);
        draw_vertex_color(_x1, _y1, _c1, _a1);
    }
    
    draw_primitive_end();
    draw_primitive_begin(pr_trianglestrip);
    
    for (var i = 0; i <= _s; i++)
    {
        draw_vertex_color(_x1 + lengthdir_x((_w1 / 2) + _w2, _dir + 180 + (i * _amt)), _y1 + lengthdir_y((_w1 / 2) + _w2, _dir + 180 + (i * _amt)), _c3, _a3);
        draw_vertex_color(_x1 + lengthdir_x(_w1 / 2, _dir + 180 + (i * _amt)), _y1 + lengthdir_y(_w1 / 2, _dir + 180 + (i * _amt)), _c2, _a2);
    }
    
    for (var i = 0; i <= _s; i++)
    {
        draw_vertex_color(_x2 + lengthdir_x((_w1 / 2) + _w2, (_dir - 90) + (i * _amt)), _y2 + lengthdir_y((_w1 / 2) + _w2, (_dir - 90) + (i * _amt)), _c3, _a3);
        draw_vertex_color(_x2 + lengthdir_x(_w1 / 2, (_dir - 90) + (i * _amt)), _y2 + lengthdir_y(_w1 / 2, (_dir - 90) + (i * _amt)), _c2, _a2);
    }
    
    for (var i = 0; i <= _s; i++)
    {
        draw_vertex_color(_x2 + lengthdir_x((_w1 / 2) + _w2, _dir + (i * _amt)), _y2 + lengthdir_y((_w1 / 2) + _w2, _dir + (i * _amt)), _c3, _a3);
        draw_vertex_color(_x2 + lengthdir_x(_w1 / 2, _dir + (i * _amt)), _y2 + lengthdir_y(_w1 / 2, _dir + (i * _amt)), _c2, _a2);
    }
    
    for (var i = 0; i <= _s; i++)
    {
        draw_vertex_color(_x1 + lengthdir_x((_w1 / 2) + _w2, ((_dir + 180) - 90) + (i * _amt)), _y1 + lengthdir_y((_w1 / 2) + _w2, ((_dir + 180) - 90) + (i * _amt)), _c3, _a3);
        draw_vertex_color(_x1 + lengthdir_x(_w1 / 2, ((_dir + 180) - 90) + (i * _amt)), _y1 + lengthdir_y(_w1 / 2, ((_dir + 180) - 90) + (i * _amt)), _c2, _a2);
    }
    
    draw_primitive_end();
}
