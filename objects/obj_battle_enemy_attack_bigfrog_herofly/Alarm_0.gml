var soul;

if (live_call())
    return global.live_result;

soul = 2980;
scene = 1;
x_target = irandom_range(battle_box.bbox_left + 40, battle_box.x - 40);
y_target = irandom_range(clamp(soul.y - 15, battle_box.bbox_top + 20, battle_box.bbox_bottom - 20), clamp(soul.y + 15, battle_box.bbox_top + 20, battle_box.bbox_bottom - 20));
