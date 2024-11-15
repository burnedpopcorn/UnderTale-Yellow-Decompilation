if (path_position == 1 && waiter == 0)
{
    alarm[1] = 30;
    waiter = 1;
}

if (finish == true && !instance_exists(obj_dialogue) && waiter == 1)
{
    alarm[3] = 10;
    obj_mfnpc.alarm[3] = 20;
    waiter = 2;
}
