if (live_call())
    return global.live_result;

if (!instance_exists(obj_dalv_body))
{
    instance_destroy();
    exit;
}

if (obj_dalv_body.animating == true)
{
    x = obj_dalv_body.x + 2;
    y = obj_dalv_body.head_displacement_y;
}
else
{
    x = starting_point_x;
    y = starting_point_y;
}

var text_parent;

if (instance_exists(obj_quote_defeat_parent))
    text_parent = 2962;
else
    text_parent = 2460;

if (instance_exists(text_parent) && instance_exists(obj_quote_bubble_battle))
{
    if (sprite_index != text_parent.portrait[text_parent.message_current])
        sprite_index = text_parent.portrait[text_parent.message_current];
}
else
{
    sprite_index = head_sprite;
}

if (instance_exists(text_parent) && instance_exists(obj_quote_bubble_battle))
{
    if (text_parent.can_talk == true)
    {
        if (can_talk_no_loop == false)
        {
            image_index = 1;
            can_talk_no_loop = true;
        }
        
        image_speed = global.text_speed * global.talk_speed_dalv * text_parent.hold;
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

with (obj_dalv_head_shadow)
    event_user(0);
