event_inherited();
image_speed = 0;
waiter = 0;

if (global.geno_complete[3] == true && global.route == 3)
{
    instance_destroy();
    exit;
}
