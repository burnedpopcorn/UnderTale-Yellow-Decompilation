if (live_call())
    return global.live_result;

event_inherited();
up_sprite = spr_mo_steamworks_down_talk;
right_sprite = spr_mo_steamworks_alt_right;
down_sprite = spr_mo_steamworks_down_talk;
left_sprite = spr_mo_steamworks_alt_left;
up_sprite_idle = spr_mo_steamworks_down_talk;
right_sprite_idle = spr_mo_steamworks_alt_right;
down_sprite_idle = spr_mo_steamworks_down_talk;
left_sprite_idle = spr_mo_steamworks_alt_left;
action_sprite = true;
scr_load_palette_shader(0);
palette_index = 5;
shader_on = true;
