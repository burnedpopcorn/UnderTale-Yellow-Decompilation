text_effect = "twitchy";
attack = false;
var turns_passed = global.turns_passed;

switch (turns_passed)
{
    case 0:
        message[0] = "I know I'm better#than this.";
        message[1] = "A dignified sheriff#would face their#opponent fairly.";
        message[2] = "However, you're no#everyday bandit,#so get ready!";
        portrait_head[0] = 2125;
        portrait_head[1] = 2124;
        portrait_head[2] = 2124;
        message_end = 2;
        break;
    
    case 1:
        message[0] = "Huh. Even tied up,#you're skilled.";
        message[1] = "I sure have an eye#for talent.";
        portrait_head[0] = 2124;
        portrait_head[1] = 2124;
        message_end = 1;
        break;
    
    case 2:
        message[0] = "Still...";
        message[1] = "Part of me wishes#things coulda stayed#the way they were.";
        portrait_head[0] = 2124;
        portrait_head[1] = 2124;
        message_end = 1;
        break;
    
    case 3:
        message[0] = "Why'd you have to step#foot in my town?";
        message[1] = "Just a few hours ago#everyone was gettin'#along.";
        message[2] = "Now... well...#we're here.";
        portrait_head[0] = 2124;
        portrait_head[1] = 2124;
        portrait_head[2] = 2124;
        message_end = 2;
        break;
    
    case 4:
        message[0] = "This is the only#way to fix things.";
        message[1] = "The only way#I know...";
        portrait_head[0] = 2124;
        portrait_head[1] = 2125;
        message_end = 1;
        break;
    
    case 5:
        message[0] = "...!";
        portrait_head[0] = 2124;
        message_end = 0;
        break;
    
    case 6:
        message[0] = "Quit squirmin' so#much!";
        portrait_head[0] = 2124;
        message_end = 0;
        break;
    
    case 7:
        message[0] = "Clover, you gotta#understand!";
        portrait_head[0] = 2124;
        message_end = 0;
        break;
    
    case 8:
        message[0] = "Come on!!";
        message[1] = "Give it up already!!";
        portrait_head[0] = 2124;
        portrait_head[1] = 2124;
        message_end = 1;
        break;
    
    case 9:
        message[0] = "Fine. I didn't wanna#use this but I got#no choice.";
        message[1] = "Goodbye, partner. ";
        portrait_head[0] = 2125;
        portrait_head[1] = 2124;
        message_end = 1;
        break;
    
    case 11:
        message[0] = "I'm gonna miss our#time together.";
        message[1] = "I mean that.";
        portrait_head[0] = 2124;
        portrait_head[1] = 2124;
        message_end = 1;
        break;
    
    case 12:
        message[0] = "At first, I was truly#happy.";
        message[1] = "I thought you were the#real deal.";
        portrait_head[0] = 2124;
        portrait_head[1] = 2124;
        message_end = 1;
        break;
    
    case 13:
        message[0] = "All my sacrifices, all#the naysayers...";
        message[1] = "Those didn't matter#anymore 'cause what I#had was#special.";
        portrait_head[0] = 2124;
        portrait_head[1] = 2124;
        message_end = 1;
        break;
    
    case 14:
        message[0] = "But now I've realized#the truth...";
        message[1] = "This sheriff stuff?#It's worthless.";
        portrait_head[0] = 2124;
        portrait_head[1] = 2124;
        message_end = 1;
        break;
    
    case 15:
        message[0] = "We all tout \"justice\"#but...";
        message[1] = "True Underground#status is only#secured through pain.";
        message[2] = "\"Monsterkind's Hero\"#is a title soaked#in blood.";
        portrait_head[0] = 2124;
        portrait_head[1] = 2124;
        portrait_head[2] = 2124;
        message_end = 2;
        break;
    
    case 16:
        message[0] = "In the end...#we're nothin' but#bandits.";
        portrait_head[0] = 2125;
        message_end = 0;
        break;
}

message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
