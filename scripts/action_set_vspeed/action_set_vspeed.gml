function action_set_vspeed(arg0)
{
    var val = arg0;
    
    if (global.__argument_relative)
        val += vspeed;
    
    vspeed = val;
}
