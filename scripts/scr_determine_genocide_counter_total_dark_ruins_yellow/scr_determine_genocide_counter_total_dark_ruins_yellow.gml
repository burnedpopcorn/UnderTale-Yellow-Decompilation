function scr_determine_genocide_counter_total_dark_ruins_yellow()
{
    var genocide_counter_array_max, i;
    
    global.dark_ruins_genocide_counter_total = 0;
    genocide_counter_array_max = array_length_1d(global.dark_ruins_genocide_counter) - 1;
    
    for (i = 1; i <= genocide_counter_array_max; i += 1)
        global.dark_ruins_genocide_counter_total += global.dark_ruins_genocide_counter[i];
}
