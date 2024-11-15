depth = -y;
active = false;
can_hit = true;
spawn_delay = 60;
sound_playing = false;
image_speed = 0;
image_index = 0;

if (x == 700)
    spawn_delay = 10;
else if (x == 720)
    spawn_delay = 30;
else if (x == 740)
    spawn_delay = 50;
else if (x == 760)
    spawn_delay = 70;
else if (x == 780)
    spawn_delay = 90;
else if (x == 800)
    spawn_delay = 110;

if (x > 810)
{
    image_index = image_number - 1;
    image_speed = 0;
    exit;
}
