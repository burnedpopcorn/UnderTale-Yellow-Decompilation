if (!surface_exists(global.attack_surface))
    global.attack_surface = surface_create(640, 480);

draw_surface(global.attack_surface, 0, 0);
