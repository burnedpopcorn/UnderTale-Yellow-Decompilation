function sprite_mirror(argument0, argument1)
{
    var _bb;
    
    if (argument0)
    {
        _bb = bbox_left;
        image_xscale *= -1;
        x -= (bbox_left - _bb);
    }
    
    if (argument1)
    {
        _bb = bbox_top;
        image_yscale *= -1;
        y -= (bbox_top - _bb);
    }
}
