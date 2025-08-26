function room_set_view(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15)
{
    var __ind = arg0;
    var __vind = arg1;
    var __vis = arg2;
    var __xview = arg3;
    var __yview = arg4;
    var __wview = arg5;
    var __hview = arg6;
    var __xport = arg7;
    var __yport = arg8;
    var __wport = arg9;
    var __hport = arg10;
    var __hborder = arg11;
    var __vborder = arg12;
    var __hspeed = arg13;
    var __vspeed = arg14;
    var __obj = arg15;
    
    if (!room_exists(__ind))
    {
        show_debug_message("room_set_view: room " + string(__ind) + " does not exist");
        return -1;
    }
    
    if (__vind < 0 || __vind > 7)
    {
        show_debug_message("room_set_view: view index out of range");
        return -1;
    }
    
    var __newcam = camera_create_view(__xview, __yview, __wview, __hview, 0, __obj, __hspeed, __vspeed, __hborder, __vborder);
    var __currcam = room_get_camera(__ind, __vind);
    
    if (__currcam != -1)
        camera_destroy(__currcam);
    
    room_set_camera(__ind, __vind, __newcam);
    room_set_viewport(__ind, __vind, __vis, __xport, __yport, __wport, __hport);
    return -1;
}
