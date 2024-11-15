function cutscene_move_all(argument0, argument1, argument2, argument3, argument4, argument5, argument6)
{
    var i;
    
    if (argument0 == false && !instance_exists(obj_camera))
    {
        instance_create(__view_get(e__VW.Object, 0).x, __view_get(e__VW.Object, obj_quote_battle_ceroba_outro_4).y, obj_camera);
        __view_set(e__VW.Object, 0, obj_camera);
    }
    
    with (all)
    {
        if (argument5)
            x += argument1;
        
        if (argument6)
            y += argument1;
        
        if (argument0 == false && object_index == obj_camera)
        {
            x = xprevious;
            y = yprevious;
        }
    }
    
    for (i = argument3; i <= argument4; i++)
    {
        if (argument5)
            tile_layer_shift(i, argument1, 0);
        
        if (argument6)
            tile_layer_shift(i, 0, argument1);
    }
    
    cutscene_timer += abs(argument1);
    
    if (cutscene_timer >= argument2)
    {
        cutscene_timer = 0;
        cutscene_advance();
        return true;
    }
}
