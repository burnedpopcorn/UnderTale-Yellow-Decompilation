if (entry_number == global.factory_code)
{
    var door = instance_create_depth(100, 160, -100, obj_doorway);
    
    with (door)
    {
        image_xscale = 2.5;
        image_yscale = 1.25;
        nextroom = rm_steamworks_factory_03;
        xx = 740;
        yy = 760;
    }
    
    layer_set_visible("door_open", true);
    instance_destroy();
}
else
{
}
