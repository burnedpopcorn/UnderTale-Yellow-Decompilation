switch (scene)
{
    case 0:
        if (obj_pl.x > 300)
        {
            scr_cutscene_start();
            audio_sound_gain(obj_radio.current_song, 0, 360);
            timer = 5;
            scene++;
        }
        
        break;
    
    case 1:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            message[0] = "* There you are!";
            position = 1;
            skippable = false;
            
            if (cutoff >= string_length(message[message_current]))
            {
                other.scene++;
                other.timer = 60;
                sndfnt = snd_talk_martlet;
                portrait = false;
            }
        }
        
        break;
    
    case 2:
        if (scr_timer())
        {
            scene++;
            timer = 15;
            instance_destroy(msg);
        }
        
        break;
    
    case 3:
        if (!scr_timer())
            exit;
        
        if (!instance_exists(obj_martlet_dunes_32))
        {
            martlet = instance_create(__view_get(e__VW.XView, 0) + 320 + 40, obj_pl.y, obj_martlet_dunes_32);
            martlet.actor_speed = 2;
        }
        
        if (martlet.npc_arrived)
        {
            martlet.npc_arrived = false;
            timer = 30;
            scene++;
        }
        
        break;
    
    case 4:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            talker[0] = other.martlet;
            message[0] = "* I shouldn't have fled#  like I did...\t";
            message[1] = "* You kept going. Kept#  destroying lives.\t";
            message[2] = "* This isn't self defense#  like I once assumed.\t";
            message[3] = "* You're on a mission.\t";
            message[4] = "* But...";
            message[5] = "* This warped sense of#  justice... It won't#  bring them back.\t";
            message[6] = "* I have reservations#  about the King's#  business just like you.\t";
            message[7] = "* But you don't have the#  context of those#  actions.\t";
            message[8] = "* I know... You want to#  believe the best of#  others.\t";
            message[9] = "* That the fallen humans#  were fully pacifistic#  and didn't initiate       ";
            prt[0] = spr_martlet_head_disappointed;
            prt[1] = spr_martlet_head_downer;
            prt[2] = spr_martlet_head_sad;
            prt[3] = spr_martlet_head_angry;
            prt[4] = spr_martlet_head_angry;
            prt[5] = spr_martlet_head_angry;
            prt[6] = spr_martlet_head_sad;
            prt[7] = spr_martlet_head_angry;
            prt[8] = spr_martlet_head_downer;
            prt[9] = spr_martlet_head_downer;
            position = 1;
            
            if (message_current == 9)
            {
                skippable = false;
                
                if (cutoff >= string_length(message[message_current]))
                {
                    instance_destroy();
                    other.scene++;
                }
            }
        }
        
        break;
    
    case 5:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 6:
        cutscene_npc_walk_relative(obj_player_npc, 10, 0, 0.5, "x", "right");
        break;
    
    case 7:
        cutscene_wait(0.5);
        break;
    
    case 8:
        obj_martlet_dunes_32.right_sprite = spr_martlet_left;
        cutscene_npc_walk_relative(obj_martlet_dunes_32, 10, 0, 1, "x", "left");
        break;
    
    case 9:
        cutscene_wait(0.5);
        break;
    
    case 10:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            talker[0] = other.martlet;
            message[0] = "* T-The Royal Guard are#  searching for you, let#  me make that clear.";
            message[1] = "* You're lucky I'm the#  one who found you. So#  please listen!";
            message[2] = "* I've spent my life in#  skepticism.";
            message[3] = "* Longing for eventual#  peace between our kinds.";
            message[4] = "* If you can believe it,#  I see goodness in you. ";
            message[5] = "* Somehow, I still have#  hope you can turn it#  around.";
            message[6] = "* I can't apprehend you#  on my own, I already#  tried that...";
            message[7] = "* So please... stop this.#  Us monsters don't#  deserve      ";
            prt[0] = spr_martlet_head_nervous;
            prt[1] = spr_martlet_head_angry;
            prt[2] = spr_martlet_head_wondering;
            prt[3] = spr_martlet_head_wondering;
            prt[4] = spr_martlet_head_downer;
            prt[5] = spr_martlet_head_sad;
            prt[6] = spr_martlet_head_disappointed;
            prt[7] = spr_martlet_head_downer;
            position = 1;
            
            if (message_current == 7)
            {
                skippable = false;
                
                if (cutoff >= string_length(message[message_current]))
                {
                    instance_destroy();
                    other.scene++;
                }
            }
        }
        
        break;
    
    case 11:
        cutscene_npc_action_sprite(obj_player_npc, spr_pl_right_geno_shoot, 1, false);
        
        if (obj_player_npc.image_index >= 5)
        {
            obj_player_npc.image_index = 5;
            obj_player_npc.image_speed = 0;
            cutscene_advance(12);
        }
        
        timer = 30;
        break;
    
    case 12:
        if (!scr_timer())
            exit;
        
        obj_martlet_dunes_32.right_sprite = spr_martlet_left;
        cutscene_npc_walk_relative(obj_martlet_dunes_32, 10, 0, 1, "x", "left");
        break;
    
    case 13:
        cutscene_wait(0.5);
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            talker[0] = other.martlet;
            message[0] = "* W-wait!";
            prt[0] = spr_martlet_head_spook;
            position = 1;
        }
        
        break;
    
    case 15:
        cutscene_wait(1);
        break;
    
    case 16:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            talker[0] = other.martlet;
            message[0] = "* Just listen!\t";
            message[1] = "* I-I didn't want it to#  come to this but...\t";
            message[2] = "* I have to go.\t";
            message[3] = "* You won't get away with#  this, Clover.";
            prt[0] = spr_martlet_head_angry;
            prt[1] = spr_martlet_head_angry;
            prt[2] = spr_martlet_head_angry;
            prt[3] = spr_martlet_head_angry;
            position = 1;
        }
        
        break;
    
    case 17:
        if (obj_martlet_dunes_32.sprite_index != spr_martlet_fly_away)
        {
            obj_martlet_dunes_32.action_sprite = true;
            obj_martlet_dunes_32.sprite_index = spr_martlet_fly_away;
            obj_martlet_dunes_32.image_speed = 0.5;
            obj_martlet_dunes_32.image_index = 7;
        }
        
        if (obj_martlet_dunes_32.image_index >= (obj_martlet_dunes_32.image_number - 1))
        {
            instance_destroy(obj_martlet_dunes_32);
            scene++;
            timer = 20;
        }
        
        break;
    
    case 18:
        if (!scr_timer())
            exit;
        
        if (obj_player_npc.image_speed == 0)
        {
            obj_player_npc.image_index = 13;
            obj_player_npc.image_speed = 1;
        }
        
        if (obj_player_npc.image_index >= (obj_player_npc.image_number - 1))
            cutscene_advance();
        
        break;
    
    case 19:
        instance_destroy();
        instance_destroy(obj_player_npc);
        audio_sound_gain(obj_radio.current_song, 1, 360);
        global.dunes_flag[16] = 2;
        scr_cutscene_end();
        break;
}
