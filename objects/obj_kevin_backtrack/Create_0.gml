event_inherited();

if (global.dunes_flag[24] == 0 || global.geno_complete[2])
{
    instance_destroy();
    exit;
}

can_talk = false;
