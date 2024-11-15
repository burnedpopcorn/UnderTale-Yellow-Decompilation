if (live_call())
    return global.live_result;

draw_set_alpha(hint_button_alpha);
draw_sprite(spr_conveyor_puzzle_hint_left, global.left_key, 330, 170);
draw_sprite(spr_conveyor_puzzle_hint_right, global.right_key, 370, 170);
draw_set_alpha(1);
