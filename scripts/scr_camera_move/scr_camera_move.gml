function scr_camera_move(argument0, argument1, argument2)
{
    if (!instance_exists(obj_camera))
    {
        instance_create(__view_get(e__VW.Object, 0).x, __view_get(e__VW.Object, obj_quote_battle_ceroba_outro_4).y, obj_camera);
        __view_set(e__VW.Object, 0, obj_camera);
    }
    else
    {
        obj_camera.x = __view_get(e__VW.Object, 0).x;
        obj_camera.y = __view_get(e__VW.Object, 0).y;
        __view_set(e__VW.Object, 0, obj_camera);
    }
    
    obj_camera.move = true;
    obj_camera.xx = argument0;
    obj_camera.yy = argument1;
    obj_camera.spd = argument2;
    
    if (abs(argument0 - obj_camera.x) <= argument2 && abs(argument1 - obj_camera.y) <= argument2)
        return true;
    else
        return false;
}
