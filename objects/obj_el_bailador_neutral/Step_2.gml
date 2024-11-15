var text_parent;

if (instance_exists(obj_quote_defeat_parent))
    text_parent = 2961;
else
    text_parent = 2532;

if (instance_exists(text_parent) && instance_exists(obj_quote_bubble_battle))
{
    if (text_parent.can_talk == true)
    {
        if (can_talk_no_loop == false)
        {
            image_index = 1;
            can_talk_no_loop = true;
        }
        
        image_speed = global.text_speed * global.talk_speed_el_bailador * text_parent.hold;
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
