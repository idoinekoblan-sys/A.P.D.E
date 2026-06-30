import random
import time
import os

# clears screen
def clear():
    os.system("cls" if os.name == "nt" else "clear")

#cool typewritereffect
def typewriter(text, speed=0.03):
    for letter in text:
        print(letter, end="", flush=True)
        time.sleep(speed)
    print()




# supposed to look smth like this 
#---------------------------------
# INTRO
# --------------------------------

clear()


print("=" * 55)
print("       🐺 APEX PREDATOR DYANAMIC ECOSYSTEM 🐺 ")
print("=" * 55)


print("\nLoading", end="")


for i in range(5):
     print(".", end="", flush=True)
     time.sleep(0.4)


time.sleep(1)
clear()



typewriter("For thousands of years wolfs remainee apex preadators, protecting and maintaining the balance of nature. . .")
time.sleep(1)


typewriter("Every hunt, every season, every new pup that is born into the pack. Ever decision affects the ecosystem.")
time.sleep(1)

typewriter("Now, the future of this wolf pack rests in your paws. . .")
time.sleep(1)

typewriter("will your pack thrive? Survive untill 100 seasons even? Or will they become another extinct species?")
time.sleep(1)

input("\nPress ENTER to continue. . .")
clear()

# what main menu is supposed to look like
#--------------------------
# MAIN MENU
#--------------------------

while True:

    print("=" * 55)
    print("         🐺 APEX: WOLF PACK DYNAMICS 🐺 ")
    print("=" * 55)


    print("\n Developed by Idoine Koblan")
    print("Verion 1.9\n")


    print('"The survival of one species depends')
    print('on the balance of the entire ecosystem."\n')


    print("1 ► Start Game")
    print("2 ► Instructions")
    print("3 ► Credits")
    print("4 ► Exit")

    print("=" * 55)


    choice = input("\nChoose an option: ")

    if choice == "1":
         cler()
         break

    elif choice == "2":
        clear()

        print("=" * 55)
        print("             HOW TO PLAY")
        print("=" * 55)

        print("""
        Your goal is to keep your wolf pack alive. 
        
        Every season you must make decisions that
        affect both your wolves and the prey population.
        
        
        Diffrent actions will have different outcomes. 
        
        Random environmental disasters can happen at any time.
        
        Lose if: 
        Your pack reaches 0.
        The prey population reaches 0.
        
        Survive as long as you can!
                 """)

        input("\nPress ENTER to return to the menu . . .")
                clear()

    elif choice == "3":
        clear()


        print("=" * 55)
        print("              CREDITS")
        print("=" * 55)


        print("""
        PROJECT:
        A.P.D.E
        
        Developer:
        Idoine Koblan
        Programming Language:
        Python
        
        Project Type: 
        Text-Based Ecological simulation
        
        Created as an independent summer project to 
        demonstrate programming, problem solving, and enironmental 
        science concepts.
        AI tools were used for debugging assistance and brainstoorming, while the game desigh
        and mechanics were made by yours truly
             """)


                input("\nPress ENTER to return...")
        clear()

    elif choice == "4":
        print("\nThanks for playing!")
        time.sleep(1)
        quit()

    else:
        print("\nInvalid option.")
        time.sleep(1)
        clear()           
                  






prey_population = 180
wolf_pack = 12
season = 1 
game_running = True


