scene = 0;
cutscene_timer = 0;

if (global.sworks_flag[46] != 1 || (global.sworks_flag[50] == 0 && global.party_member == -4))
{
    instance_destroy();
    exit;
}
else if (global.sworks_flag[50] >= 1)
{
    scene = 6;
    instance_create_depth(450, 200, 0, obj_ceroba_npc);
    obj_ceroba_npc.npc_direction = "up";
}
