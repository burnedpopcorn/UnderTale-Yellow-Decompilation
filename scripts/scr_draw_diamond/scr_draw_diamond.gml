function scr_draw_diamond(arg0, arg1, arg2, arg3, arg4)
{
    draw_primitive_begin(pr_linestrip);
    draw_vertex_color(arg0[0][0] + arg1, arg0[0][1] + arg2, arg3, arg4);
    draw_vertex_color(arg0[1][0] + arg1, arg0[1][1] + arg2, arg3, arg4);
    draw_vertex_color(arg0[2][0] + arg1, arg0[2][1] + arg2, arg3, arg4);
    draw_vertex_color(arg0[3][0] + arg1, arg0[3][1] + arg2, arg3, arg4);
    draw_vertex_color(arg0[4][0] + arg1, arg0[4][1] + arg2, arg3, arg4);
    draw_primitive_end();
    draw_primitive_begin(pr_linestrip);
    draw_vertex_color(arg0[0][0] + arg1, clamp(arg0[0][1] + 20, -999, 0) + arg2, arg3, arg4);
    draw_vertex_color(clamp(arg0[1][0] - 10, 0, 999) + arg1, arg0[1][1] + arg2, arg3, arg4);
    draw_vertex_color(arg0[2][0] + arg1, clamp(arg0[2][1] - 20, 0, 999) + arg2, arg3, arg4);
    draw_vertex_color(clamp(arg0[3][0] + 10, -999, 0) + arg1, arg0[3][1] + arg2, arg3, arg4);
    draw_vertex_color(arg0[4][0] + arg1, clamp(arg0[4][1] + 20, -999, 0) + arg2, arg3, arg4);
    draw_primitive_end();
}
