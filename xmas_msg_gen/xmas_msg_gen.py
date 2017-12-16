import time   #Use time as a seed for pseudorandom number generator
import random #Library to generate pseudorandom numbers

random.seed(time.time()) #Initialize the rng with time as a seed

def generate_xmas_msg():
    first = [
        "Good luck",                           #1
        "May the odds be ever in your favour", #2
        "Best of luck",                        #3
        "Hope you succeed",                    #4
        "May the force be with you",           #5
        "May the force serve you well",        #6
        "Good fortune",                        #7
    ]
    
    second = [
        "quest",     #1
        "journey",   #2
        "odyssey",   #3
        "campaign",  #4
        "venture",   #5
        "adventure", #6
        "pursuit",   #7
        "research",  #8
    ]
    
    third = [
        "to vanquish",           #1
        "to defeat",             #2
        "to join",               #3
        "to discover",           #4
        "to negotiate with",     #5
        "to gain the trust of",  #6
        "to help",               #7
    ]
    
    fourth = [
        "the city of R'lyeh",                        #1
        "the crustaceans of Yuggoth",                #2
        "the Sith",                                  #3
        "the Jedi",                                  #4
        "the galactic senate",                       #5
        "the vaporous brains of the spiral nebulae", #6
        "the outer gods",                            #7
        "Yog-Sothoth",                               #8
        "the Time Lords",                            #9
        "the Daleks",                                #10
        "the city of Rivendell",                     #11
        "the Witch-king of Angmar",                  #12
        "Tom Bombadil",                              #13
        "Treebeard and the Ents",                    #14
        "supreme leader Kim Jong-un",                #15
        "Donald Trump",                              #16
        "Mordor",                                    #17
        "the NHS",                                   #21
        "Jar Jar Binks",                             #22
        "Cyrano de Bergerac",                        #23
        "the Iron Throne",                           #24
        "the Iron Bank of Braavos",                  #25
        "Daenerys Targaryen",                        #26
        "the Night King",                            #27
        "ser Duncan the Tall",                       #28
        "Brienne of Tarth",                          #29
        "Cthulhu",                                   #30
        "The Doctor",                                #31
        "the Mimbari",                               #32
        "the Centauri",                              #33
        "the Narn",                                  #34
        "the Vorlon",                                #35
        "Babylon 5",                                 #36
    ]    
    
    phrase = first[random.randrange(0,len(first),1)] + " in your "+second[random.randrange(0,len(second),1)]+" "\
            + third[random.randrange(0,len(third),1)] + " " + fourth[random.randrange(0,len(fourth),1)]
    return phrase

#Generate 10 messages
for i in range(0,10,1):
    print(str(i+1)+") ", end="")
    print(generate_xmas_msg())