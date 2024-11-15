if (global.game_finished_pacifist_kill == true)
    instance_create(0, 0, obj_menu_flowey);
else if (global.game_finished_pacifist == true)
    instance_create(0, 0, obj_menu_flowey_pacifist);
else if (global.game_finished_murder == true)
    instance_create(0, 0, obj_menu_murder);

instance_destroy();
