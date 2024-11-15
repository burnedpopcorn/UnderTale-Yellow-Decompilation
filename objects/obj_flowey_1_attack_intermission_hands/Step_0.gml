var xp, yp, soul;

if (live_call())
    return global.live_result;

y -= 0.3;
xp = x;
yp = y;
part_emitter_region(global.ps, global.pe_hands_copy, xp - 640, xp + 640, (yp - 1) + y_offset, yp + 1 + y_offset, 0, 0);
part_emitter_region(global.ps, global.pe_hands, xp - 640, xp + 640, (yp - 1) + y_offset, yp + 1 + y_offset, 0, 0);
soul = 2979;

if (rectangle_in_rectangle(soul.bbox_left, soul.bbox_top, soul.bbox_right, soul.bbox_bottom, 0, y, 640, y + 480))
    scr_battle_damage_player();
