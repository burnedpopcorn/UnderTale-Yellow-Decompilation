if (instance_exists(obj_rndenc))
{
    if (place_meeting(x, y, obj_pl))
        obj_rndenc.enc_disabled = true;
    else
        obj_rndenc.enc_disabled = false;
}
