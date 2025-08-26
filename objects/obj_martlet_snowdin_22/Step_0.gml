event_inherited();

if (live_call())
    return global.live_result;

if (interact && scene == 0)
{
    scene = 1;
    scr_cutscene_start();
}

if (scene == 1)
{
    is_talking = true;
    scr_text();
    
    with (msg)
    {
        sndfnt = snd_talk_martlet;
        
        if (global.snowdin_flag[14] == 2)
        {
            color = true;
            col_modif[0] = c_red;
            ch_msg = 11;
            ch[1] = "Yes";
            ch[2] = "No";
            message[0] = "* If my map and memory#  serve, this river should#  lead directly to Hotland.";
            message_col[0][0] = "                      #                          #                   Hotland ";
            message[1] = "* From there, it's a hop,#  skip, and a leap to#  ASGORE's Castle!";
            message[2] = "* I'm not sure how we're#  getting in but...";
            message[3] = "* We cross that bridge#  when we come to it,#  right?";
            message[4] = "* ...";
            message[5] = "* I also wanted to#  apologize about, well,#  you know...";
            message[6] = "* attacking you...";
            message[7] = "* I meant no harm, honest!#  I just have to do my#  job, is all!";
            message[8] = "* And, well...";
            message[9] = "* Oftentimes I don't know#  what the \"right\" action#  is until it's too late.";
            message[10] = "* So... I know we just#  met and all...";
            message[11] = "* But will you trust me#  on this?";
            prt[0] = spr_martlet_head_questioning;
            prt[1] = spr_martlet_head_regular;
            prt[2] = spr_martlet_head_wondering;
            prt[3] = spr_martlet_head_regular;
            prt[4] = spr_martlet_head_downer;
            prt[5] = spr_martlet_head_melancholic;
            prt[6] = spr_martlet_head_melancholic;
            prt[7] = spr_martlet_head_nervous;
            prt[8] = spr_martlet_head_sad;
            prt[9] = spr_martlet_head_downer;
            prt[10] = spr_martlet_head_moderate;
            prt[11] = spr_martlet_head_regular;
            
            if (outcome == 1)
                other.scene = 2;
            
            if (outcome == 2)
                other.scene = 3;
        }
        else if (global.snowdin_flag[14] == 3)
        {
            ch_msg = 3;
            ch[1] = "Yes";
            ch[2] = "No";
            message[0] = "* I suppose another#  \"sorry\" isn't gonna#  cut it?";
            message[1] = "* Can you trust me to get#  you to ASGORE safely?";
            message[2] = "* I swear I can do it!#  I swear I can!";
            message[3] = "* Please?";
            prt[0] = spr_martlet_head_downer;
            prt[1] = spr_martlet_head_moderate;
            prt[2] = spr_martlet_head_determined;
            prt[3] = spr_martlet_head_melancholic;
            
            if (outcome == 1)
                other.scene = 2;
            
            if (outcome == 2)
                other.scene = 3;
        }
        else if (global.snowdin_flag[14] == 4)
        {
            ch_msg = 0;
            ch[1] = "Yes";
            ch[2] = "No";
            message[0] = "* Shall we be off then?";
            prt[0] = spr_martlet_head_regular;
            
            if (outcome == 1)
            {
                global.dialogue_open = false;
                global.snowdin_flag[14] = 5;
                other.scene = 5;
            }
            
            if (outcome == 2)
            {
                other.scene = 3;
                ch_msg = -1;
            }
        }
    }
}
else if (scene == 2)
{
    is_talking = true;
    scr_text();
    global.snowdin_flag[14] = 4;
    
    with (msg)
    {
        ch_msg = 10;
        ch[1] = "Yes";
        ch[2] = "No";
        message[0] = "* Yay! Don't worry, your#  trust is in good#  hands!";
        message[1] = "* Or wings, as the case#  may be!";
        message[2] = "* I'll guard it with#  my SOUL!";
        message[3] = "* And this means we get to#  have an adventure! This#  is so exciting!";
        message[4] = "* I mean, nothing this#  exciting ever happens#  around here.";
        message[5] = "* At least, while I've#  been here it hasn't.";
        message[6] = "* Think of all the fun#  we'll have!";
        message[7] = "* I mean, there's a chance#  I might be fired for#  this,";
        message[8] = "* And lose all of my#  life's work and#  belongings, but hey,";
        message[9] = "* What's life without a#  little risk?";
        message[10] = "* So shall we be off#  then?";
        prt[0] = spr_martlet_head_content;
        prt[1] = spr_martlet_head_confused;
        prt[2] = spr_martlet_head_regular;
        prt[3] = spr_martlet_head_happy;
        prt[4] = spr_martlet_head_regular;
        prt[5] = spr_martlet_head_questioning;
        prt[6] = spr_martlet_head_content;
        prt[7] = spr_martlet_head_surprised;
        prt[8] = spr_martlet_head_nervous_smile;
        prt[9] = spr_martlet_head_regular;
        prt[10] = spr_martlet_head_content;
        
        if (outcome == 1)
        {
            global.snowdin_flag[14] = 5;
            other.scene = 5;
        }
        
        if (outcome == 2)
            other.scene = 3;
    }
}
else if (scene == 5)
{
    global.dialogue_open = false;
    
    if (!instance_exists(obj_npc_clover_snowdin_22))
        instance_create(obj_pl.x, obj_pl.y, obj_npc_clover_snowdin_22);
    
    with (obj_room_controller_snowdin_22)
    {
        if (scene == 10)
            scene = 11;
    }
    
    if (npc_arrived == true)
    {
        npc_arrived = false;
        action_sprite = true;
        sprite_index = spr_snowdin_22_martlet_untie_rope_overworld_yellow;
        image_speed = 0.2;
        scene = 6;
    }
}
else if (scene == 6)
{
    if (floor(image_index) == 4)
    {
        if (!audio_is_playing(snd_raft_untie))
            audio_play_sound(snd_raft_untie, 1, 0);
    }
    
    if (action_sprite == true && image_index >= (image_number - 1))
    {
        obj_raft_snowdin_22.move = true;
        action_sprite = false;
        npc_direction = "right";
        scene++;
        timer = 120;
    }
}
else if (scene == 7)
{
    if (timer > 0)
    {
        timer--;
    }
    else
    {
        timer = -1;
        scene++;
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            message[0] = "* Wait, hold on!";
            message[1] = "* I was supposed to be on#  Ava with you!";
            prt[0] = spr_martlet_head_surprised;
            prt[1] = spr_martlet_head_surprised;
        }
    }
}
else if (scene == 8)
{
    if (!instance_exists(obj_dialogue))
    {
        action_sprite = true;
        sprite_index = spr_martlet_fly_away;
        image_speed = 0.5;
        timer = 90;
        scene++;
    }
}
else if (scene == 9)
{
    if (action_sprite == true && image_index >= (image_number - 1))
    {
        image_speed = 0;
        image_index = image_number - 1;
    }
    
    if (timer > 0)
        timer--;
    else
        instance_create(0, 0, obj_snowdin_end_transition);
}
else if (scene == 3)
{
    scene = -1;
    scr_text();
    is_talking = true;
    
    with (msg)
    {
        if (global.snowdin_flag[14] == 2)
        {
            message[0] = "* Yeah, that's fair, I#  guess.";
            message[1] = "* Well I'll hang around#  a while.";
            message[2] = "* In case you, ya know,#  change your mind.";
            message[3] = "* I mean, I put all this#  work into finishing the#  UG Aviator so.";
            message[4] = "* If she doesn't get to#  sail free,";
            message[5] = "* I can at least#  give her company a#  while.";
            message[6] = "* Until I find a better#  place for her, ya know?";
            prt[0] = spr_martlet_head_downer;
            prt[1] = spr_martlet_head_sad;
            prt[2] = spr_martlet_head_melancholic;
            prt[3] = spr_martlet_head_melancholic;
            prt[4] = spr_martlet_head_melancholic;
            prt[5] = spr_martlet_head_regular;
            prt[6] = spr_martlet_head_regular;
            global.snowdin_flag[14] = 3;
        }
        else if (global.snowdin_flag[14] == 3)
        {
            message[0] = "* Oh... Okay...";
            prt[0] = spr_martlet_head_downer;
        }
        else if (global.snowdin_flag[14] == 4)
        {
            message[0] = "* Oh. You have something#  to do?";
            message[1] = "* I didn't realize you#  were so busy and#  popular!";
            message[2] = "* That's fine! I'll be#  here.";
            message[3] = "* Take all the time in#  the world!";
            message[4] = "* ...Actually, if you#  wouldn't mind,#  don't take, like,";
            message[5] = "* all the#  time in the world.";
            message[6] = "* We want to have time#  left for the journey,#  ya know?";
            prt[0] = spr_martlet_head_surprised;
            prt[1] = spr_martlet_head_melancholic;
            prt[2] = spr_martlet_head_content;
            prt[3] = spr_martlet_head_regular;
            prt[4] = spr_martlet_head_melancholic;
            prt[5] = spr_martlet_head_melancholic;
            prt[6] = spr_martlet_head_regular;
        }
    }
}

if (scene != 0 && instance_exists(obj_dialogue))
{
    with (msg)
    {
        if (outcome > 0)
        {
            message = 0;
            message[0] = "";
            outcome = 0;
            cutoff = 0;
            message_current = 0;
        }
    }
}

if (scene == -1)
{
    if (!instance_exists(obj_dialogue))
    {
        scr_cutscene_end();
        scene = 0;
    }
}
