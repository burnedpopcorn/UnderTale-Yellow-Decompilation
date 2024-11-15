function scr_draw_diamond(argument0, argument1, argument2, argument3, argument4)
{
    draw_primitive_begin(pr_linestrip);
    draw_vertex_color(argument0[0][0] + argument1, argument0[0][1] + argument2, argument3, argument4);
    draw_vertex_color(argument0[1][0] + argument1, argument0[1][1] + argument2, argument3, argument4);
    draw_vertex_color(argument0[2][0] + argument1, argument0[2][1] + argument2, argument3, argument4);
    draw_vertex_color(argument0[3][0] + argument1, argument0[3][1] + argument2, argument3, argument4);
    draw_vertex_color(argument0[4][0] + argument1, argument0[4][1] + argument2, argument3, argument4);
    draw_primitive_end();
    draw_primitive_begin(pr_linestrip);
    draw_vertex_color(argument0[0][0] + argument1, clamp(argument0[0][1] + 20, -999, 0) + argument2, argument3, argument4);
    draw_vertex_color(clamp(argument0[1][0] - 10, 0, 999) + argument1, argument0[1][1] + argument2, argument3, argument4);
    draw_vertex_color(argument0[2][0] + argument1, clamp(argument0[2][1] - 20, 0, 999) + argument2, argument3, argument4);
    draw_vertex_color(clamp(argument0[3][0] + 10, -999, 0) + argument1, argument0[3][1] + argument2, argument3, argument4);
    draw_vertex_color(argument0[4][0] + argument1, clamp(argument0[4][1] + 20, -999, 0) + argument2, argument3, argument4);
    draw_primitive_end();
}
