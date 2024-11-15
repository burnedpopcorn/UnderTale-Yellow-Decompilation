var last_action_selected, enemy_hit, hit_count;

text_effect = "twitchy";
end_fight = false;
last_text_move_select = global.last_text_move_select;

if (last_text_move_select < 0)
{
    message[0] = "* Carefully aim at the#  dummy and take yer shot.";
    message[1] = "* Don't worry, it ain't#  alive or nothin'.";
    portrait[0] = 419;
    portrait[1] = 419;
    message_end = 1;
}
else
{
    last_action_selected = global.last_action_selected;
    
    if (last_action_selected == "Fight")
    {
        enemy_hit = global.enemy_hit;
        
        if (enemy_hit == true)
        {
            hit_count = global.hit_count;
            
            if (hit_count == 1)
            {
                message[0] = "* Mighty fine job!";
                message[1] = "* Give it another go!";
                portrait[0] = 417;
                portrait[1] = 417;
                message_end = 1;
            }
            else if (hit_count == 2)
            {
                message[0] = "* There ya go!";
                message[1] = "* One more!";
                portrait[0] = 417;
                portrait[1] = 417;
                message_end = 1;
            }
            else if (hit_count == 3)
            {
                message[0] = "* Nice shootin'!";
                message[1] = "* I'd say ye're a natural.";
                message[2] = "* I'm impressed, kid!";
                portrait[0] = 417;
                portrait[1] = 417;
                portrait[2] = 417;
                message_end = 2;
                end_fight = true;
            }
        }
        else
        {
            message[0] = "* It's alright, partner.";
            message[1] = "* Try again!";
            portrait[0] = 417;
            portrait[1] = 417;
            message_end = 1;
        }
    }
    else if (last_action_selected == "Action 1 Message 0")
    {
        message[0] = "* Uh... actually that's#  good!";
        message[1] = "* Intimidation of yer#  opponent can decrease#  their focus!";
        message[2] = "* Good thinkin', Clover!";
        portrait[0] = 417;
        portrait[1] = 417;
        portrait[2] = 417;
        message_end = 2;
    }
    else
    {
        message[0] = "* Let's practice yer#  shootin' now.";
        portrait[0] = 417;
        message_end = 0;
    }
}

message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
portrait_enabled = true;
portrait_image_speed = global.text_speed * global.talk_speed_starlo;
portrait_image_index = 0;
portrait_image_index_max = 1;
portrait_counter = 0;
can_talk_no_loop = false;
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
