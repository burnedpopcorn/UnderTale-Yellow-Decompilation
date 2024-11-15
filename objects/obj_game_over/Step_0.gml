if (!instance_exists(obj_heart_death_screen_split) && no_loop == false)
{
    alarm[0] = 45;
    no_loop = true;
}

if (generate == true && image_alpha != 1)
    image_alpha += 0.05;

if (image_alpha == 1 && no_loop_2 == false)
{
    alarm[1] = 30;
    no_loop_2 = true;
}
