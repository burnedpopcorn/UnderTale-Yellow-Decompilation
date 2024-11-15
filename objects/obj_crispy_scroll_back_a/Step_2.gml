if (transformed == true)
{
    instance_destroy();
    exit;
}

x = obj_crispy_scroll_head_a.x;
y = obj_crispy_scroll_head_a.y;
image_angle = obj_crispy_scroll_head_a.image_angle;
image_yscale = 1 + (((starting_point_reference - obj_crispy_scroll_head_a.advance_y_back) / (2 * obj_crispy_scroll_head_a.max_rise)) * max_rise);
