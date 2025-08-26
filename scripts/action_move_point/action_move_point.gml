function action_move_point(arg0, arg1, arg2)
{
    var xx = arg0;
    var yy = arg1;
    
    if (global.__argument_relative)
    {
        xx += x;
        yy += y;
    }
    
    move_towards_point(xx, yy, arg2);
}
