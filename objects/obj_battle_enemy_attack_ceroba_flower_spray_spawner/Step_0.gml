if (image_alpha < 1)
{
    image_alpha += 0.1;
    exit;
}

if (image_xscale > 1)
    image_xscale -= 0.05;

if (image_yscale > 1)
    image_yscale -= 0.05;

var xx, yy;

switch (current_position)
{
    case 1:
        xx = 320;
        yy = 120;
        break;
    
    case 2:
        xx = 400;
        yy = 150;
        break;
    
    case 3:
        xx = 240;
        yy = 150;
        break;
}

x = lerp(x, xx, 0.5);
y = lerp(y, yy, 0.5);

if (x != xx || (y != yy && (alarm[0] > 0 || alarm[3] > 0)))
{
    alarm[0] = -1;
    alarm[3] = -1;
}
else if (!alarm[0] && !alarm[3])
{
    if (bullet_pattern_current == 1 && global.battle_phase == 2)
        bullet_pattern_current = 2;
    else
        bullet_pattern_current = 1;
    
    if (bullet_pattern_current == 1 && !alarm[0])
        alarm[0] = 1;
    
    if (bullet_pattern_current == 2 && !alarm[3])
        alarm[3] = 1;
}
