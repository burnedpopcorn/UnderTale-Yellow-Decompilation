if (instance_exists(obj_quote_battle_rorrim_a) && instance_exists(obj_quote_bubble_battle))
{
    if (obj_quote_battle_rorrim_a.can_talk == true)
    {
        if (can_talk_no_loop == false)
        {
            image_index = 1;
            can_talk_no_loop = true;
        }
        
        image_speed = global.text_speed * global.talk_speed_rorrim * obj_quote_battle_rorrim_a.hold;
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
