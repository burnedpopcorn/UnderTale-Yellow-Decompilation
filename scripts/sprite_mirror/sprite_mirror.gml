function sprite_mirror(arg0, arg1)
{
    if (arg0)
    {
        var _bb = bbox_left;
        image_xscale *= -1;
        x -= (bbox_left - _bb);
    }
    
    if (arg1)
    {
        var _bb = bbox_top;
        image_yscale *= -1;
        y -= (bbox_top - _bb);
    }
}
