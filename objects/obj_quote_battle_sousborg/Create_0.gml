execute_normal = true;
execute_random = false;
text_effect = "twitchy";
text_effect_2 = "twitchy";
color_count = 0;
random_message = 0;

if (execute_normal == true)
{
    if (global.enemy_low_hp == true)
    {
        random_message = irandom_range(0, 1);
        
        switch (random_message)
        {
            case 0:
                message[0] = "D../inner _:wiLl#be <r-Ready .>#Soon.";
                break;
            
            case 1:
                message[0] = "Sw/>.eet _or#SAVory?\t";
                break;
        }
        
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 1 Message 0")
    {
        message[0] = "Ah yes! Just a#light tap on ze#edge!";
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 2 Message 0")
    {
        random_message = irandom_range(0, 1);
        
        switch (random_message)
        {
            case 0:
                message[0] = "Underground?#Undercooked!#What ez ze issue?";
                message_end = 0;
                break;
            
            case 1:
                message[0] = "Quelle#impolitesse!";
                message_end = 0;
                break;
        }
    }
    else if (global.last_action_selected == "Action 1 Message 1")
    {
        random_message = irandom_range(0, 1);
        
        switch (random_message)
        {
            case 0:
                message[0] = "Water? Pah!#I cannot touch such#a zing!";
                message_end = 0;
                break;
            
            case 1:
                message[0] = "No! Ze egg ez#already out of#its casing!";
                message_end = 0;
                break;
        }
    }
    else if (global.last_action_selected_2 == "Action 2 Message 1")
    {
        message[0] = "Oui! Turn up#ze heat!";
        message_end = 0;
    }
    else if (global.last_action_selected_3 == "Action 3 Message 0")
    {
        random_message = irandom_range(0, 1);
        
        switch (random_message)
        {
            case 0:
                message[0] = "What ez going on#inside your tiny#head? Non!";
                message_end = 0;
                break;
            
            case 1:
                message[0] = "We are not making#pie! Get it#togezer!";
                message_end = 0;
                break;
        }
    }
    else if (global.last_action_selected == "Action 1 Message 2")
    {
        random_message = irandom_range(0, 1);
        
        switch (random_message)
        {
            case 0:
                message[0] = "Ze meal ez not#even done and#you want#leftovers?";
                message_end = 0;
                break;
            
            case 1:
                message[0] = "Hopeless!#Unprofessional!";
                message_end = 0;
                break;
        }
    }
    else if (global.last_action_selected_2 == "Action 2 Message 2")
    {
        random_message = irandom_range(0, 1);
        
        switch (random_message)
        {
            case 0:
                message[0] = "It accomplished#giving me joy...#but I cannot eat#joy!";
                message_end = 0;
                break;
            
            case 1:
                message[0] = "Ze egg is not#alive! Well...#not anymore :/";
                message_end = 0;
                break;
        }
    }
    else if (global.last_action_selected_3 == "Action 3 Message 1")
    {
        message[0] = "Of course!#I must sow ze#seeds of flavour!";
        message_end = 0;
    }
    else
    {
        execute_random = true;
    }
    
    if (execute_random == true)
    {
        random_number = irandom_range(0, 4);
        
        if (random_number == 0)
        {
            message[0] = "If you can't#stand ze heat...#good!";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "Natural#ingredients!#Never#substitute!";
            message_end = 0;
        }
        else if (random_number == 2)
        {
            message[0] = "A bit of zis...#a bit of zat...";
            message_end = 0;
        }
        else if (random_number == 3)
        {
            message[0] = "C'est croquant,#c'est fondant...";
            message_end = 0;
        }
        else if (random_number == 4)
        {
            message[0] = "Réjouis-toi!#I am only going#to bring you to a#light boil!";
            message_end = 0;
        }
        else if (random_number == 5)
        {
            message[0] = "Longue vie au#roi, courte vie#à l'humain!";
            message_end = 0;
        }
        else if (random_number == 6)
        {
            message[0] = "Your complexion...#un poulet cru.#Some food will#help!";
            message_end = 0;
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