while game_running: 
    print(f"\n--- Season {season} ---") 
    print(f"Wolf Pack: {wolf_pack}") 
    print(f"Prey Population: {prey_population}") 
    print("\nActions:") 
    print("1. Protect Habitat") 
    print("2. Allow Natural Hunting") 
    print("3. Focus on Raising Pups")
    print("4. Expand wolf pack territory")
    print("5. Move to a new habitat")
    action = input("Choose an action: ") 
    if action == "1": 
        prey_population += 25 
        print("Habitat protection improves prey reproduction.") 
    elif action == "2": 
        prey_population -= 10 
        wolf_pack += 1
        print("Natural conditions allow some prey reproduction.") 
    elif action == "3":
        wolf_pack += random.randint(1,5)
        prey_population -=15
        print("Some new pups are born!")
    elif action == "4": 
        prey_population += random.randint(10,90)
        wolf_pack -= random.randint(1,7)
        print("You succsefully expand your territory but lose some numbers")
    elif action == "5":
        prey_population = random.randint(10,200)
        wolf_pack -= 4
        print("The pack moves to a habitat but loses some members in the process")       
        

        
    # Wolves eat prey every season for food
    prey_population -= wolf_pack * 2 
    
    # wolf pack  grows if there is plenty of prey 
    if prey_population > 120: 
        wolf_pack += 1 
        print("The pack grows in numbers because of the abudance of food.") 
        
    # Population declines if prey becomes scarce 
    if prey_population < 20: 
        wolf_pack -= 2 
        print("Not enough food. The pack loses some members.") 
        
    # Prevent negative prey population 
    if prey_population <= 0: 
        prey_population = 0 
        print("Game Over. All the prey has died out, leaving no food.")
        game_running = False
        
    if wolf_pack <= 0: 
        print("Game Over. The wolves have been wiped out by the harshness of nature.") 
        game_running = False 
        
    # Game over
    if not game_running:
        break

    season += 1 
    
    # Environmental disaster system other wise known as E.D.S
    if random.random() < 0.30: 
        event = random.choice([ 
            "wildfire", 
            "drought",
            "human_hunting",
            "breeding",
            "tornado",
            "earthquake",
            "tsunami",
             "rabies_outbreak",
             "rival_pack_attack",


        ]) 
        
        if event == "wildfire": 
            prey_population -= 25 
            print("A wildfire comes outta nowhere and damages the habitat and reduces prey populations, fahh..🔥🔥🔥") 
        elif event == "drought": 
            prey_population -= 20 
            print(" ☀️☀️A Drought drys up the ponds and lakes and stuff.☀️☀️") 
        elif event == "human_hunting": 
            wolf_pack -= 2
            prey_population -= 35 
            print("Some random humans come in your forest and hunt some of your pack, and other surronding animals your fried..") 
        elif event == "breeding": 
            wolf_pack += 3 
            print("Loveee is in the air, your pack grows in size.") 
        elif event == "tornado": 
            wolf_pack -= random.randint(2,5) 
            print("A tornado rips through the forest killing some of your wolves in the pack") 
        elif event == "earthquake": 
            wolf_pack -= 4 
            print("Rumbling can be heard beneath the pack's paws, an earthquake buries some of the pack in rubble")
        elif event == "tsunami":
            prey_population -= 30
            wolf_pack -= 6
            print("A massive tsunami sweeps through the forest!")
        elif event == "rabies_outbreak":
            wolf_pack -= 3
            print("Rabies spreads through the pack.")
        elif event == "rival_pack_attack":
            wolf_pack -= 6
            print("A rival wolf pack attacks your pack your den is stained with blood.")    


# Environmental Seasons system.
# E.S.S for short
# Basiacally a chance for diffrent seasons like winter and summer
if random.random() < 0.30: 
        event = random.choice([ 
            "winter",
            "spring",
            "summer",
            "fall",
        ])


        if event == "winter":
            prey_population -= 45
            print("Snow starts falling from the sky and soon enough the forest is covered in Snow.❄❄❄") 
        elif event == "spring":
            wolf_pack += random.randint(1,3)
            prey_population += 25
            print("Its spring! Flowers are blooming and pups are born, and some more prey!")
        elif event == "summer":
            prey_population -= 50
            wolf_pack -= 2
            print("Its summer, super hot heat wave comes and kills a lot of prey and some of your pack...")
        elif event == "fall":
            prey_population += random.randint(5,10)
            print("Fall has come this season!")




 
        # Re-check win/loss conditions after disasters just in case
        if prey_population <= 0 or wolf_pack <= 0:
            if prey_population <= 0:
                print("Game Over. All the prey vanished after the disaster.")
            if wolf_pack <= 0:
                print("Game Over. The pack was wiped out by the elements.")
            game_running = False
