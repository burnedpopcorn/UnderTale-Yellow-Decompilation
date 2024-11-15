spwn_properties = [[138, 769, 1], [845, 566, -1], [1123, 779, -1], [704, 340, 1], [461, 291, -1], [879, 266, -1], [310, 149, 1], [1126, 289, 1], [607, 551, 1], [251, 649, -1]];
depth = -10000;

for (i = 0; i < array_length(spwn_properties); i++)
{
    inst = instance_create(spwn_properties[i][0], spwn_properties[i][1], obj_dunes_30_tree_trunk);
    inst.image_xscale = spwn_properties[i][2];
}
