if (transformed == true)
{
    instance_destroy();
    exit;
}

x_offset = 80 * cos(degtorad(obj_masterswordremix_body_a.image_angle));
y_offset = 80 * sin(degtorad(obj_masterswordremix_body_a.image_angle));
x = obj_masterswordremix_body_a.x + x_offset;
y = obj_masterswordremix_body_a.y - y_offset;
image_angle = obj_masterswordremix_body_a.image_angle + (((starting_point_reference - obj_masterswordremix_body_a.advance_y_hand) / (2 * obj_masterswordremix_body_a.max_rise)) * max_rise);
