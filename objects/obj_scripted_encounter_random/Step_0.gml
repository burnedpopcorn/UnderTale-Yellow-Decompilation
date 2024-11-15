if (!place_meeting(x, y, obj_pl) && instance_exists(obj_rndenc) && obj_rndenc.enc_time <= 10)
    obj_rndenc.enc_time = 11;
