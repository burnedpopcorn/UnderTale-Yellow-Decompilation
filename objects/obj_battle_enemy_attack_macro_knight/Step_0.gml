var soul, jump_chance, i, bullet;

if (live_call())
    return global.live_result;

soul = 2980;

switch (state)
{
    case "idle":
        sprite_index = spr_bigfrog_knight_idle;
        image_speed = 1;
        state_timer -= 1;
        
        if (state_timer <= 0)
        {
            state_switch("run");
            
            if (soul.y >= bbox_top)
            {
                if (irandom(3) == 1)
                    state_switch("attack");
            }
        }
        
        break;
    
    case "run":
        if (sprite_index != spr_bigfrog_knight_start_run && sprite_index != spr_bigfrog_knight_run)
        {
            sprite_index = spr_bigfrog_knight_start_run;
            image_index = 0;
            image_speed = 1;
            run_switch_count = irandom_range(1, 2);
        }
        
        hsp = lerp(hsp, hsp_max, 0.25);
        jump_chance = 5;
        
        if (run_switch_count <= 0 && abs(x - soul.x) < 60)
        {
            state_switch("jump");
            
            if (soul.y >= bbox_top)
            {
                if (irandom(2) == 1)
                    state_switch("attack");
            }
        }
        
        break;
    
    case "jump":
        if (sprite_index != spr_bigfrog_knight_air_slash)
        {
            sprite_index = spr_bigfrog_knight_air_slash;
            image_index = 0;
            image_speed = 1;
        }
        else if (image_index == 1 && floored == true)
        {
            floored = false;
            vsp = -8;
        }
        else if (image_index >= (image_number - 1))
        {
            image_index = image_number - 1;
            image_speed = 0;
            
            if (floored == true)
            {
                state_switch("idle");
                
                if (soul.y >= bbox_top)
                {
                    if (irandom(5) == 1)
                        state_switch("attack");
                }
            }
        }
        
        if (hsp_max > 0)
        {
            if (hsp > 0)
                hsp -= 0.3;
            else
                hsp = 0;
        }
        else if (hsp < 0)
        {
            hsp += 0.3;
        }
        else
        {
            hsp = 0;
        }
        
        break;
    
    case "attack":
        if (sprite_index != spr_bigfrog_knight_slash && sprite_index != spr_bigfrog_knight_slash_reset)
        {
            sprite_index = spr_bigfrog_knight_slash;
            image_index = 0;
            image_speed = 1;
            hsp = 7;
            hsp_max = abs(hsp_max);
            
            if (soul.x < x)
            {
                hsp = -7;
                hsp_max = -abs(hsp_max);
            }
        }
        else if (image_index >= (image_number - 1))
        {
            if (sprite_index != spr_bigfrog_knight_slash_reset)
            {
                sprite_index = spr_bigfrog_knight_slash_reset;
                image_index = 0;
                image_speed = 1;
            }
            else
            {
                state_switch("run");
            }
        }
        
        if (hsp_max > 0)
        {
            if (hsp > 0)
                hsp -= 0.15;
            else
                hsp = 0;
        }
        else if (hsp < 0)
        {
            hsp += 0.15;
        }
        else
        {
            hsp = 0;
        }
        
        break;
    
    case "cast":
        if (sprite_index != spr_bigfrog_knight_slash && sprite_index != spr_bigfrog_knight_slash_reset)
        {
            sprite_index = spr_bigfrog_knight_slash;
            image_index = 0;
            image_speed = 1;
            can_cast = true;
        }
        else if (image_index >= 1 && can_cast)
        {
            for (i = 0; i < 3; i++)
            {
                bullet = instance_create_depth(x, y, depth + 1, obj_battle_enemy_attack_macro_knight_bullet);
                
                if (hsp_max > 0)
                    bullet.direction = i * 30;
                else
                    bullet.direction = 180 - (i * 30);
                
                bullet.speed = 11;
            }
            
            can_cast = false;
        }
        else if (image_index >= (image_number - 1))
        {
            if (sprite_index != spr_bigfrog_knight_slash_reset)
            {
                sprite_index = spr_bigfrog_knight_slash_reset;
                image_index = 0;
                image_speed = 1;
            }
            else
            {
                state_switch("run");
            }
        }
        
        break;
    
    case "victory":
        hsp = 0;
        
        if (sprite_index != spr_bigfrog_knight_victory)
        {
            sprite_index = spr_bigfrog_knight_victory;
            image_index = 0;
            image_speed = 1;
        }
        else if (image_index >= (image_number - 1))
        {
            instance_destroy();
            instance_destroy(obj_battle_enemy_attack_macro_sword_frog_creator);
            exit;
        }
        
        break;
}

x += hsp;
vsp += grav;

if ((y + vsp) >= (battle_box.bbox_bottom - 4))
{
    while ((y + sign(vsp)) < (battle_box.bbox_bottom - 4))
        y += sign(vsp);
    
    vsp = 0;
    floored = true;
}

y += vsp;

function state_switch(argument0)
{
    state = argument0;
    state_timer = 15;
    
    if (attack_timer <= 0)
        state = "victory";
}

if ((x + (hsp * 3)) >= (battle_box.bbox_right - 4) || (x + (hsp * 3)) <= (battle_box.bbox_left + 4))
{
    hsp = 0;
    hsp_max *= -1;
    run_switch_count -= 1;
    
    if (state == "run" && irandom(3) == 1)
        state_switch("cast");
}

if (hsp_max > 0)
    image_xscale = -1;
else if (hsp_max < 0)
    image_xscale = 1;

attack_timer--;
