if (!instance_exists(obj_dialogue_axis_hindered))
    msg = instance_create(x, y, obj_dialogue_axis_hindered);

with (msg)
{
    sndfnt = snd_talk_axis;
    message[0] = "* HA. FOUND YOU.";
    message[1] = "* AWAY YOU GO.";
    prt[0] = spr_portrait_axis_normal;
    prt[1] = spr_portrait_axis_normal;
}

fade_out = true;
instance_destroy(obj_cutscene_ex);
