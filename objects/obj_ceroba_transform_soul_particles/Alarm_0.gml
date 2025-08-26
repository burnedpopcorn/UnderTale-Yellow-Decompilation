var xp = x;
var yp = y;
part_emitter_region(soul_particles_ps, pe_ef_soul_particles, xp - 8, xp + 8, yp - 8, yp + 8, 0, 0);
part_emitter_burst(soul_particles_ps, pe_ef_soul_particles, pt_ef_soul_particles, 5);
alarm[1] = 60;
