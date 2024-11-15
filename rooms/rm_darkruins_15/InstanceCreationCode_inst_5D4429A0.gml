if (global.flag[15] != 1)
{
    message[0] = "* (It's a wooden torch with a#  great flame resting on top.)";
    
    if (global.route == 3)
        message[0] = "* (A torch.)";
}
else
{
    message[0] = "* (He is sound asleep. #* Maybe you shouldn't disturb#  him.)";
}
