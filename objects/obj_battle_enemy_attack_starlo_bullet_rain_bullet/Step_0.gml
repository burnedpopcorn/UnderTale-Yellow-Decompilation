if (can_fire == 0)
    exit;

if (draw_alpha > 0)
    draw_alpha -= 0.15;
else
    instance_destroy();
