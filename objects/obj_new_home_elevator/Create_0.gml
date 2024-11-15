scene = 0;
cutscene_timer = 0;
door_closed_amount = 0;
screenshake_intensity = 0;

if (global.party_member != -4)
    instance_destroy(global.party_member);
