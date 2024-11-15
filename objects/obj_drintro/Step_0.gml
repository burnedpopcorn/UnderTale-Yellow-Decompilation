if (waiter < 30)
    waiter++;

if (waiter == 30)
{
    if (!instance_exists(obj_dialogue))
        msg = instance_create(x, y, obj_dialogue);
    
    with (msg)
    {
        sndfnt = 97;
        portrait = false;
        message[0] = "* My child!";
        message[1] = "* Are you all right?";
        message[2] = "* ...";
        message[3] = "* Oh dear... I am afraid I cannot#  reach you...";
        message[4] = "* I must leave for a moment. You#  will stay there, will you not?";
        message[5] = "* Do not wander, many monsters#  are unfriendly towards humans.";
        message[6] = "* Fret not, my child, I will#  protect you!";
        message[7] = "* Please... wait there.";
    }
    
    waiter = 31;
}

if (waiter == 31 && !instance_exists(obj_dialogue))
{
    room = rm_darkruinsintro;
    global.item_slot[0] = "Nothing";
}
