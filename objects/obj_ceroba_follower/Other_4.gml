if (global.party_member == -4)
    instance_destroy();

if (room == rm_dunes_elevator)
    exit;

x = obj_pl.x;
y = obj_pl.y;
event_perform(ev_create, 0);
