/mob/living/carbon/alien/humanoid/runner
	name = "alien runner"
	caste = "Runner"
	maxHealth = 150
	health = 150
	storedPlasma = 50
	max_plasma = 100
	icon_state = "Runner Walking"
	plasma_rate = 10
	damagemin = 23 //OLD DAMAGE WAS 26
	damagemax = 28 //OLD DAMAGE WAS 29
	tacklemin = 3 //OLD MIN WAS 2
	tacklemax = 5
	tackle_chance = 80 //Should not be above 100%
	heal_rate = 4
	psychiccost = 8

	//RUNNERS NOW USE JELLY, SINCE THEY EVOLVE INTO HUNTERS
	var/hasJelly = 0
	var/jellyProgress = 0
	var/jellyProgressMax = 1500
	Stat()
		..()
		stat(null, "Jelly Progress: [jellyProgress]/[jellyProgressMax]")
	proc/growJelly()
		spawn while(1)
			if(hasJelly)
				if(jellyProgress < jellyProgressMax)
					jellyProgress = min(jellyProgress + 1, jellyProgressMax)
			sleep(10)
	proc/canEvolve()
		if(!hasJelly)
			return 0
		if(jellyProgress < jellyProgressMax)
			return 0
		return 1

/mob/living/carbon/alien/humanoid/runner/New()
	var/datum/reagents/R = new/datum/reagents(100)
	reagents = R
	R.my_atom = src
	if(name == "alien runner")
		name = text("alien runner ([rand(1, 1000)])")
	real_name = name
	//var/matrix/M = matrix()
	//M.Scale(1.15,1.1)
	//src.transform = M
	//pixel_y = 3
	..()



/mob/living/carbon/alien/humanoid/runner


	handle_regular_hud_updates()

		..() //-Yvarov

		if (healths)
			if (stat != 2)
				switch(health)
					if(125 to INFINITY)
						healths.icon_state = "health0"
					if(100 to 125)
						healths.icon_state = "health1"
					if(75 to 100)
						healths.icon_state = "health2"
					if(25 to 75)
						healths.icon_state = "health3"
					if(0 to 25)
						healths.icon_state = "health4"
					else
						healths.icon_state = "health5"
			else
				healths.icon_state = "health6"



/mob/living/carbon/alien/humanoid/runner/verb/evolve2() // -- TLE
	set name = "Evolve (Jelly)"
	set desc = "Evolve into a Warrior"
	set category = "Alien"
	if(!hivemind_check(psychiccost))
		src << "\red Your queen's psychic strength is not powerful enough for you to evolve further."
		return
	if(!canEvolve())
		if(hasJelly)
			src << "You are not ready to evolve yet"
		else
			src << "You need a mature royal jelly to evolve"
		return
	if(src.stat != CONSCIOUS)
		src << "You are unable to do that now."
		return
	src << "\blue <b>You are growing into a Warrior!</b>"

	var/mob/living/carbon/alien/humanoid/new_xeno

	new_xeno = new /mob/living/carbon/alien/humanoid/hunter(loc)
	src << "\green You begin to evolve!"

	for(var/mob/O in viewers(src, null))
		O.show_message(text("\green <B>[src] begins to twist and contort!</B>"), 1)
	if(mind)	mind.transfer_to(new_xeno)

	del(src)


	return