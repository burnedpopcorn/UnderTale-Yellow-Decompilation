if (vsp < 3)
    vsp += 0.2;

x += hsp;
y += vsp;

if ((y + vsp) > y_start)
{
    y = y_start;
    
    if (end_player_alpha)
    {
        obj_pl.image_alpha = 1;
        
        if (global.party_member == -4)
            scr_cutscene_end();
        else
            instance_create(x, __view_get(e__VW.YView, obj_quote_battle_ceroba_outro_4) - 30, obj_martlet_fly_in_cart);
    }
    
    instance_destroy();
}

obj_pl.x = x;
obj_pl.y = y;
image_xscale = sign(hsp);
