if (live_call())
    return global.live_result;

if (instance_exists(obj_dialogue) || instance_exists(obj_dialogue_battle) || instance_exists(obj_quote_bubble_battle))
{
    keyboard_key_release(ord("Z"));
    keyboard_key_press(ord("Z"));
}
