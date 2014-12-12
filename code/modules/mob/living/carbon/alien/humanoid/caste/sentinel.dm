/mob/living/carbon/alien/humanoid/sentinel
	name = "alien sentinel"
	caste = "Sentinel"
	maxHealth = 240
	health = 240
	storedPlasma = 100
	max_plasma = 250
	icon_state = "Sentinal Walking"
	plasma_rate = 10
	damagemin = 27 //old damage was 34
	damagemax = 34 //old damage war 40
	tacklemin = 2
	tacklemax = 4 //old max was 5
	tackle_chance = 50 //Should not be above 100% old was 60
	heal_rate = 4
	var/hasJelly = 0
	var/jellyProgress = 0
	var/jellyProgressMax = 500
	psychiccost = 10
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


/mob/living/carbon/alien/humanoid/sentinel/New()
	var/datum/reagents/R = new/datum/reagents(100)
	reagents = R
	R.my_atom = src
	if(name == "alien sentinel")
		name = text("alien sentinel ([rand(1, 1000)])")
	real_name = name
	verbs.Add(/mob/living/carbon/alien/humanoid/proc/weak_acid,/mob/living/carbon/alien/humanoid/proc/weak_neurotoxin)
	growJelly()
	..()


/mob/living/carbon/alien/humanoid/sentinel/verb/evolve2() // -- TLE
	set name = "Evolve (Jelly)"
	set desc = "Evolve into a Spitter"
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
	src << "\blue <b>You are growing into a Spitter!</b>"

	var/mob/living/carbon/alien/humanoid/new_xeno

	new_xeno = new /mob/living/carbon/alien/humanoid/spitter(loc)
	src << "\green You begin to evolve!"

	for(var/mob/O in viewers(src, null))
		O.show_message(text("\green <B>[src] begins to twist and contort!</B>"), 1)
	if(mind)	mind.transfer_to(new_xeno)

	del(src)


	return

/mob/living/carbon/alien/humanoid/sentinel


	handle_regular_hud_updates()

		..() //-Yvarov

		if (healths)
			if (stat != 2)
				switch(health)
					if(192 to INFINITY)
						healths.icon_state = "health0"
					if(144 to 192)
						healths.icon_state = "health1"
					if(96 to 144)
						healths.icon_state = "health2"
					if(48 to 96)
						healths.icon_state = "health3"
					if(0 to 48)
						healths.icon_state = "health4"
					else
						healths.icon_state = "health5"
			else
				healths.icon_state = "health6"