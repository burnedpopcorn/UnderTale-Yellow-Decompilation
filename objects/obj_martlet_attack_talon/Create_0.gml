if (live_call())
    return global.live_result;

attack_event_shake = false;
attack_delay = 0;
attack_speed = 0.7;
can_move = true;
scene = 0;
cutscene_timer = 0;
image_alpha = 0;
x_diff = obj_heart_battle_fighting_parent.x - x;
y_diff = obj_heart_battle_fighting_parent.y - y;
x_last = x;
spawn_noloop = false;
depth = obj_heart_battle_fighting_parent.depth - 1;
