function room_set_view(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13, argument14, argument15)
{
    var __ind, __vind, __vis, __xview, __yview, __wview, __hview, __xport, __yport, __wport, __hport, __hborder, __vborder, __hspeed, __vspeed, __obj, __newcam, __currcam;
    
    __ind = argument0;
    __vind = argument1;
    __vis = argument2;
    __xview = argument3;
    __yview = argument4;
    __wview = argument5;
    __hview = argument6;
    __xport = argument7;
    __yport = argument8;
    __wport = argument9;
    __hport = argument10;
    __hborder = argument11;
    __vborder = argument12;
    __hspeed = argument13;
    __vspeed = argument14;
    __obj = argument15;
    
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
    
    __newcam = camera_create_view(__xview, __yview, __wview, __hview, 0, __obj, __hspeed, __vspeed, __hborder, __vborder);
    __currcam = room_get_camera(__ind, __vind);
    
    if (__currcam != -1)
        camera_destroy(__currcam);
    
    room_set_camera(__ind, __vind, __newcam);
    room_set_viewport(__ind, __vind, __vis, __xport, __yport, __wport, __hport);
    return -1;
}
