var rail_switch = false;

with (obj_mc_button)
{
    if (track_number == other.track_number && swit == true)
        rail_switch = true;
}

if (rail_switch == true)
{
    if (rotation == "horizontal")
    {
        sprite_index = spr_mc_rail_vertical;
        rotation = "vertical";
    }
    else if (rotation == "vertical")
    {
        sprite_index = spr_mc_rail_horizontal;
        rotation = "horizontal";
    }
}
