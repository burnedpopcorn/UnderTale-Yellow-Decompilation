function cutscene_camera_move()
{
    if (!instance_exists(obj_camera))
        instance_create(__view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) * 0.5), __view_get(e__VW.YView, 0) + (__view_get(e__VW.HView, obj_quote_battle_ceroba_outro_4) * 0.5), obj_camera);
    
    __view_set(e__VW.Object, 0, obj_camera);
    obj_camera.move = true;
    obj_camera.xx = argument[0];
    obj_camera.yy = argument[1];
    obj_camera.spd = argument[2];
    
    if (obj_camera.x == argument[0] && obj_camera.y == argument[1])
    {
        if (argument_count > 3 && argument[3] == true)
        {
            return true;
            exit;
        }
        
        obj_camera.move = false;
        obj_camera.on_target = false;
        obj_camera.xx = 0;
        obj_camera.yy = 0;
        cutscene_advance();
        return true;
    }
    else
    {
        return false;
    }
}
