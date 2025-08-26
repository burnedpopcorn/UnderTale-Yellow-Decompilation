if ((keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true) && waiter == 0)
    waiter = 1;

var diary_music = 135;

if (waiter == 1)
{
    scr_cutscene_start();
    scr_text();
    
    with (msg)
    {
        ch_msg = 2;
        ch[1] = "Yes";
        ch[2] = "No";
        portrait = false;
        sndfnt = sndfnt_default;
        
        if (other.npc_flag == 0)
        {
            message[0] = "* (It looks like Dalv's diary.)";
            message[1] = "* (This could contain private#  information.)";
            message[2] = "* (Read it?)";
        }
        else
        {
            if (message_current == 0)
                message_current = 1;
            
            message[1] = "* (It's Dalv's diary.)";
            message[2] = "* (Read it?)";
        }
        
        if (outcome == 1)
        {
            message[3] = "* (You open the diary up.)";
            message[4] = "* (There's only one entry. It#  seems new.)";
            other.waiter = 2;
            other.timer = 30;
        }
        else if (outcome == 2)
        {
            other.waiter = 5;
            instance_destroy();
        }
    }
}

if (waiter == 2 && !global.dialogue_open)
{
    if (scr_timer())
    {
        if (audio_is_playing(mus_dalventertainer))
        {
            audio_sound_gain(mus_dalventertainer, 0, 500);
            var audio_gain = audio_sound_get_gain(mus_dalventertainer);
            
            if (audio_gain == 0)
                audio_stop_sound(mus_dalventertainer);
        }
        else
        {
            waiter++;
        }
    }
}

if (waiter == 3)
{
    scr_text();
    
    with (msg)
    {
        sndfnt = sndfnt_dalv;
        portrait = false;
        message[0] = "* Today began like every other#  day.";
        message[1] = "* I got out of bed, brushed my#  fangs, and had a nice bowl of#  corn for breakfast.";
        message[2] = "* Pops made a very funny joke at#  Broom's expense and we all had#  a laugh.";
        message[3] = "* I put on my cloak and went out#  for my daily walk.";
        message[4] = "* I noticed another blue corn had#  popped up in your cornfield#  today.";
        message[5] = "* I always feel bad for#  discarding the special corn but#  I can't risk getting sick.";
        message[6] = "* Anyways...";
        message[7] = "* Something interesting happened#  a bit later.";
        message[8] = "* I overheard Flier and Penilla#  talking about me...";
        message[9] = "* About us...";
        message[10] = "* They said they were concerned#  for me.";
        message[11] = "* They said I talk to myself.";
        message[12] = "* ...";
        message[13] = "* Penilla then chimed in and#  commented on my advice and#  gifts to you.";
        message[14] = "* My signs.";
        message[15] = "* They said you don't exist...";
        message[16] = "* That isn't true.";
        message[17] = "* You do.";
        message[18] = "* I know you do.";
        message[19] = "* You reached out to me when I#  needed it most.";
        message[20] = "* ...Helped me cope with the#  past...";
        message[21] = "* How could they be so mean?";
        message[22] = "* What do they know?";
        message[23] = "* I don't need them.";
        message[24] = "* Because...";
        message[25] = "* Because I have you.";
        message[26] = "* ...";
        message[27] = "* It's been one year.";
        message[28] = "* ...";
        message[29] = "* I'm still waiting.";
    }
    
    if (!global.dialogue_open)
    {
        waiter = 4;
        timer = 30;
    }
}

if (waiter == 4)
{
    if (!scr_timer())
        exit;
    
    scr_text();
    
    with (msg)
    {
        sndfnt = sndfnt_default;
        portrait = false;
        message[0] = "* (The entry ends there.)";
    }
    
    if (!global.dialogue_open)
        waiter = 5;
}

if (waiter == 5)
{
    if (audio_is_playing(diary_music))
        audio_stop_sound(diary_music);
    
    if (npc_flag == 0)
        npc_flag = 1;
    
    waiter = 0;
    scr_cutscene_end();
}

if (ds_map_find_value(global.npc_map, npc_id) != npc_flag)
    ds_map_replace(global.npc_map, npc_id, npc_flag);
