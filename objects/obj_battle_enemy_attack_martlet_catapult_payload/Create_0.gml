damage_number = scr_determine_damage_number_enemy("martlet", "void", "void");
id_arm = global.id_store;
global.id_store = id;
disjoint_x = x - id_frame_arm.x;
disjoint_y = y - id_frame_arm.y;
image_alpha = 0;
launched = false;
