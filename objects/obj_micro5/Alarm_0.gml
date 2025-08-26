global.cutscene = false;

if (!instance_exists(obj_dialogue))
    msg = instance_create(x, y, obj_dialogue);

with (msg)
{
    portrait = false;
    sndfnt = sndfnt_default;
    message[0] = "* (You hear movement in the#  distance...)";
    message[1] = "* (An intimidating presence fills#  the Ruins.)";
}
