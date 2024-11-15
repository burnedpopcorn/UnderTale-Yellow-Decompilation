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
        if (global.last_action_selected == "Action 1 Message 0")
            message[0] = "Th.i>s is- my#f-f-favorite shoOw/";
        else if (global.last_action_selected == "Action 3 Message 0" || global.last_action_selected == "Action 3 Message 1")
            message[0] = "/NeEd s[ome#Maint/enan-ce . ,,";
        else
            message[0] = "T/Time to;?#Go on coMmercial#break. ... .";
        
        obj_tellyvis_body_a.tellyvis_face_next = 3787;
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 1 Message 0")
    {
        random_message = irandom_range(0, 1);
        
        switch (random_message)
        {
            case 0:
                message[0] = "What are you#staring at?";
                break;
            
            case 1:
                message[0] = "There's nothing#on yet!";
                break;
        }
        
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 1 Message 1")
    {
        random_message = irandom_range(0, 1);
        
        switch (random_message)
        {
            case 0:
                message[0] = "Oh! Check#this out!";
                break;
            
            case 1:
                message[0] = "Here comes the#best part!";
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
                message[0] = "Am... Am I#boring you?";
                obj_tellyvis_body_a.tellyvis_face_next = 3787;
                break;
            
            case 1:
                message[0] = "Hey, buddy!#I'm still here!";
                obj_tellyvis_body_a.tellyvis_face_next = 3787;
                break;
        }
        
        message_end = 0;
    }
    else if (global.last_action_selected_3 == "Action 3 Message 0")
    {
        random_message = irandom_range(0, 1);
        
        switch (random_message)
        {
            case 0:
                message[0] = "Just what#I needed!";
                break;
            
            case 1:
                message[0] = "Whoa, hey!#I'm picking#something up!";
                break;
        }
        
        obj_tellyvis_body_a.tellyvis_face_next = 2544;
        message_end = 0;
    }
    else if (global.last_action_selected_3 == "Action 3 Message 1")
    {
        random_message = irandom_range(0, 1);
        
        switch (random_message)
        {
            case 0:
                message[0] = "They're good#where they are!";
                break;
            
            case 1:
                message[0] = "Hey, don't ruin#my electrical#flow!";
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
        random_number = irandom_range(0, 3);
        
        if (random_number == 0)
        {
            message[0] = "Don't touch that#dial! Seriously,#I'll hurt you.";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "I live life in#glorious standard#definition!#Nothing better!";
            obj_tellyvis_body_a.tellyvis_face_next = 2544;
            message_end = 0;
        }
        else if (random_number == 2)
        {
            message[0] = "Never take#advice from#Vis. He's#a mouthful!";
            message_end = 0;
        }
        else if (random_number == 3)
        {
            message[0] = "Network TV? Yeah,#I do the work,#and they net#the profits!";
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
