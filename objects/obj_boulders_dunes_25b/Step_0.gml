if (vspeed > 0 && vspeed < 5)
    vspeed += (0.05 + (vspeed * 0.15));

if (y > room_height)
{
    instance_destroy();
    
    with (parent_machine)
        alarm[0] = 30;
}
