if (live_call())
    return global.live_result;

if (sprite_index == spr_flowey_enter_plain || sprite_index == spr_evil_flowey_dies_10)
    exit;

if (instance_exists(obj_quote_battle_martlet_genocide_final_2_outro) && instance_exists(obj_quote_bubble_battle))
{
    if (obj_quote_battle_martlet_genocide_final_2_outro.can_talk == true)
    {
        if (can_talk_no_loop == false)
        {
            image_index = 1;
            can_talk_no_loop = true;
        }
        
        image_speed = global.text_speed * global.talk_speed_flowey * obj_quote_battle_martlet_genocide_final_2_outro.hold;
    }
    else
    {
        can_talk_no_loop = false;
        image_speed = 0;
        image_index = 0;
    }
}
else
{
    can_talk_no_loop = false;
    image_speed = 0;
    image_index = 0;
}
