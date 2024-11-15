event_inherited();
can_talk = false;
clover_cup_cutscene = false;
music_reset = false;

if (npc_flag == 1)
{
    obj_giftshop_mug.sprite_index = spr_mug_broken;
    obj_giftshop_mug.depth = 0;
    obj_giftshop_mug.solid = true;
}
