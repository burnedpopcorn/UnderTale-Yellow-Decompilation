junk_vsp += junk_grav;
x += lengthdir_x(junk_hsp, junk_direction);
y += junk_vsp;
image_angle += 5;

if (y > battle_box_bottom)
    fade_out = true;

if (image_alpha > 0 && fade_out == true)
{
    image_alpha -= 0.1;
    
    if (image_alpha < 0)
        image_alpha = 0;
    
    if (image_alpha == 0)
        instance_destroy();
}
