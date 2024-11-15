var xp, yp;

xp = x;
yp = y;
part_emitter_region(global.ps, global.pe_Effect2, xp - 1, xp + 1, yp - 1, yp + 1, 0, 0);
part_emitter_burst(global.ps, global.pe_Effect2, global.pt_Effect2, 1);
part_emitter_region(global.ps, global.pe_glass_particles, xp - 30, xp + 30, yp - 30, yp + 30, 2, 2);
part_emitter_burst(global.ps, global.pe_glass_particles, global.pt_glass_particles, 15);
image_alpha = 0;
image_speed = 0;
alarm[1] = 60;

with (obj_ceroba_body_pacifist_phase_2)
{
    sprite_index = spr_ceroba_p2_knocked_down;
    image_index = 0;
    image_speed = 1;
}

with (obj_petal_generator_phase_2)
    fade_out = true;

with (obj_heart_battle_fighting_yellow_final)
    can_shoot = true;

scr_battle_box_resize_midfight(40, 40);
scr_screenshake_battle(3, 1);
