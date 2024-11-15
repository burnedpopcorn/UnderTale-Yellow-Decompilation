if (place_meeting(x, y, obj_pl))
{
    scr_text();
    talker[0] = 1170;
    sndfnt = 102;
    message[0] = "* It's awfully quiet...#  let's be cautious.";
    npc_flag = 1;
    instance_destroy();
}
