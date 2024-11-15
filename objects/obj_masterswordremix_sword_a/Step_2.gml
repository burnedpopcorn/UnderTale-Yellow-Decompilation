if (transformed == true)
{
    instance_destroy();
    exit;
}

x_offset = 70 * cos(degtorad(obj_masterswordremix_body_a.image_angle + 180));
y_offset = 70 * sin(degtorad(obj_masterswordremix_body_a.image_angle + 180));
x = obj_masterswordremix_body_a.x + x_offset;
y = obj_masterswordremix_body_a.y - y_offset;
image_angle = obj_masterswordremix_body_a.image_angle - (((starting_point_reference - obj_masterswordremix_body_a.advance_y_hand) / (2 * obj_masterswordremix_body_a.max_rise)) * max_rise);
