x = lerp(x, x_target, 0.25);

if (abs(x - x_target) < 0.01)
    x = x_target;
