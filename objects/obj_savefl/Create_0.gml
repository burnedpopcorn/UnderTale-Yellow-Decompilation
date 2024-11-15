obj_pl.state = scr_frozen_state;
image_speed = 0.2;
waiter = 0;
upsprite = flowey_up;
downsprite = spr_flowey;
leftsprite = flowey_left;
rightsprite = flowey_right;
risesprite = spr_floweyrise;
leavesprite = spr_floweyleave;

if (room == rm_dunes_37)
{
    upsprite = spr_flowey_wildeast_up;
    downsprite = spr_flowey_wildeast_down;
    leftsprite = spr_flowey_wildeast_left;
    rightsprite = spr_flowey_wildeast_right;
    risesprite = spr_floweyrise_wildeast;
    leavesprite = spr_floweyleave_wildeast;
}

sprite_index = risesprite;
depth = -y;
