if (live_call())
    return global.live_result;

switch (cart_color)
{
    case "yellow":
        side_sprite = spr_mc_yellow_side;
        forward_sprite = spr_mc_yellow_forward;
        drain_sprite = spr_mc_yellow_drain;
        break;
    
    case "green":
        side_sprite = spr_mc_green_side;
        forward_sprite = spr_mc_green_forward;
        drain_sprite = spr_mc_green_drain;
        break;
    
    case "blue":
        side_sprite = spr_mc_blue_side;
        forward_sprite = spr_mc_blue_forward;
        drain_sprite = spr_mc_blue_drain;
        break;
}

sprite_index = side_sprite;
