function scr_camera_move(arg0, arg1, arg2)
{
    if (!instance_exists(obj_camera))
    {
        instance_create(__view_get(e__VW.Object, 0).x, __view_get(e__VW.Object, 0).y, obj_camera);
        __view_set(e__VW.Object, 0, obj_camera);
    }
    else
    {
        obj_camera.x = __view_get(e__VW.Object, 0).x;
        obj_camera.y = __view_get(e__VW.Object, 0).y;
        __view_set(e__VW.Object, 0, obj_camera);
    }
    
    obj_camera.move = true;
    obj_camera.xx = arg0;
    obj_camera.yy = arg1;
    obj_camera.spd = arg2;
    
    if (abs(arg0 - obj_camera.x) <= arg2 && abs(arg1 - obj_camera.y) <= arg2)
        return true;
    else
        return false;
}
