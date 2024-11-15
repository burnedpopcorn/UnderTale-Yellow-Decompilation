if (instance_exists(obj_ceroba_body_pacifist_phase_1))
{
    switch (obj_ceroba_body_pacifist_phase_1.sprite_index)
    {
        case spr_ceroba_transformation_p1_7:
            attach_points = [[-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [-1000, -1000], [145, 10], [145, 10], [145, 10], [145, 10], [145, 8], [145, 8], [145, 6]];
            scr_point_attach(attach_points, 773);
            break;
        
        default:
            instance_destroy();
            break;
    }
}
else
{
    instance_destroy();
}
