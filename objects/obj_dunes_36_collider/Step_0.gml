if (place_meeting(x, y, obj_pl))
{
    scr_text();
    talker[0] = obj_martlet_follower;
    sndfnt = snd_talk_martlet;
    message[0] = "* It's awfully quiet...#  let's be cautious.";
    npc_flag = 1;
    instance_destroy();
}
