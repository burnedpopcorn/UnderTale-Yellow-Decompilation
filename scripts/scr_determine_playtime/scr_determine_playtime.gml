function scr_determine_playtime()
{
    var time_new = date_current_datetime();
    var time_difference = floor(date_second_span(global.saved_datetime, time_new));
    global.elapsed_seconds += time_difference;
    global.saved_datetime = time_new;
}
