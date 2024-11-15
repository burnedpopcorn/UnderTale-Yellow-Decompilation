var action, new_sprite;

if (instance_exists(obj_dialogue_shop_parent))
    action = obj_dialogue_shop_parent.action[obj_dialogue_shop_parent.message_current];
else
    action = "Nothing";

if (action != "Override")
{
    if (instance_exists(obj_dialogue_shop_parent) && variable_instance_exists(2078, "portrait_alt") && array_length(obj_dialogue_shop_parent.portrait_alt) >= obj_dialogue_shop_parent.message_current)
    {
        if (sprite_index != obj_dialogue_shop_parent.portrait_alt[obj_dialogue_shop_parent.message_current])
            sprite_index = obj_dialogue_shop_parent.portrait_alt[obj_dialogue_shop_parent.message_current];
    }
    else
    {
        sprite_index = full_sprite;
    }
    
    if (instance_exists(obj_dialogue_shop_parent) && obj_dialogue_shop_parent.point[obj_dialogue_shop_parent.message_current] == 1 && sprite_index == spr_hotel_shop_puppet_talk)
    {
        if (obj_dialogue_shop_parent.can_talk == true && obj_dialogue_shop_parent.characters > string_length(obj_dialogue_shop_parent.message[obj_dialogue_shop_parent.message_current]))
        {
            new_sprite = shopkeeper_sprite[clamp(obj_dialogue_shop_parent.message_current, 0, array_length(shopkeeper_sprite) - 1)];
            
            if (new_sprite == spr_collisionbox)
                new_sprite = shopkeeper_sprite[0];
            
            obj_hotel_shop_head.sprite_index = new_sprite;
            image_speed = 1;
        }
        else
        {
            image_speed = 0;
            image_index = 0;
            obj_hotel_shop_head.sprite_index = shopkeeper_sprite_default;
        }
    }
    else
    {
        can_talk_no_loop = false;
        image_speed = 0;
        image_index = 0;
    }
}
