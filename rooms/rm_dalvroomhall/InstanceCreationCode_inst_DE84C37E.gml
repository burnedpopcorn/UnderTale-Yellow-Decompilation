nextroom = 38;
xx = 220;
yy = 170;

if (global.flag[17] == 3 || global.flag[17] == 4)
{
    instance_create(157, 100, obj_melancholy_blocker_dalvsroom);
    
    with (obj_melancholy_blocker_dalvsroom)
    {
        image_xscale = 1.69;
        image_yscale = 1.25;
    }
    
    instance_destroy();
}
else if (global.flag[17] != 2)
{
    instance_create(157, 100, obj_doorway_blocker_dalvsroom);
    
    with (obj_doorway_blocker_dalvsroom)
    {
        image_xscale = 1.69;
        image_yscale = 1.25;
    }
    
    instance_destroy();
}
