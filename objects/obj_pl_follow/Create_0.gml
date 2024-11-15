usprite = spr_pl_up;
dsprite = spr_pl_down;
lsprite = spr_pl_left;
rsprite = spr_pl_right;
plspd = 3;
direction = obj_pl.direction;
no_loop_destination_dalv = false;

if (direction == 0)
    sprite_index = rsprite;

if (direction == 90)
    sprite_index = usprite;

if (direction == 180)
    sprite_index = lsprite;

if (direction == 270)
    sprite_index = dsprite;
