if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
{
    scr_text();
    
    if (sprite_index == spr_dunes_30_sapling_withered)
    {
        msg.message[0] = "* (Withered away...)";
    }
    else if (image_index == 0)
    {
        msg.message[0] = "* (A sapling sits within the#  ground, new to life and unsure#  of itself.)";
        msg.message[1] = "* (It is full of potential but#  has yet to reach it. One day,#  it might.)";
    }
    else if (image_index == 1)
    {
        msg.message[0] = "* (The little sapling has#  garnered some experience in the#  world.)\t";
        msg.message[1] = "* (Crafting its own identity#  through perseverance.)\t";
        msg.message[2] = "* (However, it still has room to#  expand into something greater.)";
    }
    else if (image_index == 2)
    {
        msg.message[0] = "* (Through thick and thin and#  over time, the sapling is ready#  to blossom!)";
        msg.message[1] = "* (What once was an idea within#  someone's mind is now a#  reality.)";
        msg.message[2] = "* (A little hard work and#  dedication is all it took to#  make something special.)";
    }
}
