if (live_call())
    return global.live_result;

if (enemy_dead == false && enemy_spared == false && can_draw_ghost == true)
    image_alpha = global.image_alpha_enemy_attacking;

if (base_sprite != 1934)
{
    image_xscale = 2;
    image_yscale = 2;
    can_draw_ghost = false;
}
else if (global.image_alpha_enemy_attacking_immunity == false)
{
    can_draw_ghost = true;
    image_xscale = 1;
    image_yscale = 1;
}

if (can_draw_ghost)
{
    if (irandom(glitch_chance) == 1)
        instance_create_depth(0, 0, -99999999, obj_flowey_battle_screen_glitch_fight);
    
    if (alt_alpha_new != 0)
    {
        alt_alpha = lerp(alt_alpha, alt_alpha_new, 0.2);
        
        if (abs(alt_alpha - alt_alpha_new) < 0.01)
            alt_alpha_new = 0;
    }
    else
    {
        alt_alpha = lerp(alt_alpha, 0.05, 0.1);
    }
    
    if (base_alpha_new != 0)
    {
        base_alpha = lerp(base_alpha, base_alpha_new, 0.2);
        
        if (abs(base_alpha - base_alpha_new) < 0.01)
            base_alpha_new = 0;
    }
    else
    {
        base_alpha = lerp(base_alpha, 1, 0.1);
    }
    
    if (alt_alpha_timer > 0)
    {
        alt_alpha_timer -= 1;
    }
    else
    {
        base_alpha_new = 0.7;
        alt_alpha_new = 0.25;
        alt_alpha_timer = random_range(30, 120);
    }
}

if (keyboard_check_pressed(ord("O")))
{
    if (current_attack < 10)
        current_attack += 1;
    else
        current_attack = 1;
    
    global.enemy_attack = "Flowey Attack " + string(current_attack);
}

if (keyboard_check_pressed(ord("P")))
{
    with (obj_dialogue_box_battle_transformation_any)
        event_user(0);
    
    instance_destroy(obj_dialogue_box_battle_transformation_any_out);
}
