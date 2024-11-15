image_alpha = global.image_alpha_enemy_attacking;

if (global.using_gamepad)
{
    switch (global.pause_key)
    {
        case "A":
            sprite_index = spr_autofire_toggle_a;
            break;
        
        case "B":
            sprite_index = spr_autofire_toggle_b;
            break;
        
        case "X":
            sprite_index = spr_autofire_toggle_x;
            break;
        
        case "Y":
            sprite_index = spr_autofire_toggle_y;
            break;
    }
}
else
{
    sprite_index = spr_autofire_toggle_c;
}
