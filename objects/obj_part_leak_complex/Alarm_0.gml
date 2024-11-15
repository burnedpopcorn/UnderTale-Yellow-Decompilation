var xp, yp;

xp = 164;
yp = 62;
part_emitter_region(ps_droplets, global.pe_droplet, xp - 10, xp + 10, yp - 1, yp + 1, 0, 0);
part_emitter_burst(ps_droplets, global.pe_droplet, pt_droplet, 1);
alarm[0] = 75;
