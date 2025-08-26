if (live_call())
    return global.live_result;

var cam_x = camera_get_view_x(view_camera[0]);
var cam_max = room_width - 240;
var cam_percentage = cam_x / cam_max;

for (var i = 0; i < room_width; i += 320)
    draw_sprite(spr_newhome_bg_building_7, 0, i + (cam_percentage * 1692), 0);

for (var i = 0; i < (room_width * 2); i += 320)
    draw_sprite(spr_newhome_bg_building_6, 0, i + (cam_percentage * 1200), 50);

for (var i = 0; i < (room_width * 2); i += 320)
    draw_sprite(spr_newhome_bg_building_5, 0, 33 + i + (cam_percentage * 1000), 25);

for (var i = 0; i < (room_width * 2); i += 320)
    draw_sprite(spr_newhome_bg_building_4, 0, i + (cam_percentage * 800), 87);

for (var i = 0; i < (room_width * 2); i += 320)
    draw_sprite(spr_newhome_bg_building_3, 0, i + (cam_percentage * 610), 80);

for (var i = 0; i < (room_width * 2); i += 320)
    draw_sprite(spr_newhome_bg_building_2, 0, -100 + i + (cam_percentage * 280), 100);

for (var i = 0; i < (room_width * 2); i += 320)
    draw_sprite(spr_newhome_bg_building_1, 0, i + (cam_percentage * 195), 36);
