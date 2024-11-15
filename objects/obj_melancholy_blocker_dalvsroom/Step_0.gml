if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
    waiter = 1;

if (waiter == 1)
{
    global.cutscene = true;
    audio_play_sound(snd_knock_beautiful, 1, 0);
    alarm[0] = 60;
    waiter++;
}

if (waiter == 3)
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        sndfnt = 99;
        message[0] = "* (No answer...)";
        message[1] = "* (You hear an organ faintly#  playing on the other side.)";
    }
    
    waiter++;
}

if (waiter == 4 && !instance_exists(obj_dialogue))
    waiter++;

if (waiter == 5)
{
    global.cutscene = false;
    waiter = 0;
    obj_pl.alarm[0] = 1;
}
