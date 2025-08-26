if (launched == false)
{
    var x_offset = disjoint_x * cos(degtorad(id_arm.image_angle));
    var y_offset = disjoint_x * sin(degtorad(id_arm.image_angle));
    x = id_arm.x + x_offset;
    y = id_arm.y - y_offset;
    x_offset = disjoint_y * cos(degtorad(id_arm.image_angle + 90));
    y_offset = disjoint_y * sin(degtorad(id_arm.image_angle + 90));
    x += x_offset;
    y -= y_offset;
}
