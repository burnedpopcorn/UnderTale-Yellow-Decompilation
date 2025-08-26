if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
draw_alpha = 1;
global.cutscene = true;
obj_pl.image_alpha = 0;
var chujin = instance_create_depth(277, 149, -100, obj_chujin_npc);

with (chujin)
{
    up_sprite = spr_chujin_idle;
    right_sprite = spr_chujin_idle;
    down_sprite = spr_chujin_idle;
    left_sprite = spr_chujin_idle;
    up_sprite_idle = spr_chujin_idle;
    right_sprite_idle = spr_chujin_idle;
    down_sprite_idle = spr_chujin_idle;
    left_sprite_idle = spr_chujin_idle;
    action_sprite = false;
}

var martlet = instance_create_depth(246, -15, -100, obj_martlet_npc);

with (martlet)
{
    up_sprite = spr_martlet_flashback_sit_lookforward;
    right_sprite = spr_martlet_flashback_sit_lookforward;
    down_sprite = spr_martlet_flashback_sit_lookforward;
    left_sprite = spr_martlet_flashback_sit_lookforward;
    up_sprite_idle = spr_martlet_flashback_sit_lookforward;
    right_sprite_idle = spr_martlet_flashback_sit_lookforward;
    down_sprite_idle = spr_martlet_flashback_sit_lookforward;
    left_sprite_idle = spr_martlet_flashback_sit_lookforward;
    action_sprite = true;
    sprite_index = spr_martlet_landing;
    image_index = 0;
    image_speed = 0;
}
