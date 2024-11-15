event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Hehe, haaaiii!!!";
                message[1] = "* Are you here to bring me home??";
                message[2] = "* Did Mikey send you??";
                message[3] = "* Huh?? Huh???";
                message[4] = "* Doesn't matter because I won't#  go!";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* This is just like Mikey!";
                message[1] = "* Instead of talking face to face#  he sends a little weird guy to#  stare at me!";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Hehe omg!!";
                message[1] = "* Sorry for calling you weirdddd!";
                message[2] = "* I tend to bully small children#  when I get moody!";
                message[3] = "* My b!!";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Mikey never paid any attention#  to me, you know??";
                message[1] = "* I wanted to teach him a big ol'#  lesson!";
                message[2] = "* So I'm playing hard to get by#  wandering into the woods and#  maybe dying???";
                message[3] = "* I think he'd care a lot if that#  happened!!";
            }
            
            npc_flag = 4;
            break;
        
        case 4:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Standing out here in this#  fridigy climate starts to get #  to you!";
                message[1] = "* Starts to make you question#  things!!";
                message[2] = "* Like.. who's Mikey???";
            }
            
            npc_flag = 5;
            break;
        
        case 5:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* I've never met a Mikey in my#  life!";
                message[1] = "* Wouldn't it be funny if I did#  tho???";
                message[2] = "* I'd like, be his gf and he'd#  like, ignore me and I'd like,#  wander into the woods!";
            }
            
            npc_flag = 6;
            break;
        
        case 6:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* I'm so lost, hehe!";
                message[1] = "* Woopsyyy!!!";
            }
            
            npc_flag = 7;
            break;
        
        case 7:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* You think there's a search#  squad looking for me??";
                message[1] = "* Omg that would make me feel so#  special!!";
                message[2] = "* What if they send out a#  helicopter??";
                message[3] = "* Ah!! You prooobably don't know#  what a helicopter is!!";
                message[4] = "* It's okay!! I won't bore you#  with that forbidden knowledge!";
            }
            
            npc_flag = 8;
            break;
        
        case 8:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* This is the ninth time you've#  talked to me!";
                message[1] = "* Fun!!!";
            }
            
            npc_flag = 9;
            break;
        
        case 9:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* I think we've made fast#  friends, don't you???";
                message[1] = "* Wait! How fast can you run??";
                message[2] = "* Because I am a speed demon!!!";
                message[3] = "* Aww, you know what??";
                message[4] = "* I'd race you, but I kiiiinda#  stopped believing in myself#  recently!";
            }
            
            npc_flag = 10;
            break;
        
        case 10:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Fun Wanda fact!!";
                message[1] = "* They don't let me in most#  restaurants anymore.";
            }
            
            npc_flag = 11;
            break;
        
        case 11:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Oh shoot!!!";
                message[1] = "* Did I just name drop??";
                message[2] = "* Omgggg that's so like me!!";
            }
            
            npc_flag = 12;
            break;
        
        case 12:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Hm! Hm!!";
                message[1] = "* I'm getting a Wanda Signal!!";
                message[2] = "* ...";
                message[3] = "* GASP!!!";
                message[4] = "* I only have one more thing I#  can say to you after this!!";
                message[5] = "* Noooooo!!!!";
                message[6] = "* Well, better make it count!";
            }
            
            npc_flag = 13;
            break;
        
        case 13:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* One...";
                message[1] = "* Two...";
                message[2] = "* Three...";
                message[3] = "* Four...";
                message[4] = "* RATS!!!";
                message[5] = "* No one EVER TOLD ME what comes#  after four!!!";
                message[6] = "* Lemme start over!!";
            }
    }
}
