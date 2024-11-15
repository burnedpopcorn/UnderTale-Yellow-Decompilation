scr_get_input();
hsp = sign(global.right_key - (global.left_key * 2)) * plspd;
vsp = sign(global.down_key - (global.up_key * 2)) * plspd;

if (!place_free(x + hsp, y))
{
    while (place_free(x + sign(hsp), y))
        x += sign(hsp);
    
    hsp = 0;
}

if (!place_free(x, y + vsp))
{
    while (place_free(x, y + sign(vsp)))
        y += sign(vsp);
    
    vsp = 0;
}

x += hsp;
y += vsp;

if (y > 240)
{
    obj_cconfig.control_test = false;
    instance_destroy();
}
