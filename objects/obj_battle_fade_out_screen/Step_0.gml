if (instance_exists(obj_battle_justice_effect))
    exit;

image_alpha += fade_speed;

if (image_alpha >= 1 && no_loop == false)
{
    alarm[0] = 10;
    no_loop = true;
}
