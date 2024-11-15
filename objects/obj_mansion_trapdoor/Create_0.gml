var doorway;

image_speed = 0;

if (global.dunes_flag[42] >= 1)
{
    doorway = instance_create(136, 150, obj_doorway_secret_study);
    
    with (doorway)
    {
        image_xscale = 2.8125;
        image_yscale = 2.3125;
        xx = 135;
        yy = 420;
        nextroom = 250;
    }
    
    image_index = image_number - 1;
}
