function room_set_background(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11)
{
    var __ind, __bind, __vis, __fore, __back, __x, __y, __htiled, __vtiled, __hspeed, __vspeed, __alpha, __currroom;
    
    __ind = argument0;
    __bind = argument1;
    __vis = argument2;
    __fore = argument3;
    __back = argument4;
    __x = argument5;
    __y = argument6;
    __htiled = argument7;
    __vtiled = argument8;
    __hspeed = argument9;
    __vspeed = argument10;
    __alpha = argument11;
    
    if (room_exists(__ind) == false)
        return -1;
    
    __currroom = layer_get_target_room();
    layer_set_target_room(__ind);
    __background_set_element(__bind, __vis, __fore, __back, __x, __y, __htiled, __vtiled, 1, 1, false, __hspeed, __vspeed, c_white, __alpha);
    layer_set_target_room(__currroom);
}
