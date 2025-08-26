function room_set_background(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
{
    var __ind = arg0;
    var __bind = arg1;
    var __vis = arg2;
    var __fore = arg3;
    var __back = arg4;
    var __x = arg5;
    var __y = arg6;
    var __htiled = arg7;
    var __vtiled = arg8;
    var __hspeed = arg9;
    var __vspeed = arg10;
    var __alpha = arg11;
    
    if (room_exists(__ind) == false)
        return -1;
    
    var __currroom = layer_get_target_room();
    layer_set_target_room(__ind);
    __background_set_element(__bind, __vis, __fore, __back, __x, __y, __htiled, __vtiled, 1, 1, false, __hspeed, __vspeed, 16777215, __alpha);
    layer_set_target_room(__currroom);
}
