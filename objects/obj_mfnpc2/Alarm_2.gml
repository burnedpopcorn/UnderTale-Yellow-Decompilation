finish = true;

if (!instance_exists(obj_dialogue))
    msg = instance_create(x, y, obj_dialogue);

with (msg)
{
    sndfnt = 99;
    message[0] = "* The Micro Froggits are waving#  goodbye.";
    portrait = false;
}
