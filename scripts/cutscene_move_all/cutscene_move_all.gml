function cutscene_move_all(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
{
    if (arg0 == false && !instance_exists(obj_camera))
    {
        instance_create(__view_get(e__VW.Object, 0).x, __view_get(e__VW.Object, 0).y, obj_camera);
        __view_set(e__VW.Object, 0, obj_camera);
    }
    
    with (all)
    {
        if (arg5)
            x += arg1;
        
        if (arg6)
            y += arg1;
        
        if (arg0 == false && object_index == obj_camera)
        {
            x = xprevious;
            y = yprevious;
        }
    }
    
    for (var i = arg3; i <= arg4; i++)
    {
        if (arg5)
            tile_layer_shift(i, arg1, 0);
        
        if (arg6)
            tile_layer_shift(i, 0, arg1);
    }
    
    cutscene_timer += abs(arg1);
    
    if (cutscene_timer >= arg2)
    {
        cutscene_timer = 0;
        cutscene_advance();
        return true;
    }
}
