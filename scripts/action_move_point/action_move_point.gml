function action_move_point(argument0, argument1, argument2)
{
    var xx, yy;
    
    xx = argument0;
    yy = argument1;
    
    if (global.__argument_relative)
    {
        xx += x;
        yy += y;
    }
    
    move_towards_point(xx, yy, argument2);
}
