function action_set_vspeed(argument0)
{
    var val;
    
    val = argument0;
    
    if (global.__argument_relative)
        val += vspeed;
    
    vspeed = val;
}
