var rail_switch = false;

with (obj_mc_button)
{
    if (track_number == other.track_number && swit == true)
        rail_switch = true;
}

if (rail_switch == true)
{
    if (rotation == "top-left")
        rotation = "top-right";
    else if (rotation == "top-right")
        rotation = "bottom-right";
    else if (rotation == "bottom-right")
        rotation = "bottom-left";
    else if (rotation == "bottom-left")
        rotation = "top-left";
}

switch (rotation)
{
    case "top-right":
        sprite_index = spr_mc_corner_top_left;
        break;
    
    case "top-left":
        sprite_index = spr_mc_corner_top_right;
        break;
    
    case "bottom-right":
        sprite_index = spr_mc_corner_bottom_left;
        break;
    
    case "bottom-left":
        sprite_index = spr_mc_corner_bottom_right;
        break;
}
