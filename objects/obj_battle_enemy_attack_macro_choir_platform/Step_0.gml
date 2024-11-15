if (live_call())
    return global.live_result;

if (!instance_exists(my_frog))
    exit;

if (my_frog.vsp == 0 && irandom(jump_chance) == 1)
{
    my_frog.frog_jump = true;
    show_debug_message("coming through coming through now");
}

my_frog.x = x + hspeed;
