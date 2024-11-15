if (active == true)
    x_target = x_target_original;
else
    x_target = xstart;

x = lerp(x, x_target, 0.2);

if (abs(x - x_target) < 0.1)
    is_on_target = true;
else
    is_on_target = false;
