var icecube;

icecube = obj_snowdin_19_icecube;

if (shrink == true)
{
    image_xscale -= lerp(0, image_xscale, 0.03);
    image_yscale -= lerp(0, image_yscale, 0.03);
    
    if (icecube.shrink == true)
        phy_position_y = icecube.y - (sprite_get_height(icecube.sprite_index) * icecube.image_yscale) - (4 * image_yscale);
    
    if (image_xscale < 0.3)
        instance_destroy(id, false);
    
    exit;
}

if (icecube.active == true)
    exit;

if (phy_speed_y_last > 1)
{
    if (floor(phy_speed_y) == 0)
    {
        if (active == 0)
            active = 1;
    }
}

if (abs(phy_speed_x) <= 0.3 && active == 1)
{
    if (!alarm[0])
        alarm[0] = 25;
}

if (phy_position_y > 180 || phy_position_x < 160 || phy_position_x > 400)
    instance_destroy();

if (active)
{
    if (abs(phy_speed_x) > ball_speed)
        phy_speed_x = sign(phy_speed_x) * ball_speed;
}

phy_rotation += (sqrt(sqr(phy_speed_x)) * sign(phy_speed_x) * 10);
phy_speed_y_last = phy_speed_y;
phy_speed_x_last = phy_speed_y;
