var current_song, fav_song;

event_inherited();
current_song = obj_rodney_snowdin_14b_overworld_yellow.song;
fav_song = 145;
message_repeating[0] = "* (You got the band merch pin.)";
message_repeating[1] = "* That one's super rare, so don't#  you lose it!";
message_repeating[2] = "* Only was sold at the concert#  they did at the dump that one#  time!";
message_repeating[3] = "* Man, that was so grungy...";

if (interact == 1 && waiter == 0)
{
    scr_text();
    is_talking = 1;
    waiter = 1;
}

if (waiter == 1 && !instance_exists(obj_dialogue))
    waiter = 0;

if (waiter == 1)
{
    with (msg)
    {
        portrait = false;
        
        switch (other.npc_flag)
        {
            case 0:
                message[0] = "* Are you enjoying the tunes as#  much as I am?";
                message[1] = "* Actually. Don't answer that.#  You're not.";
                message[2] = "* I used to be one of those#  superfans you hear about.";
                message[3] = "* Followed the band around from#  place to place,";
                message[4] = "* Learned all the aliases they#  used in hotels,";
                message[5] = "* Watched them buy their favorite#  brands of cereal.";
                message[6] = "* I'm reformed now though.";
                message[7] = "* Now I'm content to sit and#  listen.";
                
                if (!global.dialogue_open)
                    other.npc_flag += 1;
                
                break;
            
            case 1:
                message[0] = "* Nothing could beat this...";
                message[1] = "* Actually. That's a lie.";
                message[2] = "* If they were playing my#  favorite song,";
                message[3] = "* That would beat this easy.";
                message[4] = "* Mind asking them to play it for#  me?";
                message[5] = "* I'll make it worth your while.";
                
                if (!global.dialogue_open)
                    other.npc_flag += 1;
                
                break;
            
            case 2:
                if (current_song != fav_song)
                {
                    message[0] = "* Hmm, nice tune.";
                    message[1] = "* Boy, do I remember the first#  time I heard this song.";
                    message[2] = "* Not my favorite though.";
                }
                else
                {
                    message[0] = "* My gosh, I haven't heard this#  song in forever!";
                    message[1] = "* Definitely my favorite! Hands#  down!";
                    message[2] = "* Thank you so so so much!";
                    message[3] = "* What can I give you...";
                    message[4] = "* I know! Here! You can put it on#  your hat!";
                    
                    if (other.item_got == false && scr_item("Band Merch Pin"))
                    {
                        message[5] = message_repeating[0];
                        message[6] = message_repeating[1];
                        message[7] = message_repeating[2];
                        message[8] = message_repeating[3];
                        other.item_got = true;
                    }
                    else if (other.item_got == true)
                    {
                        if (message_current == 5 && other.is_talking == true)
                        {
                            other.is_talking = false;
                            audio_play_sound(snd_success, 20, 0);
                        }
                        else if (message_current > 5)
                        {
                            other.is_talking = true;
                        }
                        
                        if (!global.dialogue_open)
                            other.npc_flag = 4;
                    }
                    else
                    {
                        message[5] = "  (Inventory Full)";
                        message[6] = "* Wait... are you telling me you#  have too much stuff to take#  this?";
                        message[7] = "* You think the boring stuff you#  have can possibly compare to#  this?!";
                        message[8] = "* This is a concert exclusive#  piece of memorabilia!";
                        message[9] = "* Come back when you can#  appreciate that, okay bozo?";
                        
                        if (message_current == 5 && other.is_talking == true)
                        {
                            audio_play_sound(snd_fail, 20, 0);
                            other.waiter = 0;
                            other.npc_flag = 3;
                        }
                    }
                }
                
                break;
            
            case 3:
                if (other.item_got == false && scr_item("Band Merch Pin"))
                {
                    message[0] = "* Oh, have you come to your#  senses?";
                    message[1] = "* Fine, the pin is yours.";
                    message[2] = "* You better be thankful for that,#  you got that?";
                    message[3] = message_repeating[0];
                    message[4] = message_repeating[1];
                    message[5] = message_repeating[2];
                    message[6] = message_repeating[3];
                    other.item_got = true;
                }
                else if (other.item_got == true)
                {
                    if (message_current == 3 && other.is_talking == true)
                    {
                        other.is_talking = false;
                        audio_play_sound(snd_success, 20, 0);
                    }
                    else if (message_current > 3)
                    {
                        other.is_talking = true;
                    }
                    
                    if (!global.dialogue_open)
                        other.npc_flag = 4;
                }
                else
                {
                    message[0] = "* Still no space?";
                    message[1] = "* This is a concert exclusive#  piece of memorabilia!";
                    message[2] = "* Come back when you can#  appreciate that, okay bozo?";
                }
                
                break;
            
            case 4:
                message[0] = "* This day is the best.";
                message[1] = "* I wish I could go to their next#  concert too...";
                message[2] = "* Actually. No. That's how you#  get addicted.";
                message[3] = "* Guess I'll just have to be#  content here.";
                break;
        }
    }
}
