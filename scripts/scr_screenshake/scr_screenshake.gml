function scr_screenshake(argument0, argument1)
{
    if (instance_exists(obj_screenshake_player))
        exit;
    
    //with (instance_create(__view_get(e__VW.Object, 0).x, __view_get(e__VW.Object, obj_quote_battle_ceroba_outro_4).y, obj_screenshake_player))
	with (instance_create(__view_get(e__VW.Object, 0).x, __view_get(e__VW.Object, 0).y, obj_screenshake_player))
    {
        alarm[0] = argument0;
        intensity = argument1;
    }
}
