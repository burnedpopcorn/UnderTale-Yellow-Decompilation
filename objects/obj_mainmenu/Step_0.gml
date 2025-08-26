if (waiter == 1)
    exit;

scr_get_input();

if (room == rm_mainmenu)
{
    if (global.left_keyp && p[2] == true)
    {
        p[2] = false;
        p[1] = true;
    }
    
    if (global.right_keyp && p[1] == true)
    {
        p[2] = true;
        p[1] = false;
    }
    
    if (global.down_keyp)
    {
        p[1] = false;
        p[2] = false;
        p[3] = true;
    }
    
    if (global.up_keyp && p[3] == true)
    {
        p[3] = false;
        p[1] = true;
    }
}
else
{
    if (global.down_keyp)
    {
        p[1] = false;
        p[2] = true;
    }
    
    if (global.up_keyp)
    {
        p[1] = true;
        p[2] = false;
    }
}

if (keyboard_multicheck_pressed(vk_nokey) == true)
{
    if (room == rm_mainmenu)
    {
        if (p[1] == true)
        {
            scr_loadgame();
            audio_stop_sound(mus);
        }
        
        if (p[2] == true)
        {
            audio_stop_sound(mus);
            audio_play_sound(mus_cymbal, 10, 0);
            alarm[1] = 1;
            instance_create(0, 0, obj_transition_white);
            waiter = 1;
        }
        
        if (p[3] == true)
        {
            audio_stop_sound(mus);
            room_goto(rm_config);
        }
    }
    else
    {
        if (p[1] == true && !instance_exists(obj_transition_white))
        {
            audio_stop_sound(mus);
            audio_play_sound(mus_cymbal, 10, 0);
            alarm[1] = 1;
            instance_create(0, 0, obj_transition_white);
            waiter = 1;
        }
        
        if (p[2] == true)
        {
            audio_stop_sound(mus);
            room = rm_config;
        }
    }
}
