var x_check, y_check, colliding_cart, bumper;

if (live_call())
    return global.live_result;

while (place_meeting(x, y, obj_pl))
    obj_pl.y -= 1;

if (minecart_empty)
{
    if (audio_is_playing(minecart_sound))
        audio_stop_sound(minecart_sound);
    
    if (sprite_index == drain_sprite && image_index >= (image_number - 1))
        image_speed = 0;
    
    exit;
}

if (abs(minecart_vsp + minecart_hsp) == 0 && keyboard_multicheck_pressed(0) && scr_interact())
{
    minecart_base_speed = 2;
    minecart_start = true;
    minecart_sound = audio_play_sound(snd_rock_roll, 1, 1);
    
    if (minecart_direction == "down")
        minecart_vsp = 1;
    
    if (minecart_direction == "up")
        minecart_vsp = -1;
    
    if (minecart_direction == "right")
        minecart_hsp = 1;
    
    if (minecart_direction == "left")
        minecart_hsp = -1;
}

x_check = x;
y_check = y;

if (minecart_hsp > 0)
    x_check = bbox_left;

if (minecart_hsp < 0)
    x_check = bbox_right;

if (minecart_vsp > 0)
    y_check = bbox_top;

if (minecart_vsp < 0)
    y_check = bbox_bottom;

if (position_meeting(x_check, y_check, obj_tracks_parent) && track_id == -4)
{
    track_id = instance_position(x_check, y_check, obj_tracks_parent);
    show_debug_message(track_id.rotation);
    
    switch (track_id.rotation)
    {
        case "top-right":
            if (minecart_hsp == -1)
            {
                minecart_vsp = 1;
                minecart_hsp = 0;
            }
            else if (minecart_vsp == -1)
            {
                minecart_vsp = 0;
                minecart_hsp = 1;
            }
            else
            {
                minecart_vsp *= -1;
                minecart_hsp *= -1;
            }
            
            break;
        
        case "top-left":
            if (minecart_hsp == 1)
            {
                minecart_vsp = 1;
                minecart_hsp = 0;
            }
            else if (minecart_vsp == -1)
            {
                minecart_vsp = 0;
                minecart_hsp = -1;
            }
            else
            {
                minecart_vsp *= -1;
                minecart_hsp *= -1;
            }
            
            break;
        
        case "bottom-right":
            if (minecart_hsp == -1)
            {
                minecart_vsp = -1;
                minecart_hsp = 0;
            }
            else if (minecart_vsp == 1)
            {
                minecart_vsp = 0;
                minecart_hsp = 1;
            }
            else
            {
                minecart_vsp *= -1;
                minecart_hsp *= -1;
            }
            
            break;
        
        case "bottom-left":
            if (minecart_hsp == 1)
            {
                minecart_vsp = -1;
                minecart_hsp = 0;
            }
            else if (minecart_vsp == 1)
            {
                minecart_vsp = 0;
                minecart_hsp = -1;
            }
            else
            {
                minecart_vsp *= -1;
                minecart_hsp *= -1;
            }
            
            break;
        
        case "horizontal":
            if (abs(minecart_vsp) >= 1)
            {
                minecart_vsp *= -1;
                minecart_hsp *= -1;
            }
            
            break;
        
        case "vertical":
            if (abs(minecart_hsp) >= 1)
            {
                minecart_vsp *= -1;
                minecart_hsp *= -1;
            }
            
            break;
    }
    
    if (abs(minecart_hsp) > 0)
        y = track_id.y + 6;
    
    if (abs(minecart_vsp) > 0)
        x = track_id.x + 10;
}

if (position_meeting(x_check, y_check, obj_mc_rail_barrier) && track_id == -4)
{
    track_id = instance_position(x_check, y_check, obj_mc_rail_barrier);
    minecart_vsp *= -1;
    minecart_hsp *= -1;
}

colliding_cart = instance_position(x_check + (sign(minecart_hsp) * sprite_width), y_check + (sign(minecart_vsp) * sprite_height), obj_mc_cart);

if (colliding_cart != id && colliding_cart != -4 && track_id == -4)
{
    track_id = colliding_cart;
    minecart_vsp *= -1;
    minecart_hsp *= -1;
}

if (track_id != -4 && !position_meeting(x_check, y_check, track_id))
    track_id = -4;

if (position_meeting(x_check, y_check, obj_mc_rail_bumper) && !minecart_start)
{
    minecart_start = true;
    minecart_hsp = 0;
    minecart_vsp = 0;
    audio_play_sound(snd_rock_break, 1, 0);
    bumper = instance_position(x_check, y_check, obj_mc_rail_bumper);
    minecart_direction = bumper.minecart_direction;
}

if (position_meeting(x_check, y_check, obj_mc_pressure_pad) && !minecart_start)
{
    bumper = instance_position(x_check, y_check, obj_mc_pressure_pad);
    
    if (bumper.cart_color == cart_color)
    {
        minecart_start = true;
        minecart_vsp = 0;
        minecart_hsp = 0;
        minecart_direction = "up";
        audio_play_sound(snd_rock_break, 1, 0);
        x = bumper.x;
        y = bumper.y - 6;
        bumper.image_speed = 0.2;
        minecart_empty = true;
        alarm[1] = 20;
        audio_play_sound(snd_minecart_puzzle_drain, 1, 0);
    }
    else if (track_id == -4)
    {
        track_id = bumper;
        audio_play_sound(snd_fail, 1, 0);
        minecart_vsp *= -1;
        minecart_hsp *= -1;
    }
}

if (!place_meeting(x_check, y_check, obj_mc_rail_bumper) && !place_meeting(x_check, y_check, obj_mc_pressure_pad))
    minecart_start = false;

if (abs(minecart_hsp) > 0)
    sprite_index = side_sprite;

if (abs(minecart_vsp) > 0)
    sprite_index = forward_sprite;

if (abs(minecart_hsp) > 0 || abs(minecart_vsp) > 0)
{
    image_speed = 0.2;
}
else
{
    image_speed = 0;
    image_index = 0;
    
    if (audio_is_playing(minecart_sound))
        audio_stop_sound(minecart_sound);
}

x += (minecart_hsp * minecart_base_speed);
y += (minecart_vsp * minecart_base_speed);
depth = -y;
