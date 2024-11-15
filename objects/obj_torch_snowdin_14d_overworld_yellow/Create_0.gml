event_inherited();
image_speed = 0;
active = 0;

if (global.geno_complete[2])
    exit;

if (npc_flag > 0)
{
    sprite_index = spr_torch_talk_snowdin_yellow;
    image_index = 0;
    image_speed = 0;
    active = 2;
    exit;
}
