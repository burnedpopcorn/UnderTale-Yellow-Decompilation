var trn;

if (live_call())
    return global.live_result;

if (instance_exists(obj_transition_white_debug))
{
    pos = -1;
    exit;
}

scr_get_input();

if (global.down_keyp)
{
    audio_play_sound(snd_mo_pop, 1, 0);
    
    if (pos < 2)
        pos += 1;
    else if (pos == 2)
        pos = 4;
    else if (pos == 3)
        pos = 5;
}

if (global.up_keyp)
{
    audio_play_sound(snd_mo_pop, 1, 0);
    
    if (pos == 1)
        pos = 0;
    
    if (pos == 2 || pos == 3)
        pos = 1;
    else if (pos == 4)
        pos = 2;
    else if (pos == 5)
        pos = 3;
}

if (global.right_keyp)
{
    audio_play_sound(snd_mo_pop, 1, 0);
    
    if (pos == 2)
        pos = 3;
    else if (pos == 3)
        pos = 6;
    else if (pos == 6)
        pos = 2;
    else if (pos == 4)
        pos = 5;
    else if (pos == 5)
        pos = 4;
}

if (global.left_keyp)
{
    audio_play_sound(snd_mo_pop, 1, 0);
    
    if (pos == 3)
        pos = 2;
    else if (pos == 2)
        pos = 3;
    else if (pos == 6)
        pos = 2;
    else if (pos == 5)
        pos = 4;
    else if (pos == 4)
        pos = 5;
}

if (pos > 5)
    page = 2;
else
    page = 1;

if (keyboard_multicheck_pressed(0))
{
    if (pos == 0)
    {
        scr_loadgame();
        audio_stop_sound(creepymus);
    }
    
    if (pos == 1)
    {
        if (current_route == "Pacifist")
            current_route = "Neutral";
        else if (current_route == "Neutral")
            current_route = "Geno";
        else if (current_route == "Geno")
            current_route = "Geno Complete";
        else if (current_route == "Geno Complete")
            current_route = "Pacifist";
    }
    
    if (pos >= 2)
    {
        trn = instance_create(0, 0, obj_transition_white_debug);
        trn.new_route = current_route;
        audio_stop_sound(creepymus);
        audio_play_sound(snd_mo_pop, 1, 0);
        audio_play_sound(mus_cymbal, 1, 0);
        
        switch (pos)
        {
            case 2:
                trn.new_room = 6;
                break;
            
            case 3:
                trn.new_room = 43;
                break;
            
            case 4:
                trn.new_room = 77;
                break;
            
            case 5:
                trn.new_room = 105;
                break;
            
            case 6:
                trn.new_room = 127;
                break;
        }
        
        exit;
    }
}
