var battle_box, xx;

if (live_call())
    return global.live_result;

if (attack_stop)
    exit;

battle_box = 3154;
xx = 0;

switch (spawn_pos)
{
    case "left":
        xx = battle_box.bbox_left + 48;
        break;
    
    case "middle":
        xx = battle_box.x;
        break;
    
    case "right":
        xx = battle_box.bbox_right - 48;
        break;
}

instance_create_depth(xx, battle_box.bbox_bottom + 20, -100, obj_ceroba_attack_fire_pillar_top);
spawn_pos_last = spawn_pos;
event_user(0);

if (spawn_pos == spawn_pos_last)
{
    do
        spawn_pos = choose("left", "middle", "right");
    until (spawn_pos != spawn_pos_last);
}

alarm[0] = 50;

if (global.hotland_flag[2] == 3 && !double_pillar_noloop)
{
    double_pillar_noloop = true;
    event_perform(ev_alarm, 0);
}
