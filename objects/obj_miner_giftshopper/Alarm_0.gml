if (global.party_member != -4)
    clover_cup_cutscene = 3;
else
    global.cutscene = false;

scr_text();

with (msg)
{
    message[0] = "* ...";
    message[1] = "* ENJOY YOUR SHARDS OF GLASS!!";
    message[2] = "* NO CHARGE ANYMORE BUDDY!";
    message[3] = "* YOU BREAK IT, YOU DO NOT BUY#  IT!!";
}

is_talking = 1;
npc_flag += 1;
music_reset = true;
instance_destroy(clover_npc);
obj_pl.image_alpha = 1;
obj_pl.direction = 90;
obj_pl.y += 2;
obj_giftshop_mug.sprite_index = spr_mug_broken;
obj_giftshop_mug.depth = 0;
