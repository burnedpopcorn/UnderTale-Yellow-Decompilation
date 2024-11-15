var actor_starlo;

scene = 17;
cutscene_timer = 0;
cutscene_music = 0;
actor_starlo = instance_create(160, 80, obj_starlo_npc);

with (actor_starlo)
{
    up_sprite = spr_starlo_up_walk;
    right_sprite = spr_starlo_sad_right_walk;
    down_sprite = spr_starlo_sad_down_walk;
    left_sprite = spr_starlo_sad_left_walk;
    up_sprite_idle = spr_starlo_up_talk;
    right_sprite_idle = spr_starlo_sad_right_talk;
    down_sprite_idle = spr_starlo_sad_down_talk;
    left_sprite_idle = spr_starlo_sad_left_talk;
}

instance_create(obj_pl.x, __view_get(e__VW.YView, 0) + __view_get(e__VW.WView, obj_quote_battle_ceroba_outro_4) + 50, obj_ceroba_npc);
actor_clover = instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
