if (!instance_exists(obj_dialogue) && waiter == 0)
{
    msg = instance_create(x, y, obj_dialogue);
    waiter = 1;
}

with (msg)
{
    sndfnt = 97;
    message[0] = "* Do not wander off.";
    message[1] = "* It's dangerous in here.";
    prt[0] = 340;
    prt[1] = 343;
}

if (!global.dialogue_open && waiter == 1)
{
    global.cutscene = true;
    obj_pl.vspeed = -3;
    
    if (!alarm[0])
        alarm[0] = 3;
}
