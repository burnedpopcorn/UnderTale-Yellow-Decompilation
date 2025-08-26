event_inherited();

if (interact == true)
    interact_hold = true;

if (interact_hold == true)
{
    is_talking = 1;
    
    if (scene == 0)
    {
        scr_cutscene_start();
        scr_text();
        
        with (msg)
        {
            if (other.npc_flag == 0)
            {
                ch_msg = 4;
                ch[1] = "Sure";
                ch[2] = "Nope";
                message[0] = "* Greetings.";
                message[1] = "* May I interest you in a game of#  Six-Shooter?";
                message[2] = "* It is a simple card game of the#  matching variety.";
                message[3] = "* It costs 3G to play with a#  potential of profit.";
                message[4] = "* Intrigued?";
                
                if (outcome == 1)
                {
                    if (global.player_gold < 3)
                    {
                        instance_destroy();
                        other.scene = 4;
                        exit;
                    }
                    
                    message[5] = "* I will explain its rules so#  listen carefully.";
                }
                
                if (outcome == 2)
                {
                    message[5] = "* Very well.";
                    other.interact_hold = false;
                    global.cutscene = false;
                }
                
                if (!global.dialogue_open)
                {
                    other.npc_flag = 1;
                    other.scene = 1;
                }
            }
            else if (other.npc_flag == 1)
            {
                ch_msg = 0;
                ch[1] = "Yes";
                ch[2] = "No thanks";
                message[0] = "* Are you interested in a round#  of Six-Shooter?";
                
                if (outcome == 1)
                {
                    message[1] = "* Then let us play.";
                    other.scene = 2;
                }
                
                if (outcome == 2)
                {
                    message[1] = "* Very well.";
                    other.interact_hold = false;
                    global.cutscene = false;
                }
                
                if (!global.dialogue_open)
                    other.scene = 2;
            }
        }
    }
    else if (scene == 1)
    {
        scr_text();
        
        with (msg)
        {
            ch_msg = 11;
            ch[1] = "Yes";
            ch[2] = "No";
            message[0] = "* A stack of 36 cards will be#  split into 20, then laid on the#  table separately.";
            message[1] = "* There are six card types, each#  with a different familiar face.";
            message[2] = "* You must match cards of the#  same face but only if they are#  touching.";
            message[3] = "* Once two are matched, they will#  be removed from the grid.";
            message[4] = "* Two more cards from the#  reserved 16-card-deck will#  replace them.";
            message[5] = "* Your goal is to empty the table#  by matching every card.";
            message[6] = "* If you win in under 45 seconds,#  you will be rewarded 25G.";
            message[7] = "* Under a minute, and you will be#  rewarded 15G.";
            message[8] = "* Any time after that will allow#  you to break even with 3G.";
            message[9] = "* If the deck is empty and there#  are no possible matches left...";
            message[10] = "* You will lose with no reward.";
            message[11] = "* Do you understand?";
            
            if (outcome == 1)
            {
                message[12] = "* Let us play.";
                other.scene = 2;
            }
            
            if (outcome == 2)
                message[12] = "* I shall repeat them in that case.";
        }
    }
    else if (scene == 2)
    {
        if (global.dialogue_open)
            exit;
        
        if (global.player_gold < 3)
        {
            other.scene = 4;
            exit;
        }
        else
        {
            global.player_gold -= 3;
        }
        
        if (instance_exists(obj_barn_dynamic_music))
            audio_sound_gain(mus_the_wild_east_barn, 0, 300);
        else
            audio_sound_gain(obj_radio.current_song, 0, 300);
        
        if (!instance_exists(obj_card_game_controller))
            instance_create(0, 0, obj_card_game_controller);
        
        scene++;
    }
    else if (scene == 3)
    {
        if (instance_exists(obj_card_game_controller))
            exit;
        
        scr_text();
        
        with (msg)
        {
            ch_msg = 1;
            ch[1] = "Sure";
            ch[2] = "Nope";
            
            switch (other.card_game_result)
            {
                case 0:
                    message[0] = "* A shame.";
                    break;
                
                case 1:
                    message[0] = "* An honest effort.";
                    break;
                
                case 2:
                    message[0] = "* Well done.";
                    break;
                
                case 3:
                    message[0] = "* A most admirable victory.";
                    break;
            }
            
            message[1] = "* Would you like to play again?";
            
            if (outcome == 1)
            {
                message[2] = "* Then let us play.";
                other.scene = 2;
            }
            
            if (outcome == 2)
            {
                message[2] = "* Very well.";
                other.interact_hold = false;
                other.scene = 0;
                global.cutscene = false;
                scr_audio_fade_out(mus_card_game, 500);
                
                if (instance_exists(obj_barn_dynamic_music))
                    audio_sound_gain(mus_the_wild_east_barn, 1, 800);
                else
                    audio_sound_gain(obj_radio.current_song, 1, 300);
            }
        }
    }
    else if (scene == 4)
    {
        scr_text();
        
        with (msg)
        {
            message[0] = "* I am afraid you lack sufficient#  funds.";
            message[1] = "* Farewell.";
        }
        
        if (audio_is_playing(mus_card_game))
        {
            scr_audio_fade_out(mus_card_game, 500);
            
            if (instance_exists(obj_barn_dynamic_music))
                audio_sound_gain(mus_the_wild_east_barn, 1, 800);
            else
                audio_sound_gain(obj_radio.current_song, 1, 800);
        }
        
        if (!global.dialogue_open)
        {
            scene = 0;
            interact_hold = false;
            global.cutscene = false;
        }
    }
}
