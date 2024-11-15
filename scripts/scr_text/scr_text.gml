function scr_text()
{
    if (!instance_exists(obj_dialogue))
        msg = instance_create(x, y, obj_dialogue);
}
