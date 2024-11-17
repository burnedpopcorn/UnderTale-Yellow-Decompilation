image_speed = 0;
active = 0;
shrink = 0;
phy_speed_y_last = 0;
phy_speed_x_last = 0;

if (global.snowdin_flag[12] == 0)
{
    ball_speed = 1.8;
}
else
{
    ball_speed = 4;
    phy_speed_y += 3;
}