event_inherited();
scr_cutscene_start();
depth = obj_pl.depth;
up_sprite = obj_pl.usprite_walk;
right_sprite = obj_pl.rsprite_walk;
down_sprite = obj_pl.dsprite_walk;
left_sprite = obj_pl.lsprite_walk;
up_sprite_idle = obj_pl.usprite_walk;
right_sprite_idle = obj_pl.rsprite_walk;
down_sprite_idle = obj_pl.dsprite_walk;
left_sprite_idle = obj_pl.lsprite_walk;
action_sprite = false;
scene = 0;

with (obj_pl)
    image_alpha = 0;

switch (obj_pl.direction)
{
    case 0:
        npc_direction = "right";
        sprite_index = right_sprite;
        break;
    
    case 90:
        npc_direction = "up";
        sprite_index = up_sprite;
        break;
    
    case 180:
        npc_direction = "left";
        sprite_index = left_sprite;
        break;
    
    case 270:
        npc_direction = "down";
        sprite_index = down_sprite;
        break;
}

actor_speed = 2;
axis_override = "nothing";
walk_collider = -4;
destination_count = 0;
can_walk = false;
player_fade_out = false;
end_direction = "down";
x_dest[0] = 0;
y_dest[0] = 0;
scr_load_palette_shader(1);
palette_index = obj_pl.palette_index;
shader_on = obj_pl.shader_on;
