if (live_call())
    return global.live_result;

sprite_set_offset(spr_martlet_attack_talon_giant, 58, 0);

switch (scene)
{
    case 0:
        if (image_alpha < 1)
            image_alpha += 0.15;
        
        vspeed -= 0.15;
        cutscene_wait(0.4);
        break;
    
    case 1:
        if (vspeed < vspeed_max)
            vspeed = lerp(vspeed, vspeed_max + 0.1, 0.15);
        else
            vspeed = vspeed_max;
        
        break;
}

if (y > (battle_box.bbox_bottom - 140))
{
    vspeed = lerp(vspeed, 0, 0.15);
    image_alpha -= 0.1;
    
    if (image_alpha <= 0)
        vspeed = 0;
}
