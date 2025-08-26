finish = true;

if (!instance_exists(obj_dialogue))
    msg = instance_create(x, y, obj_dialogue);

with (msg)
{
    sndfnt = sndfnt_default;
    message[0] = "* The Micro Froggits are waving#  goodbye.";
    portrait = false;
}
