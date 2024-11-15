if (instance_exists(obj_ceroba_npc) && obj_ceroba_npc.sprite_index == spr_ceroba_kanako_picture)
    draw_sprite(spr_ceroba_kanako_picture_overlay, obj_ceroba_npc.image_index, obj_ceroba_npc.x, obj_ceroba_npc.y);

draw_set_alpha(picture_alpha);
draw_sprite(spr_steamworks_22_kanako_overlay, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
draw_set_alpha(1);
