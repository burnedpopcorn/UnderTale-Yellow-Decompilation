function backgrounds_parallax()
{
    var _v = argument[0];
    
    for (var _i = 1; _i < argument_count; _i++)
    {
        var _b = argument[_i];
        __background_set(e__BG.X, _b, (__view_get(e__VW.XView, _v) / (room_width - __view_get(e__VW.WView, _v))) * (room_width - __background_get(UnknownEnum.Value_5, _b)));
        __background_set(e__BG.Y, _b, (__view_get(e__VW.YView, _v) / (room_height - __view_get(e__VW.HView, _v))) * (room_height - __background_get(UnknownEnum.Value_6, _b)));
    }
}
