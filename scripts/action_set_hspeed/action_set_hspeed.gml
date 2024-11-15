function action_set_hspeed(argument0)
{
    var val;
    
    val = argument0;
    
    if (global.__argument_relative)
        val += hspeed;
    
    hspeed = val;
}
