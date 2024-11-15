var text_parent;

text_parent = 285;

if (sprite_index != spr_martlet_final_intro_1 && sprite_index != spr_martlet_final_intro_3)
    exit;

if (instance_exists(text_parent) && text_parent.draw_enabled == true)
{
    if (instance_exists(obj_quote_bubble_battle))
    {
        if (text_parent.can_talk == true)
        {
            if (can_talk_no_loop == false)
            {
                image_index = 1;
                can_talk_no_loop = true;
            }
            
            image_speed = global.text_speed * global.talk_speed_martlet * text_parent.hold;
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
}
