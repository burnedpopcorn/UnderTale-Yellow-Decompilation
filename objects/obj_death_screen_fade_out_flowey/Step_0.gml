image_alpha += 0.007;

if (image_alpha >= 1 && no_loop == false)
{
    alarm[0] = 60;
    no_loop = true;
}
