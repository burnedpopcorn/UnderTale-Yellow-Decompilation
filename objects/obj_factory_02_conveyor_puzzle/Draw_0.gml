var check_confirm, cancel_confirm, blue_button, red_button;

if (live_call())
    return global.live_result;

draw_set_alpha(hint_button_alpha);
check_confirm = keyboard_multicheck(0);
cancel_confirm = keyboard_multicheck(1);
draw_sprite(spr_conveyor_puzzle_hint_blue_base, check_confirm, 254, 645);
draw_sprite(spr_conveyor_puzzle_hint_red_base, cancel_confirm, 326, 645);
blue_button = 0;
red_button = 9;

switch (global.action_key)
{
    case "Z":
        blue_button = 0;
        break;
    
    case "X":
        blue_button = 8;
        break;
    
    case "A":
        blue_button = 2;
        break;
    
    case "B":
        blue_button = 4;
        break;
    
    case "Y":
        blue_button = 6;
        break;
}

switch (global.cancel_key)
{
    case "X":
        red_button = 8;
        break;
    
    case "A":
        red_button = 2;
        break;
    
    case "B":
        red_button = 4;
        break;
    
    case "Y":
        red_button = 6;
        break;
}

draw_sprite(spr_conveyor_puzzle_hint_letters, blue_button + check_confirm, 254, 645);
draw_sprite(spr_conveyor_puzzle_hint_letters, red_button + cancel_confirm, 326, 645);
draw_set_alpha(1);
