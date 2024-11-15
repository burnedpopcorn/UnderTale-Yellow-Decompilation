arcade_intro_alpha -= 0.2;

if (arcade_intro_alpha < 0)
{
    arcade_intro = false;
    instance_create(160, 185, obj_arcade_mew);
    arcade_start_screen = true;
    alarm[1] = 45;
    exit;
}

alarm[0] = 15;
