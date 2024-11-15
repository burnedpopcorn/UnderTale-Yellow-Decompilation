if (global.sworks_flag[1] < 4)
    exit;

if (irandom(steam_chance) == 1 && can_steam == true)
{
    alarm[0] = 45;
    can_steam = false;
    image_speed = 1;
}
