if (!instance_exists(obj_dialogue_axis_hindered))
    msg = instance_create(x, y, obj_dialogue_axis_hindered);

with (msg)
{
    sndfnt = 111;
    message[0] = "* HA. FOUND YOU.";
    message[1] = "* AWAY YOU GO.";
    prt[0] = 473;
    prt[1] = 473;
}

fade_out = true;
instance_destroy(obj_cutscene_ex);
