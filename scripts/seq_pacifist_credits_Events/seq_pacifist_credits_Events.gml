function seq_pacifist_credits_Moment_6()
{
    room_goto(rm_credits_paci_intermission);
}

function seq_pacifist_credits_Moment_7()
{
    if (global.snowdin_flag[3] >= 2)
        global.ending_sequence = layer_sequence_create("sequence_layer_deep", 98, 120, 1);
    else
        global.ending_sequence = layer_sequence_create("sequence_layer_deep", 104, 120, 26);
}

function seq_pacifist_credits_Moment_8()
{
    if (variable_global_exists("ending_sequence"))
        layer_sequence_destroy(global.ending_sequence);
}

function seq_pacifist_credits_Moment_9()
{
    var sale_number, i;
    
    sale_number = 0;
    
    for (i = 1; i < array_length(global.extra_flag); i++)
    {
        if (global.extra_flag[i] == true)
            sale_number += 1;
    }
    
    if (sale_number <= 3)
        global.ending_sequence = layer_sequence_create("sequence_layer_deep", 96, 120, 0);
    else if (sale_number < 9)
        global.ending_sequence = layer_sequence_create("sequence_layer_deep", 96, 120, 13);
    else
        global.ending_sequence = layer_sequence_create("sequence_layer_deep", 96, 120, 18);
}

function seq_pacifist_credits_Moment_10()
{
    if (global.dunes_flag[7] > 0)
        global.ending_sequence = layer_sequence_create("sequence_layer_deep", 160, 120, 27);
    else
        global.ending_sequence = layer_sequence_create("sequence_layer_deep", 160, 120, 30);
}
