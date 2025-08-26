function action_set_hspeed(arg0)
{
    var val = arg0;
    
    if (global.__argument_relative)
        val += hspeed;
    
    hspeed = val;
}
