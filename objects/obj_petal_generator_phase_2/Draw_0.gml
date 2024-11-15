draw_primitive_begin(pr_trianglestrip);
draw_vertex_color(0, (sin(current_time / 1000) * 100) + 100, grad_color, 0);
draw_vertex_color(room_width, (sin(current_time / 1000) * 100) + 100, grad_color, 0);
draw_vertex_color(0, room_height * 2.5, grad_color, image_alpha);
draw_vertex_color(room_width, room_height * 2.5, grad_color, image_alpha);
draw_primitive_end();

if (instance_exists(obj_ceroba_transform_slowdown))
{
    shader_set(sh_grayscale);
    draw_set_alpha(obj_ceroba_transform_slowdown.starlo_take_aim_overlay_alpha);
    draw_vertex_color(0, (sin(current_time / 1000) * 100) + 100, c_gray, 0);
    draw_vertex_color(room_width, (sin(current_time / 1000) * 100) + 100, c_gray, 0);
    draw_vertex_color(0, room_height * 2.5, c_gray, 1);
    draw_vertex_color(room_width, room_height * 2.5, c_gray, 1);
    draw_set_alpha(1);
    shader_reset();
}
