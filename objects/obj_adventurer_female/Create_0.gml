var geno_snowdin = false;

if (global.geno_complete[2])
    geno_snowdin = true;

if (geno_snowdin == true)
    instance_destroy();

if (global.player_can_travel)
    instance_destroy();

image_speed = 0;
is_talking = 0;
waiter = 0;
depth = -y;
