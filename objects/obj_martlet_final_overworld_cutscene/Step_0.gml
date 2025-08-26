if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (room == rm_battle)
            exit;
        
        cutscene_music = audio_play_sound(mus_snowfall, 1, 1);
        cutscene_camera_freeze(180, 500);
        break;
    
    case 1:
        cutscene_wait(3);
        break;
    
    case 2:
        draw_alpha = lerp(draw_alpha, 0, 0.1);
        
        if (draw_alpha <= 0.01)
            draw_alpha = 0;
        
        if (cutscene_camera_move(0, 0, 2, false) && draw_alpha == 0)
            scene++;
        
        break;
    
    case 3:
        cutscene_wait(1);
        break;
    
    case 4:
        obj_martlet_npc.vspeed = 3;
        
        if (obj_martlet_npc.y >= 138)
        {
            obj_martlet_npc.image_speed = 1;
            obj_martlet_npc.y = 138;
            obj_martlet_npc.vspeed = 0;
            scene++;
        }
        
        break;
    
    case 5:
        if (obj_martlet_npc.image_index >= (obj_martlet_npc.image_number - 1))
        {
            obj_martlet_npc.image_index = obj_martlet_npc.image_number - 1;
            obj_martlet_npc.image_speed = 0;
            cutscene_wait(0.25);
        }
        
        break;
    
    case 6:
        obj_martlet_npc.image_alpha = 0;
        obj_martlet_npc.y = 149;
        obj_martlet_npc.image_speed = 0;
        obj_martlet_npc.image_index = obj_martlet_npc.image_number - 1;
        obj_chujin_npc.down_sprite_idle = spr_flashback_mart_and_chujin_mart_talk_coffee;
        cutscene_npc_action_sprite(obj_chujin_npc, spr_flashback_mart_and_chujin_part1, 1, false);
        break;
    
    case 7:
        cutscene_wait(1);
        break;
    
    case 8:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_chujin_npc;
            obj_chujin_npc.npc_voice_sfx = snd_talk_martlet;
            message[0] = "* One cup of joe for the#  Boss - extra#  caffeinated!";
            prt[0] = spr_martlet_head_content;
        }
        
        break;
    
    case 9:
        cutscene_advance();
        break;
    
    case 10:
        obj_chujin_npc.down_sprite_idle = spr_chujin_lookside;
        
        if (cutscene_npc_action_sprite(obj_chujin_npc, spr_flashback_mart_and_chujin_part2, 1, false))
            obj_chujin_npc.npc_voice_sfx = snd_talk_chujin;
        
        break;
    
    case 11:
        obj_martlet_npc.action_sprite = false;
        obj_martlet_npc.image_alpha = 1;
        cutscene_wait(0.5);
        break;
    
    case 12:
        obj_chujin_npc.down_sprite_idle = spr_chujin_normal;
        obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookforward;
        cutscene_wait(1);
        break;
    
    case 13:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_chujin_npc;
            talker[2] = obj_martlet_npc;
            talker[4] = obj_chujin_npc;
            talker[5] = obj_martlet_npc;
            talker[6] = obj_chujin_npc;
            message[0] = "* Is that my title now?";
            message[1] = "* It's not like I pay you#  to help me.";
            message[2] = "* Oh?";
            message[3] = "* See these drinks?";
            message[4] = "* Martlet...";
            message[5] = "* You really should pay#  that tab soon. The list#  is gettin' long!";
            message[6] = "* ...";
            prt[0] = spr_portrait_fchujin_bruh;
            prt[1] = spr_portrait_fchujin_talk_smile;
            prt[2] = spr_martlet_head_smirk;
            prt[3] = spr_martlet_head_content;
            prt[4] = spr_portrait_fchujin_bruh;
            prt[5] = spr_martlet_head_wink;
            prt[6] = spr_portrait_fchujin_talk_smile;
            
            switch (message_current)
            {
                case 2:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookside;
                    break;
                
                case 4:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_unamused;
                    break;
                
                case 6:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_headturned_happy;
                    break;
            }
        }
        
        break;
    
    case 14:
        obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookforward;
        cutscene_wait(0.5);
        break;
    
    case 15:
        obj_chujin_npc.down_sprite_idle = spr_chujin_normal;
        cutscene_wait(1.5);
        break;
    
    case 16:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            talker[2] = obj_chujin_npc;
            talker[3] = obj_martlet_npc;
            talker[5] = obj_chujin_npc;
            talker[7] = obj_martlet_npc;
            talker[8] = obj_chujin_npc;
            talker[9] = obj_martlet_npc;
            talker[10] = obj_chujin_npc;
            talker[11] = obj_martlet_npc;
            message[0] = "* Oh, I meant to tell#  you...";
            message[1] = "* We'll probably have to#  cut back on our hangouts#  soon.";
            message[2] = "* Hm?";
            message[3] = "* I uh... I finally gave#  in to peer pressure#  and...";
            message[4] = "* ...Got a job.";
            message[5] = "* Really?";
            message[6] = "* What good news!";
            message[7] = "* Heh, I don't see it#  that way...";
            message[8] = "* Well, you can't#  freeload forever.";
            message[9] = "* I knoooow, I know!";
            message[10] = "* What's the job?";
            message[11] = "* Well I wanted a job#  where I could build#  things so...";
            prt[0] = spr_martlet_head_melancholic;
            prt[1] = spr_martlet_head_sad;
            prt[2] = spr_portrait_fchujin_happy;
            prt[3] = spr_martlet_head_nervous;
            prt[4] = spr_martlet_head_nervous_smile;
            prt[5] = spr_portrait_fchujin_happy;
            prt[6] = spr_portrait_fchujin_happy;
            prt[7] = spr_martlet_head_sad;
            prt[8] = spr_portrait_fchujin_bruh;
            prt[9] = spr_martlet_head_confounded;
            prt[10] = spr_portrait_fchujin_happy;
            prt[11] = spr_martlet_head_moderate;
            
            switch (message_current)
            {
                case 0:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookdown;
                    break;
                
                case 1:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookdown_worried;
                    break;
                
                case 2:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookside;
                    break;
                
                case 3:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookforward_worried;
                    break;
                
                case 4:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookside_worried;
                    obj_chujin_npc.down_sprite_idle = spr_chujin_lookside;
                    break;
                
                case 5:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookdown_worried;
                    break;
                    break;
                
                case 6:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_headturned_happy;
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookside;
                    break;
                
                case 7:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookdown_worried;
                    obj_chujin_npc.down_sprite_idle = spr_chujin_lookside;
                    break;
                
                case 8:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_normal;
                    break;
                
                case 10:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_lookside;
                    break;
                
                case 11:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookdown_worried;
                    break;
            }
        }
        
        break;
    
    case 17:
        scr_audio_fade_out(cutscene_music, 500);
        cutscene_wait(1);
        break;
    
    case 18:
        obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookside;
        cutscene_wait(0.5);
        break;
    
    case 19:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            talker[1] = obj_chujin_npc;
            talker[4] = obj_martlet_npc;
            talker[5] = obj_chujin_npc;
            talker[8] = obj_martlet_npc;
            talker[11] = obj_chujin_npc;
            talker[15] = obj_martlet_npc;
            talker[21] = obj_chujin_npc;
            talker[22] = obj_martlet_npc;
            talker[23] = obj_chujin_npc;
            talker[25] = obj_martlet_npc;
            talker[27] = obj_chujin_npc;
            talker[28] = obj_martlet_npc;
            talker[29] = obj_chujin_npc;
            message[0] = "* I signed up for the#  Royal Guard.";
            message[1] = "* The...";
            message[2] = "* ...";
            message[3] = "* Martlet.";
            message[4] = "* What?";
            message[5] = "* I don't...";
            message[6] = "* ...";
            message[7] = "* There's gotta be a#  better job out there.";
            message[8] = "* What's wrong with the#  Royal Guard?";
            message[9] = "* Besides building#  puzzles, all they do is#  sit around all day.";
            message[10] = "* Practically tailor made#  for me!";
            message[11] = "* It isn't that simple.";
            message[12] = "* ...";
            message[13] = "* On rare occasions,#  Guards have to do their#  job.";
            message[14] = "* Their REAL job.";
            message[15] = "* You're talking about#  humans, right?";
            message[16] = "* I'm aware.";
            message[17] = "* But come on...";
            message[18] = "* It's gotta be like, a#  0.1% chance that I run#  into a human!";
            message[19] = "* And even if I did, I'm#  a good people-person. ";
            message[20] = "* Escorting them through#  the Underground wouldn't#  be a problem.";
            message[21] = "* Humans are dangerous!";
            message[22] = "* Whoa...";
            message[23] = "* They cannot be trusted#  and certainly not#  \"escorted.\"";
            message[24] = "* Sorry, but you should#  not put yourself in#  harm's way.";
            message[25] = "* What do you mean?";
            message[26] = "* Surely they can't ALL#  be bad... right?";
            message[27] = "* Have you heard of the#  Snowdin attack?";
            message[28] = "* Yeah...";
            message[29] = "* Well... I witnessed it.";
            message[30] = "* One of the bleakest#  days of my life.";
            message[31] = "* And veterans of the#  war... their stories... ";
            message[32] = "* It had to be ten times#  worse.";
            message[33] = "* ...";
            message[34] = "* Humans are merciless.";
            message[35] = "* Incapable of decency in#  any form.";
            prt[0] = spr_martlet_head_regular;
            prt[1] = spr_portrait_fchujin_surprised;
            prt[2] = spr_portrait_fchujin_surprised_talk;
            prt[3] = spr_portrait_fchujin_talk_glasses;
            prt[4] = spr_martlet_head_surprised;
            prt[5] = spr_portrait_fchujin_talk_serious;
            prt[6] = spr_portrait_fchujin_serious_down;
            prt[7] = spr_portrait_fchujin_talk_glasses;
            prt[8] = spr_martlet_head_questioning;
            prt[9] = spr_martlet_head_melancholic;
            prt[10] = spr_martlet_head_content;
            prt[11] = spr_portrait_fchujin_talk_serious;
            prt[12] = spr_portrait_fchujin_serious_down;
            prt[13] = spr_portrait_fchujin_talk_serious;
            prt[14] = spr_portrait_fchujin_talk_glasses;
            prt[15] = spr_martlet_head_wondering;
            prt[16] = spr_martlet_head_moderate;
            prt[17] = spr_martlet_head_melancholic;
            prt[18] = spr_martlet_head_regular;
            prt[19] = spr_martlet_head_content;
            prt[20] = spr_martlet_head_regular;
            prt[21] = spr_portrait_fchujin_serious_down;
            prt[22] = spr_martlet_head_surprised;
            prt[23] = spr_portrait_fchujin_talk_glasses;
            prt[24] = spr_portrait_fchujin_talk_serious;
            prt[25] = spr_martlet_head_sad;
            prt[26] = spr_martlet_head_downer;
            prt[27] = spr_portrait_fchujin_talk_glasses;
            prt[28] = spr_martlet_head_sad;
            prt[29] = spr_portrait_fchujin_talk_serious;
            prt[30] = spr_portrait_fchujin_talk_serious;
            prt[31] = spr_portrait_fchujin_talk_serious;
            prt[32] = spr_portrait_fchujin_talk_serious;
            prt[33] = spr_portrait_fchujin_serious_down;
            prt[34] = spr_portrait_fchujin_talk_glasses;
            prt[35] = spr_portrait_fchujin_talk_serious;
            
            switch (message_current)
            {
                case 0:
                    noloop_message = 0;
                    obj_chujin_npc.down_sprite_idle = spr_chujin_shocked;
                    break;
                
                case 1:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_shocked_lookdown;
                    break;
                
                case 2:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookdown;
                    break;
                
                case 3:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookdown_side;
                    break;
                
                case 4:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookside_worried;
                    break;
                
                case 5:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookdown_side_more;
                    break;
                
                case 6:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookdown;
                    break;
                
                case 8:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookside;
                    break;
                
                case 11:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious;
                    break;
                
                case 12:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookdown;
                    break;
                
                case 16:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookdown;
                    break;
                
                case 17:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookside;
                    break;
                
                case 21:
                    if (noloop_message < message_current)
                    {
                        noloop_message = message_current;
                        scr_screenshake(8, 2);
                        audio_play_sound(snd_ceroba_yell, 1, 0);
                    }
                    
                    if (!audio_is_playing(mus_nothing_but_the_truth))
                        other.cutscene_music = audio_play_sound(mus_nothing_but_the_truth, 1, 0);
                    
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookdown_side;
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookside_worried;
                    break;
                
                case 22:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookforward_worried;
                    break;
                
                case 25:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookside;
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookdown;
                    break;
                
                case 27:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookside;
                    break;
                
                case 29:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookdown_side;
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookside_worried;
                    break;
                
                case 30:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookdown;
                    break;
                
                case 32:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious;
                    break;
                
                case 33:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookdown;
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookdown_worried;
                    break;
            }
        }
        
        break;
    
    case 20:
        cutscene_advance();
        break;
    
    case 21:
        cutscene_wait(1.25);
        obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookside;
        break;
    
    case 22:
        cutscene_wait(1.25);
        obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookside_worried;
        break;
    
    case 23:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_chujin_npc;
            message[0] = "* Believe me.";
            prt[0] = spr_portrait_fchujin_serious_down;
        }
        
        break;
    
    case 24:
        cutscene_wait(1);
        break;
    
    case 25:
        obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookdown;
        obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookdown;
        cutscene_wait(1);
        break;
        break;
    
    case 26:
        scr_audio_fade_out(cutscene_music, 750);
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            talker[5] = obj_chujin_npc;
            talker[6] = obj_martlet_npc;
            talker[7] = obj_chujin_npc;
            message[0] = "* ...";
            message[1] = "* If it makes you feel#  better...";
            message[2] = "* I'm not posted anywhere#  near the hot spots.";
            message[3] = "* Well, it is a \"hot\"#  spot but...";
            message[4] = "* It's just Lab duty.";
            message[5] = "* Guarding the Royal#  Scientist's almighty#  fortress?";
            message[6] = "* Yeah, that's all.";
            message[7] = "* ...#";
            prt[0] = spr_martlet_head_downer;
            prt[1] = spr_martlet_head_sad;
            prt[2] = spr_martlet_head_melancholic;
            prt[3] = spr_martlet_head_sad;
            prt[4] = spr_martlet_head_melancholic;
            prt[5] = spr_portrait_fchujin_talk_glasses;
            prt[6] = spr_martlet_head_wondering;
            prt[7] = spr_portrait_fchujin_serious_down;
            
            switch (message_current)
            {
                case 0:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookside_worried;
                    break;
                
                case 1:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookside;
                    break;
                
                case 5:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookside_worried;
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookdown_side_more;
                    break;
                
                case 6:
                    obj_martlet_npc.down_sprite_idle = spr_martlet_flashback_sit_lookdown_worried;
                    break;
                
                case 7:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookdown;
                    break;
            }
        }
        
        break;
    
    case 27:
        cutscene_wait(2);
        break;
    
    case 28:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_chujin_npc;
            talker[1] = obj_martlet_npc;
            message[0] = "* Why don't we just call#  it a day?";
            message[1] = "* Yeah...";
            message[2] = "* Probably for the#  best...";
            prt[0] = spr_portrait_fchujin_talk_serious;
            prt[1] = spr_martlet_head_downer;
            prt[2] = spr_martlet_head_sad;
            
            switch (message_current)
            {
                case 0:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookdown_side;
                    break;
                
                case 1:
                    obj_chujin_npc.down_sprite_idle = spr_chujin_serious_lookdown;
                    break;
            }
        }
        
        break;
    
    case 29:
        cutscene_wait(1.5);
        break;
    
    case 30:
        draw_alpha = lerp(draw_alpha, 1, 0.05);
        
        if (draw_alpha >= 0.99)
        {
            draw_alpha = 1;
            scene++;
        }
        
        break;
    
    case 31:
        cutscene_change_room(rm_hotland_lab_entrance, 0, 0, 0.1);
        break;
}
