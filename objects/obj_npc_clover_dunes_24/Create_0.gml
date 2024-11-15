event_inherited();
scr_cutscene_start();
depth = obj_pl.depth;
up_sprite = obj_pl.usprite;
right_sprite = obj_pl.rsprite;
down_sprite = obj_pl.dsprite;
left_sprite = obj_pl.lsprite;
up_sprite_idle = obj_pl.usprite;
right_sprite_idle = obj_pl.rsprite;
down_sprite_idle = obj_pl.dsprite;
left_sprite_idle = obj_pl.lsprite;
action_sprite = false;
image_blend = obj_pl.image_blend;
scene = 0;

with (obj_pl)
    image_alpha = 0;

npc_direction = "down";
sprite_index = obj_pl.sprite_index;
actor_speed = 2;
axis_override = "nothing";
walk_collider = -4;
destination_count = 0;
snap_to_elevator = false;
can_walk = true;
player_fade_out = false;
end_direction = "down";
x_dest[0] = obj_pulley_elevator.x;
y_dest[0] = obj_pulley_elevator.y + 14;

if (global.party_member != -4)
    x_dest[0] = obj_pulley_elevator.x - 20;
