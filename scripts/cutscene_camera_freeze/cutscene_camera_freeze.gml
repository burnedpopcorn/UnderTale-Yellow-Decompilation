function cutscene_camera_freeze()
{
    if (instance_exists(obj_camera))
        instance_destroy(obj_camera);
    
    var xx = __view_get(e__VW.Object, 0).x;
    var yy = __view_get(e__VW.Object, 0).y;
    
    if (argument_count > 0)
    {
        xx = argument[0];
        yy = argument[1];
    }
    
    instance_create(xx, yy, obj_camera);
    __view_set(e__VW.Object, 0, obj_camera);
    obj_camera.move = false;
    cutscene_advance();
    return true;
}
