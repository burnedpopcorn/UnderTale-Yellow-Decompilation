var battle_enemy_name = global.battle_enemy_name;
var game_mode = global.game_mode;

if (game_mode == "customs")
{
    if (battle_enemy_name == "craniex")
    {
        if (global.enemy_betrayed == true)
        {
            message[0] = "And after I thought#you were the perfect#student...";
            message[1] = "You turn around and#trick me.";
            message[2] = "You may not have#failed class...";
            message[3] = "...but you've failed#at life.";
            message_end = 3;
            dialogue_extend = false;
        }
        else
        {
            message[0] = "I thought that the#pen was mightier#than the sword...";
            message_end = 0;
            dialogue_extend = false;
        }
        
        talking_script = scr_talking_craniex;
    }
    else if (battle_enemy_name == "ms mettaton")
    {
        message[0] = "Like, totally not#cool!";
        message[1] = "Now Alphys will never#appreciate me...";
        message_end = 1;
        dialogue_extend = false;
        talking_script = scr_talking_mettaton;
    }
}
else if (game_mode == "yellow")
{
    if (battle_enemy_name == "dalv")
    {
        var enemy_mode = global.enemy_mode;
        
        switch (enemy_mode)
        {
            case 0:
                if (global.enemy_betrayed == true)
                {
                    message[0] = "Last time I#checked...";
                    message[1] = "Friends didn't#do that.";
                    message[2] = "...";
                    message[3] = "Looks like my#assumption was...#correct.";
                    message[4] = "This was all an#act to finish me#off.";
                    message[5] = "I should've kept#my guard up but...";
                    message[6] = "I guess in the#back of my mind#I was hoping...";
                    message[7] = "...Wishing, that#finally...";
                    message[8] = "Someone came along#to pull me out#of my sorrow.";
                    message[9] = "But... ";
                    message[10] = "Happiness has always#been wishful thinking#down here.";
                    message[11] = "...";
                    message[12] = "I would've been#a good friend.";
                    message[13] = "I would've.";
                    portrait[0] = 1777;
                    portrait[1] = 1784;
                    portrait[2] = 1778;
                    portrait[3] = 1777;
                    portrait[4] = 1782;
                    portrait[5] = 1782;
                    portrait[6] = 1777;
                    portrait[7] = 1784;
                    portrait[8] = 1786;
                    portrait[9] = 1781;
                    portrait[10] = 1777;
                    portrait[11] = 1784;
                    portrait[12] = 1778;
                    portrait[13] = 1777;
                    message_end = 13;
                    dialogue_extend = false;
                }
                else
                {
                    message[0] = "This isn't fair...";
                    message[1] = "I'm supposed to#get to say my#last goodbyes...";
                    message[2] = "But... I don't#have anyone to#say goodbye to...";
                    message[3] = "...";
                    message[4] = "It's hard to#admit, but I...";
                    message[5] = "...I guess I've#been lying to#myself for a#while.";
                    message[6] = "It did get#lonely down here.";
                    portrait[0] = 1784;
                    portrait[1] = 1784;
                    portrait[2] = 1782;
                    portrait[3] = 1786;
                    portrait[4] = 1781;
                    portrait[5] = 1786;
                    portrait[6] = 1764;
                    message_end = 6;
                    dialogue_extend = true;
                }
                
                break;
            
            case 1:
                message[0] = "This isn't fair...";
                message[1] = "I'm supposed to#get to say my#last goodbyes...";
                message[2] = "But... I don't#have anyone to#say goodbye to...";
                message[3] = "...";
                message[4] = "It's hard to#admit, but I...";
                message[5] = "...I guess I've#been lying to#myself for a#while.";
                message[6] = "It did get#lonely down here.";
                portrait[0] = 1784;
                portrait[1] = 1784;
                portrait[2] = 1782;
                portrait[3] = 1786;
                portrait[4] = 1781;
                portrait[5] = 1786;
                portrait[6] = 1764;
                message_end = 6;
                dialogue_extend = true;
                break;
            
            case 2:
                message[0] = "I...";
                message[1] = "I think I believe#you're real now.";
                message[2] = "Heh...";
                message[3] = "I have grown awfully#tired but...";
                message[4] = "If I sleep, then wake#up... this won't be#undone.";
                message[5] = "So maybe...";
                message[6] = "Maybe I...";
                message[7] = "...Just won't wake up.";
                portrait[0] = 1777;
                portrait[1] = 1784;
                portrait[2] = 1787;
                portrait[3] = 1787;
                portrait[4] = 1777;
                portrait[5] = 1782;
                portrait[6] = 1777;
                portrait[7] = 1778;
                message_end = 7;
                dialogue_extend = false;
                break;
        }
        
        talking_script = scr_talking_dalv;
    }
    else if (battle_enemy_name == "martlet genocide")
    {
        message[0] = "Oh! Ow! How are you#so strong?!";
        message[1] = "Why did I let my#guard down?...";
        message[2] = "I-I can't do this#alone!";
        message[3] = "I need to alert#the other Guards...";
        message[4] = "Please stay right#here!";
        portrait_head[0] = 3475;
        portrait_hand[0] = 2058;
        portrait_head[1] = 1610;
        portrait_hand[1] = 2058;
        portrait_head[2] = 3475;
        portrait_hand[2] = 2058;
        portrait_head[3] = 2087;
        portrait_hand[3] = 2058;
        portrait_head[4] = 2087;
        portrait_hand[4] = 2058;
        message_end = 5;
        dialogue_extend = false;
        talking_script = scr_talking_martlet;
    }
    else if (battle_enemy_name == "el bailador")
    {
        message[0] = "Huff... huff...";
        message[1] = "Oh...";
        message[2] = "I truly did not notice#you were fighting me#until this moment.";
        message[3] = "Perhaps... I upset#you?";
        message[4] = "I deeply apologize if#so...";
        message[5] = "...";
        message[6] = "I am beaten up pretty#badly, huh?";
        message[7] = "Well...";
        message[8] = "I suppose it is my#time to go.";
        message[9] = "This is quite sudden,#but...";
        message[10] = "At least I was able to#dance for the world#one last time.";
        message[11] = "I did have fun...";
        message[12] = "The power of dance is#a wonderful thing...";
        portrait_head[0] = 328;
        portrait_head[1] = 328;
        portrait_head[2] = 328;
        portrait_head[3] = 328;
        portrait_head[4] = 328;
        portrait_head[5] = 328;
        portrait_head[6] = 328;
        portrait_head[7] = 328;
        portrait_head[8] = 328;
        portrait_head[9] = 328;
        portrait_head[10] = 328;
        portrait_head[11] = 328;
        portrait_head[12] = 328;
        message_end = 12;
        dialogue_extend = false;
        talking_script = scr_talking_enemy;
    }
    else if (battle_enemy_name == "starlo")
    {
        message[0] = "* Ah...";
        message[1] = "* Guess I had this coming.";
        message[2] = "* If only I wore my safety#goggles, heh...";
        message[3] = "* ...";
        message[4] = "* I...";
        message[5] = "* I can't lie...";
        message[6] = "* I'm not ready...";
        message[7] = "* ...";
        message[8] = "* Let my parents know...";
        message[9] = "* ...I'll be away for a while.";
        message[10] = "* See you around, kid.";
        portrait_head[0] = 2124;
        portrait_head[1] = 2124;
        portrait_head[2] = 2124;
        portrait_head[3] = 2124;
        portrait_head[4] = 2125;
        portrait_head[5] = 2125;
        portrait_head[6] = 2125;
        portrait_head[7] = 2125;
        portrait_head[8] = 2125;
        portrait_head[9] = 2126;
        portrait_head[10] = 2126;
        message_end = 10;
        dialogue_extend = false;
        talking_script = scr_talking_enemy;
    }
}

message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
