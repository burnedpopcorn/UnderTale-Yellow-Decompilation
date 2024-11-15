event_inherited();

if (global.geno_complete[3] == true && global.route == 3)
{
    instance_destroy();
    exit;
}

waiter = 0;

if (global.fun_value >= 65 && global.fun_value <= 69)
    exit;

instance_destroy();
