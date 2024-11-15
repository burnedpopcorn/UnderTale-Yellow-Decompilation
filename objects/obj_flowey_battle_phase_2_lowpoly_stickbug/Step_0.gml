event_inherited();

if (live_call())
    return global.live_result;

if (image_alpha < 1)
    image_alpha += 0.2;

if (hp_self <= 0)
{
    instance_create(x, y, obj_flowey_battle_phase_2_lowpoly_stickbug_dead);
    instance_destroy();
}

if (collision_rectangle(bbox_left, y + 20, bbox_right, y + 60, obj_heart_battle_fighting_parent, false, false) && attack_noloop == false)
{
    vspeed = 0;
    sprite_index = spr_battle_flowey_lowpoly_stickbug_swipe;
    image_index = 0;
    attack_noloop = true;
}

if (sprite_index == spr_battle_flowey_lowpoly_stickbug_swipe)
{
    switch (charge_state)
    {
        case 0:
            vspeed = -0.5;
            
            if (image_index >= 15)
                charge_state++;
            
            break;
        
        case 1:
            vspeed += 1;
            
            if (vspeed > 6)
                vspeed = 6;
            
            if (image_index >= 28)
                charge_state++;
            
            break;
        
        case 2:
            vspeed = lerp(vspeed, 0, 0.2);
            
            if (image_index >= (image_number - 1))
                sprite_index = spr_battle_flowey_lowpoly_stickbug_crawl;
            
            break;
    }
}
else
{
    vspeed = lerp(vspeed, 2, 0.1);
}

if (y > 700)
    instance_destroy();
