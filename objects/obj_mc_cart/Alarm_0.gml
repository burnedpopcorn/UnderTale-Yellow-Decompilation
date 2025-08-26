if (live_call())
    return global.live_result;

switch (cart_color)
{
    case "yellow":
        side_sprite = 1149;
        forward_sprite = 1152;
        drain_sprite = 1153;
        break;
    
    case "green":
        side_sprite = 1156;
        forward_sprite = 1159;
        drain_sprite = 1161;
        break;
    
    case "blue":
        side_sprite = 1167;
        forward_sprite = 1169;
        drain_sprite = 1170;
        break;
}

sprite_index = side_sprite;
