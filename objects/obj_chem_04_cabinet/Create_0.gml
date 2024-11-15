scene = 0;
cutscene_timer = 0;

if (global.sworks_flag[30] == 1)
{
    x -= 40;
    scene = 5;
    layer_x("moving_cabinet", -40);
}
