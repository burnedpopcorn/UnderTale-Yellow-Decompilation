if (!instance_exists(obj_dialogue) && waiter == 0)
{
    msg = instance_create(x, y, obj_dialogue);
    waiter = 1;
}

with (msg)
{
    sndfnt = sndfnt_toriel;
    message[0] = "* Do not wander off.";
    message[1] = "* It's dangerous in here.";
    prt[0] = toriel_side;
    prt[1] = toriel_normal;
}

if (!global.dialogue_open && waiter == 1)
{
    global.cutscene = true;
    obj_pl.vspeed = -3;
    
    if (!alarm[0])
        alarm[0] = 3;
}
