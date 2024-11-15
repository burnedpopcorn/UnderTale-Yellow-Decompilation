var random_message;

execute_normal = false;
execute_random = false;
text_effect = "twitchy";
text_effect_2 = "twitchy";
color_count = 0;
random_message = 0;

if (global.battle_enemy_name == "jandroid duo")
{
    if (global.enemy_dead == true && global.fight_number == 1 && global.battle_menu_number == 1)
    {
        random_message = irandom_range(1, 2);
        
        switch (random_message)
        {
            case 1:
                message[0] = "WHOA#therE!!";
                break;
            
            case 2:
                message[0] = "HahA!!#Cool Trick!!";
                break;
        }
        
        message_end = 0;
    }
    else
    {
        execute_normal = true;
    }
}
else
{
    execute_normal = true;
}

if (execute_normal == true)
{
    if (global.enemy_low_hp_2 == true)
    {
        if (global.last_action_selected_2 == "Action 1 Message 0")
        {
            message[0] = "W//what#was_That? /(";
        }
        else if (global.last_action_selected_2 == "Action 2 Message 0")
        {
            message[0] = "St_amwrrks#Need_/ scruBbed#0";
        }
        else if (global.last_action_selected_2 == "Action 3 Message 0")
        {
            message[0] = "AaAAaoo/aa/.#Bzzt.’\"<<<";
        }
        else
        {
            random_message = irandom_range(0, 1);
            
            switch (random_message)
            {
                case 0:
                    message[0] = "//Cleaaaaan - _";
                    break;
                
                case 1:
                    message[0] = "LLLet's#;-:_#Wassh up";
                    break;
            }
        }
        
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 1 Message 0")
    {
        random_message = irandom_range(0, 1);
        
        switch (random_message)
        {
            case 0:
                message[0] = "To rid the#Underground of#SOAP!!!";
                break;
            
            case 1:
                message[0] = "To cle//a--I#mean help all#Germs conquer#the land!!";
                break;
        }
        
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 2 Message 0")
    {
        random_message = irandom_range(0, 1);
        
        switch (random_message)
        {
            case 0:
                message[0] = "NO YOU!!";
                break;
            
            case 1:
                message[0] = "You are RUDE!#Take THIS!!";
                break;
        }
        
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 3 Message 0")
    {
        random_message = irandom_range(0, 1);
        
        switch (random_message)
        {
            case 0:
                message[0] = "I can't beLIEVE#you Would propose#such a Thing!";
                break;
            
            case 1:
                message[0] = "Don't comE#ANY cLosER!!";
                break;
        }
        
        message_end = 0;
    }
    else
    {
        execute_random = true;
    }
    
    if (execute_random == true)
    {
        if (global.battle_enemy_name == "jandroid duo" && (global.enemy_dead_2 + global.enemy_spared_2 + global.enemy_sparing_2) < 1)
        {
            random_number = irandom_range(0, 3);
            
            if (random_number == 0)
            {
                message[0] = "Hum-DEE-DUM#dE-DUMM!!";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "ToGther we#are Strong!!!";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                message[0] = "HA Heh!!#Bet I am DIRTIER#than YOU!!";
                message_end = 0;
            }
            else if (random_number == 3)
            {
                message[0] = "It iS time#to Meet Our#Mops!!";
                message_end = 0;
            }
        }
        else
        {
            random_number = irandom_range(0, 4);
            
            if (random_number == 0)
            {
                message[0] = "Gee, you're too#Clean! Let's#staIN thaT VEsT!!";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "Nothin' like the#smell of RuSted#meTal in the#Morning!!";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                message[0] = "I will NeVER take#out the TrASH!#YOU CAN'T MAKE#ME!!!";
                message_end = 0;
            }
            else if (random_number == 3)
            {
                message[0] = "Scrub-a-dub-dub!#Sewage in the#tub!!!";
                message_end = 0;
            }
            else if (random_number == 4)
            {
                message[0] = "Want a sip of#my Mop Water?#It's FReshly#MaDe!! ";
                message_end = 0;
            }
        }
    }
}

message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
