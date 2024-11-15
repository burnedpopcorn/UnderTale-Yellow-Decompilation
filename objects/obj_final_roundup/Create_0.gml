string_minutes = string(global.elapsed_seconds div 60);
string_seconds = string(global.elapsed_seconds % 60);

if (real(string_minutes) < 10)
    string_minutes = "0" + string_minutes;

if (real(string_seconds) < 10)
    string_seconds = "0" + string_seconds;

draw_alpha = 0;
