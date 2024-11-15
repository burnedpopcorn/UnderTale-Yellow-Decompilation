if (instance_exists(obj_quote_battle_frostermit_a) && instance_exists(obj_quote_bubble_battle))
{
    if (obj_quote_battle_frostermit_a.can_talk == true)
    {
        if (can_talk_no_loop == false)
        {
            image_index = 1;
            can_talk_no_loop = true;
        }
        
        image_speed = global.text_speed * global.talk_speed_frostermit * obj_quote_battle_frostermit_a.hold;
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

x = obj_frostermit_body_a.x;
y = obj_frostermit_body_a.head_new_displacement_y;

with (obj_frostermit_head_shadow_a)
    event_user(0);
