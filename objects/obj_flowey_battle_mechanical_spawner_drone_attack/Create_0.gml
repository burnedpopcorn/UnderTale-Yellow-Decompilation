if (live_call())
    return global.live_result;

spawner = -4;
side = choose(-1, 1);

if (instance_number(obj_flowey_battle_phase_2_mechanical_drone) == 1)
{
    spawner = 2893;
    
    if (spawner.x < 320)
        side = -1;
    else
        side = 1;
}
else
{
    with (obj_flowey_battle_phase_2_mechanical_drone)
    {
        if (x < 320 && other.side == -1)
            other.spawner = self;
        else if (x >= 320 && other.side == 1)
            other.spawner = self;
    }
}

if (spawner == -4)
    instance_destroy();

bullet_count = 7;
bullet_delay = 2;
scene = 0;
cutscene_timer = 0;

switch (side)
{
    case -1:
        spawn_dir = 315;
        spawn_dir_arc = 60;
        spawn_dir_inc = spawn_dir_arc / bullet_count;
        spawn_dir_current = spawn_dir - (bullet_count * 0.5 * spawn_dir_inc);
        break;
    
    case 1:
        spawn_dir = 225;
        spawn_dir_arc = 60;
        spawn_dir_inc = -(spawn_dir_arc / bullet_count);
        spawn_dir_current = spawn_dir + (bullet_count * 0.5 * -spawn_dir_inc);
        break;
}
