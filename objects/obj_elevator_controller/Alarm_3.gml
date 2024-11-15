trn = instance_create(x, y, obj_transition);

if (last_room == "rm_dunes_13")
{
    trn.newRoom = 94;
    trn.xx = 100;
    trn.yy = 200;
}
else
{
    trn.newRoom = 92;
    trn.xx = 420;
    trn.yy = 180;
}
