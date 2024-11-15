function scr_mail_check()
{
    var mail, jingle, info, info_color, stamp;
    
    mail = "Intro Letter";
    
    if (argument_count > 0)
    {
        mail = argument[0];
        
        if (!ds_list_find_index(global.mail_list_read, mail))
            ds_list_add(global.mail_list_read, mail);
    }
    
    jingle = 349;
    info = "* Mail Text";
    info_color = "";
    stamp = 1504;
    
    switch (mail)
    {
        case "Intro Letter":
            info = "#Come new friend,#right here to our space!#Whether you roam#or stay in one place!#We hope you have friends#with fun letters to send,#and always a smile on your face!#Here's to more mail#without any stress!#Hope to see you again!##The UGPS";
            stamp = 1504;
            break;
        
        case "Slurpy Letter":
            info = "#Greetings, my savior and fond#acquaintance. I would like to#extend further gratitude for#your assistance.If it weren't#for you, my papillae would#surely be permanently attached#to that pole.##Thanks to you, I made#it home in time for#supper. I must say , Mother#really outdid herself this#time! The food was#exquisite! Many thanks!#Sincerely yours,##-Slurpy#";
            stamp = 1504;
            jingle = 349;
            break;
        
        case "Mo Letter":
            info = "#If you're reading this, it#means you had the pleasure of#meeting me.##I'll make this snappy.#You're not gonna believe#it. I'm selling a new,#premium product for HALF OFF.##I know what you're saying,#\"I would gladly pay full price#for your products.\"I appreciate#that, I really do. But this#ain't the time for high#prices.##Just find my stand and#I'll give ya the juicy#details.##Huh? Where is my stand?#I don't even know myself.#Should probably go find that.##Good luck!#-Mo";
            stamp = 1505;
            jingle = 349;
            break;
        
        case "Dalv Letter":
            info = "#Greetings, Clover! Life has#been a treat since we last saw#each other. I packed up all of#my belongings and set out for#Snowdin.##I recently found a nice#place to settle down. I think#you'll like it! Oh! And all of#the neighbors moved out with#me.I'm not too sure where each#one went, but I know they are#doing well.##I'm also taking art lessons#from Penilla now. She gave#me the cold truth and said#my art needed lots of#improvement. It stung at first,#but then I remembered that you#should always aim to improve#yourself.##Ah. Look at me rambling#again. I hope the mail#service doesn't charge#extra for that.##It was nice to talk to you#again! Even if it is over#written text. Please visit me#in the future! Life is#getting a lot better,###-Dalv";
            stamp = 1506;
            jingle = 349;
            break;
        
        case "Shufflers Letter":
            info = "#To our latest Shufflers recruit:#Toast here. There's someone out#in the wild that we forgot to#warn ya about. This scruffy#fella with a blue hat. Don't#interact with him or support#his endeavors. I won't tell ya#why cause this letter reads way#cooler as a mystery.#" + string("#Now, I'll let {0} finish this.", global.fun_swig_name) + "#He gets upset when he misses#" + "out on writing letters." + "#" + "#" + "#" + "#" + "#Yeah, upset." + "#" + string("#-{0} ", global.fun_swig_name);
            stamp = 1507;
            jingle = 349;
            break;
        
        case "Resort Letter":
            info = "#Hello, appreciated guest!##We greatly enjoyed your company#at The Honeydew Resort (Snowdin#Establishment)! You can always#count on us for quality time#with the whole family! From our#relaxing hot spring, to our#live music, there's a little#something for everyone!##We hope to see you again,#anonymous citizen of the#Underground!##-The Honeydew Family";
            stamp = 1504;
            jingle = 349;
            break;
        
        case "Mixin' It Up! (Essay)":
            info = "MIXIN' IT UP - By Dr. Rob##Entering the field of#chemistry can be tough. Maybe#you never went to college.#Maybe you find it hard#to grasp complex equations.#Maybe you were kicked out of#your highschool science class#for \"developing poison during#school hours.\"##We're all different, but we#all share one similarity: magic.#It's easy to rely on magic in the#in the day to day, but have you#ever wondered what it would be#like to live... without it?##What would we do if we couldn't#light a fireplace with a snap#of our fingers? Spawn weapons#out of thin air? Use wings to#soar above the trees? Sleep?##That's where science comes in!#Nature's magic. Elements, or#\"compounds\" make up most of the#Underground as we know it.#When you combine two or more#compounds you can create amazing#things. For example, by taking#the compound \"Oxygen\" and#SMASHING it together with two#\"Hydrogen\" compounds, you get# \"Dihydrogen Oxide,\" also known#as \"water\" (catchy name, right?)###Here, you try:#Let's say you want to melt through#a high-security safe to become#rich... hypothetically. The#solution you would need is#called \"Hydrochloric Acid\"#which involves the two#compounds _____ and _____.#Fill in the blanks to#empty the banks :)#######D- Unfocused and rushed.#Why did you write a#worksheet problem in#a reflective essay?";
            info_color = "#######################################################D- Unfocused and rushed.#Why did you write a#worksheet problem in#a reflective essay?";
            stamp = -4;
            jingle = 372;
            break;
        
        case "Martlet's Letter":
            info = "To: Clover#(who's hopefully alive)##Meet me on the roof of#UG Apartments as soon#as you can.##There's something on#my mind.###- Martlet of the Royal Guard#(Snowdin Division)#####";
            stamp = 2674;
            jingle = 372;
            break;
        
        case "PSA":
            info = "Dear citizens of the Underground:#We are calling for fallen down#monsters to be sent to Hotland for#important scientific  research.###Should you choose to participate,#your loved ones will be#treated with utmost respect,#their condition heavily#monitored, and you regularly#notified of their status.###This is a chance for tragedy to#be turned into opportunity. For#monsterkind to finally see the#light of the Surface thanks to#its citizens' invaluable bravery#and sacrifice.##For your consideration,##Royal Science Division#####";
            stamp = 3309;
            jingle = 372;
            break;
        
        case "Bullet Points":
            info = "The Helper-Bot Guidelines:##1.#Every manufactured bot must have#a practical function installed.#A purpose for being:#(Cooking, cleaning,#agriculture, etc).##2.#Bots should have tiers of#emotion to better integrate#into society.#Coding a personality into#each one is recommended.#It makes them more#personable/easy to be around.##3.#All bots are to have a strong#connection with living things: #(Their creators, average monsters,#other bots, etc).#If deprived of this, some may#become easily agitated#and restless.#Others may be unphased.#Depends on the model.##4.#If a bot acts out of line or#malfunctions, they are to be#shut down. Typically, a hard#reset will do the trick.#Termination is a last resort.#If a shutdown isn't possible,#they can be coaxed back to#their normal state.##5.#Absolutely NO bots are allowed#outside the Steamworks at#this time. Until King#ASGORE is ready to begin mass#production, this project is#classified.##6.Most of all, have fun :)####";
            stamp = -4;
            jingle = 372;
            break;
        
        case "Starlo Update":
            info = "#Howdy, Clover!#It's yer favorite sheriff,#North Star, with an#important update!##I did some soul searchin'#while staring directly at#the shiny stone on top#of the Mines.##After recovering from temporary#blindness, I shamefully#approached my posse.##Well, I spare ya the#gruesome details (me cryin')#but in the end, they#forgave me.##So the Feisty Five are#back! Now twice as sensitive#to everyone’s feelin's!##When we returned to town,#Ceroba and Dina had set#up a party in the Saloon#- which was great##I really wish you were#still here, but I SUPPOSE#you deserve yer freedom ;)##Anyway, it’s all good,#so don't mosey 'round#worryin' 'bout me or#nothin'.##I do have the tendency#to occupy around 60% of#someone's brain after they#meet me...#But I reckon it's time#to let go.####Happy trails!#- North \"Starlo\" Star##";
            stamp = 3604;
            jingle = 349;
            break;
        
        case "Starlo (Urgent)":
            info = "#Hey, Clover. Something's up.##I made up with the posse#as planned. All was going#well, but then I began#worrying about you and#Ceroba. That's when I got#the idea to break into#Ceroba's old house and spruce#it up to celebrate her#and Kanako's eventual return.#Well, when Ed was sweeping#around, he found some kinda#secret room. Seems like it#belonged to Chujin. We didn't#have time to dig into#its content but all I#know is it worried us both.##You may be in danger.##Then again, maybe not.#Just... come back to#the Wild East for now.#I can only hope this#letter reaches you in time.####- Starlo";
            stamp = 3604;
            jingle = 372;
            break;
        
        case "Slurpy Letter 2":
            info = "#Hello again, dear comrade!#I hope this letter finds#you in the very picture#of health.##I heard word that you#were venturing near the#vicinity of Hotland.##Being that the resting#temperature in that region#is so high, I have#included one premium#Snowdin snow sphere.##I hope it keeps you#at an ideal temperature#throughout your journey.##Next time you are in#Snowdin, feel free to#drop in.##Mother will surely prepare#you a palatable meal.###Sincerely yours,#-Slurpy###(The letter and envelope#are very wet.)#";
            stamp = 1504;
            jingle = 349;
            break;
        
        case "Ceroba (Important)":
            info = "#Hey.##We don't know each other#very well but ever since#you left the Wild East,#I've been pacing around in#my head about your journey#and everything surrounding it.##Wherever you are, I fear#your situation will grow#dangerous. Far more than#it already has.##By now, I assume you've#heard about the King. Well,#each fallen human who has#encountered him in the past#hasn't survived. As skilled#as you are, I don't#believe you would either.#I understand why you would#want to confront him#(believe me, I have my#reservations as well),#but perhaps it isn't the#wisest path forward?##I don't know what you#should do, nor am I#going to act like I#currently have any#influence over your#destination, but your#original plan - avenging the#humans, escaping the Underground,#whatever it may be...#It's impossible.##I'm sorry. A warning is#the best I can do.####- Ceroba";
            stamp = 3614;
            jingle = 372;
            break;
        
        case "MAIL???":
            info = "#1001001 100000 1000100#1001111 100000 1001110#1001111 1010100 100000#1001011 1001110 1001111#1010111 100000 1001000#1001111 1010111 100000#1010100 1001111 100000#1010011 1000101 1001110#1000100 100000 1001100#1000101 1010100 1010100#1000101 1010010 1010011#101110 100000 1001000#1000101 1001100 1010000#100000 1001101 1000101#101110##- Axis";
            stamp = 2920;
            jingle = 349;
            break;
        
        case "Spam Letter 1":
            info = "#Hey, you! Are you wanting to#  help society? Don't know where#  to start? Well here's the: Top#  Ten Reasons to Join the Royal#  Guard!##10 - Awesome training courses!#9 - A shiny badge!#8 - Your own area to guard!#7 - A leather-bound protocol#guidebook!#6 - Free space! Insert your#own here!#5 - A weapon of your choice!#4 - Bragging rights!#3 - Free health insurance!#2 - Being more intimidating#than before!#1 - Your own battle-ready#uniform!!#So what are you waiting for?#Sign up today!####Disclaimer: The Royal Guard is a#serious job with life-threatening#possibilities. This list was#created for promotional purposes #only. The Royal Guard is not#liable for any promises#made in this list.# ";
            stamp = 1504;
            jingle = 349;
            break;
        
        case "Spam Letter 2":
            info = "#Have you ever found yourself#stranded in the desert, wishing#you had an air-conditioned room#to relax in? Well look no#further than Cafe Dune! The#most modern facility in the#Dunes! Try our premium lattes#or game it up in our#state-of-the-art arcade! It's#all right here at Cafe Dune!##Located in Oasis Valley - See#  you soon!";
            stamp = 1504;
            jingle = 349;
            break;
        
        case "Spam Letter 3":
            info = "#The ultimate question:What are#the ideal proportions for#lemonade? It is a mystery that#has boggled all manner of#monsters since Surface days of#yore. It has bested generations#of royal scientists and yet has#remained elusive... Until#now! Behold! The perfect#ratio!##22% water#22% sugar#41% lemon juice#?????????????##Want to find out that last#ingredient? Well why not#subscribe to It's A Lemon#Monthly! Have the perfect#lemonade recipe delivered to#your door: Every. Single.#Month. What are you waiting for?#Only 18,300g for a three year#subscription!##Order now, now,#  NOW!";
            stamp = 1504;
            jingle = 349;
            break;
        
        case "Spam Letter 4":
            info = "#hi.....##please visit blook acres#in waterfall, if you want...##we have snails... #they're neat....##...bye.";
            stamp = 1504;
            jingle = 349;
            break;
        
        case "Spam Letter 5":
            info = "#If you're a foxy monster#looking for love, look no#further than yours truly! I'm an#elite athlete with more G than#I know what to do with. My IQ is#so large, I could shatter the#barrier just by staring at#it. Regrets? My only regret in#life is that I don't own a#dumbbell heavier than 150kg.##I could go on for eons,#but enough about me.#Write your number here and send#this letter back if you want#your world changed!##__________";
            stamp = 1504;
            jingle = 349;
            break;
        
        case "Spam Letter 6":
            info = "#Hello.#This is the Royal Treasury#notifying you that you#definitely owe us 700G. Monsters#must pay taxes to King ASGORE#as of right now. I hear you#getting all flustered but I#assure you that I am correct.#Now, insert the G into the#envelope and return this letter#or...Or else you get a life#sentence without a trial. Yup.##  ";
            stamp = 1504;
            jingle = 349;
            break;
        
        case "Spam Letter 7":
            info = "#The monster life can be#stressful, we all know that.#Wouldn’t you like to have a#taste of Surface life? Well#here in the Wild East, we#pride ourselves on being#the most authentic experience#you'll find in the Underground!##Located east of Oasis Valley#  - Stop on by, partner!#  ";
            stamp = 1504;
            jingle = 349;
            break;
        
        case "Spam Letter 8":
            info = "#Hello Underground friend, and#thank you for taking the#time out of your busy schedule#to read this message.##We here at the Society for#Monster Health (SMH) are reaching#out for support in our noble#mission of putting an end to#unsolicited spam mail.##This unwanted clutter is an extra#stress and possible danger to#the mental state of monsters#everywhere, in addition to#putting needless physical strain#on our poor mail monsters.##Please join the fight against#this wasteful spam mail by#signing up for our petition#today!";
            stamp = 1504;
            jingle = 349;
            break;
        
        case "Spam Letter 9":
            info = "#Looking for a job?#Here at Mining Co. we#hire just about anyone#who applies!##Criminal past? Doesn't matter.#Criminal future? Doesn't matter!##We want everyone to feel#secure in our cave away#from home! So what are#you waiting for? Apply#today and help society!###(Disclaimer: Not liable for#any work-related accidents#that may or may not occur.)##  ";
            stamp = 1504;
            jingle = 349;
            break;
        
        case "Steamworks ID":
            instance_create_depth(0, 0, -999, obj_sworks_id);
            instance_destroy(obj_pause_menu);
            exit;
            break;
        
        case "Missing Poster":
            instance_create_depth(0, 0, -999, obj_missing_poster);
            instance_destroy(obj_pause_menu);
            exit;
            break;
    }
    
    mail = instance_create(0, 0, obj_mail);
    
    with (mail)
    {
        mail_text = info;
        mail_text_colored = info_color;
        mail_stamp = stamp;
    }
    
    audio_stop_sound(jingle);
    audio_play_sound(jingle, 1, 0);
    audio_sound_gain(jingle, 0.3, 0);
}
