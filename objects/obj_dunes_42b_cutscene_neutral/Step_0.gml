var actor_crestina = 769;
var actor_dad = 371;
var actor_orion = 553;
var actor_ceroba = obj_ceroba_npc;

switch (scene)
{
    case 0:
        scr_cutscene_start();
        audio_sound_gain(obj_radio.current_song, 0, 750);
        cutscene_wait(1);
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 0;
            talker[0] = actor_dad;
            talker[1] = actor_crestina;
            talker[2] = obj_ceroba_npc;
            talker[4] = actor_orion;
            talker[5] = actor_crestina;
            talker[6] = actor_orion;
            talker[7] = actor_dad;
            talker[8] = actor_crestina;
            talker[9] = obj_ceroba_npc;
            talker[11] = actor_dad;
            sndfnt_array[0] = snd_talk_default;
            sndfnt_array[1] = snd_talk_default;
            sndfnt_array[2] = snd_talk_ceroba;
            sndfnt_array[3] = snd_talk_ceroba;
            sndfnt_array[4] = snd_talk_default;
            sndfnt_array[5] = snd_talk_default;
            sndfnt_array[6] = snd_talk_default;
            sndfnt_array[7] = snd_talk_default;
            sndfnt_array[8] = snd_talk_default;
            sndfnt_array[9] = snd_talk_ceroba;
            sndfnt_array[10] = snd_talk_ceroba;
            sndfnt_array[11] = snd_talk_default;
            message[0] = "* So you can't find Starlo#  anywhere?";
            message[1] = "* That isn't like him at all!";
            message[2] = "* I was hoping he was#  here, hiding in his room#  or something.\t";
            message[3] = "* Now... I have no idea.";
            message[4] = "* Maybe he ran away? His empire#  did just crumble beneath him.";
            message[5] = "* Where though? The path he took#  only leads to the Steamworks#  gate.";
            message[6] = "* Do you think he... jumped the#  fence?";
            message[7] = "* There's no way! He can't do#  that! There's nothin' out#  there!";
            message[8] = "* Was he ever one to stick to#  the rules though? He#  might've...";
            message[9] = "* It's okay, stay calm. We#  haven't exhausted our#  options yet.\t";
            message[10] = "* I'm sure he'll return#  soon. He's too much of#  a softy at heart.";
            message[11] = "* I hope you're right...";
            prt[2] = spr_portrait_ceroba_disapproving;
            prt[3] = spr_portrait_ceroba_disapproving;
            prt[9] = spr_portrait_ceroba_neutral;
            prt[10] = spr_portrait_ceroba_disapproving;
        }
        
        break;
    
    case 2:
        cutscene_wait(0.25);
        break;
    
    case 3:
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        cutscene_advance();
        break;
    
    case 4:
        cutscene_npc_walk(actor_ceroba, 100, actor_ceroba.y, 2, "x", "down");
        break;
    
    case 5:
        cutscene_wait(0.25);
        break;
    
    case 6:
        cutscene_npc_walk(obj_player_npc, 162, 162, 3, "y", "left");
        break;
    
    case 7:
        cutscene_npc_walk(actor_ceroba, 100, 200, 2, "y", "down");
        break;
    
    case 8:
        if (actor_ceroba.image_alpha > 0)
        {
            actor_ceroba.image_alpha -= 0.1;
        }
        else
        {
            instance_destroy(actor_ceroba);
            cutscene_advance();
        }
        
        break;
    
    case 9:
        instance_destroy(actor_ceroba);
        instance_destroy(obj_player_npc);
        cutscene_advance();
        break;
    
    case 10:
        global.dunes_flag[36] = 1;
        audio_sound_gain(obj_radio.current_song, 1, 500);
        cutscene_end();
        break;
}
