var doorway;

image_speed = 0;

if (global.sworks_flag[21] == 1)
{
    image_index = image_number - 1;
    doorway = instance_create_depth(120, 300, 300, obj_doorway);
    
    with (doorway)
    {
        nextroom = 192;
        xx = 720;
        yy = 470;
        image_xscale = 3;
        image_yscale = 1.687;
    }
}
