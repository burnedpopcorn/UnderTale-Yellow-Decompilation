event_inherited();

if (interact && audio_is_playing(song))
{
    scr_cutscene_start();
    waiter = 1;
}

if (waiter == 1)
{
    scr_text();
    
    if (!instance_exists(obj_dialoguebox_dummy))
        instance_create(x, y, obj_dialoguebox_dummy);
    
    talk = 1;
    
    with (msg)
    {
        portrait = false;
        ch[1] = "Yes";
        ch[2] = "No";
        
        switch (other.npc_flag)
        {
            case 0:
                message[0] = "* How's it hangin'?";
                message[1] = "* The name's Rodney. I'm the#  leader of our little band here.";
                message[2] = "* We travel all around the#  Underground performing for the#  monsters.";
                message[3] = "* This resort is a regular gig.";
                message[4] = "* Care to hear a tune?";
                ch_msg = 4;
                break;
            
            case 1:
                message[0] = "* Care for a tune, my dude?";
                ch_msg = 0;
                break;
        }
        
        if (outcome == 1)
        {
            other.waiter = 2;
            other.npc_flag = 1;
        }
        
        if (outcome == 2)
        {
            other.waiter = 5;
            other.npc_flag = 1;
        }
    }
}

if (waiter == 2 && !instance_exists(obj_dialogue))
{
    play_song = 0;
    waiter = 3;
    scr_text();
    
    with (msg)
    {
        portrait = false;
        
        if (irandom(other.bark_song_chance) == 0)
        {
            message[0] = "* Alright, nice.";
            message[1] = "* Hmm... let me work up somethin'#  special.";
            message[2] = "* This one's for the fluffy#  trouble makers out there.";
            other.song = 145;
            other.bark_song_chance = 8;
            exit;
        }
        else
        {
            other.bark_song_chance -= 1;
        }
        
        var ransong_new = irandom(2);
        
        while (ransong_new == other.ransong)
            ransong_new = irandom(2);
        
        other.ransong = ransong_new;
        
        switch (ransong_new)
        {
            case 0:
                message[0] = "* Sounds good, buddy.";
                message[1] = "* Here's a mysterious song full#  of new discoveries.";
                other.song = 148;
                break;
            
            case 1:
                message[0] = "* Right on, dude.";
                message[1] = "* This is a chilly song you can#  curl up by the fireplace to.";
                other.song = 149;
                break;
            
            case 2:
                message[0] = "* Sounds good, friend.";
                message[1] = "* Here's one for the monsters#  that like a little time to#  themselves.";
                other.song = 146;
                break;
        }
    }
}
else if (waiter == 3 && !global.dialogue_open)
{
    instance_destroy(obj_dialoguebox_dummy);
    scr_cutscene_end();
    play_song = 1;
    waiter = 0;
}

if (waiter == 5 && !instance_exists(obj_dialogue))
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        message[0] = "* Well, uh, I can't comply with#  that, considering we've been#  hired to play here.";
        message[1] = "* If you wanna hear something#  different, just talk to me,#  alright?";
    }
    
    waiter++;
}

if (waiter == 6 && !instance_exists(obj_dialogue))
{
    scr_cutscene_end();
    instance_destroy(obj_dialoguebox_dummy);
    waiter = 0;
}

if (play_song == 1)
{
    var current_song = obj_radio.bgm;
    
    if (current_song != song)
    {
        audio_sound_gain(current_song, 0, 250);
        
        if (audio_sound_get_gain(current_song) <= 0)
        {
            audio_stop_sound(current_song);
            audio_sound_gain(current_song, 1, 1);
            obj_radio.bgm = song;
            audio_sound_gain(obj_radio.bgm, 1, 1);
            animate = 1;
            
            with (obj_radio)
            {
                audio_stop_sound(current_song);
                
                if (bgm == 147)
                    current_song = audio_play_sound(bgm, 20, 1);
                else
                    current_song = audio_play_sound(bgm, 20, 0);
            }
            
            play_song = 0;
            
            if (song != 147)
                play_song = 2;
            
            exit;
        }
        else
        {
            animate = 0;
        }
    }
}

if (!audio_is_playing(song) && play_song == 2)
{
    song = 147;
    play_song = 1;
}

if (!instance_exists(obj_dialoguebox_dummy) && talk == true)
    talk = false;

if (animate == 0)
{
    image_speed = 0;
    image_index = 0;
}
else
{
    image_speed = 0.2;
}

if (instance_exists(obj_overworld_shop_fade_out_screen))
{
    persistent = true;
}
else if (persistent == true)
{
    if (room == rm_shop)
    {
        image_alpha = 0;
    }
    else
    {
        image_alpha = 1;
        persistent = false;
    }
}
