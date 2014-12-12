/mob/living/carbon/alien/humanoid/spitter
	name = "alien spitter"
	caste = "Spitter"
	maxHealth = 270
	health = 270
	storedPlasma = 150
	max_plasma = 450
	icon_state = "Spitter Walking"
	plasma_rate = 30
	var/progress = 0
	var/progressmax = 900 //was 1500
	damagemin = 35 //old min was 24
	damagemax = 40 //old max was 27
	tacklemin = 3
	tacklemax = 5
	tackle_chance = 60 //Should not be above 100% old was 65
	heal_rate = 3
	psychiccost = 20 //was 16

/mob/living/carbon/alien/humanoid/spitter/Stat()
	..()
	stat(null, "Progress: [progress]/[progressmax]")

/mob/living/carbon/alien/humanoid/spitter/adjustToxLoss(amount)
	if(stat != DEAD)
		progress = min(progress + 1, progressmax)
	..(amount)

/mob/living/carbon/alien/humanoid/spitter/New()
	var/datum/reagents/R = new/datum/reagents(100)
	reagents = R
	R.my_atom = src
	if(name == "alien spitter")
		name = text("alien spitter ([rand(1, 1000)])")
	real_name = name
	verbs.Add(/mob/living/carbon/alien/humanoid/proc/weak_neurotoxin,/mob/living/carbon/alien/humanoid/proc/neurotoxin,/mob/living/carbon/alien/humanoid/proc/weak_acid,/mob/living/carbon/alien/humanoid/proc/corrosive_acid)
	//var/matrix/M = matrix()
	//M.Scale(1.15,1.1)
	//src.transform = M
	//pixel_y = 3
	..()

/*  EVOLUTION TEMP DISABLED - ADMIN ONLY
/mob/living/carbon/alien/humanoid/spitter/verb/evolve() // -- TLE
	set name = "Evolve"
	set desc = "Evolve further into a new caste."
	set category = "Alien"
	if(!hivemind_check(psychiccost))
		src << "\red Your queen's psychic strength is not powerful enough for you to evolve further."
		return
	if(src.stat != CONSCIOUS)
		src << "You are unable to do that now."
		return
	if(progress >= progressmax)
		src << "\blue <b>You are growing into a beautiful alien! It is time to choose a caste.</b>"
		src << "\blue There are two to choose from:"
		src << "<B>Corroders</B> \blue are deadly acid spitters whos acid can melt through walls, objects, armor, and flesh. For times when the hive needs to destroy a threat."
		src << "<B>Hivelords</B> \blue are tasked with expanding the nest with their ability to create hardened resin walls and doors at a distance. They have massive plasma pools, far exceeding that of even queens."
		var/alien_caste = alert(src, "Please choose which alien caste you shall belong to.",,"Corroder","Hivelord")

		var/mob/living/carbon/alien/humanoid/new_xeno
		switch(alien_caste)
			if("Corroder")
				new_xeno = new /mob/living/carbon/alien/humanoid/corroder(loc)
			if("Hivelord")
				new_xeno = new /mob/living/carbon/alien/humanoid/hivelord(loc)
		src << "\green You begin to evolve!"
		for(var/mob/O in viewers(src, null))
			O.show_message(text("\green <B>[src] begins to twist and contort!</B>"), 1)
		if(mind)	mind.transfer_to(new_xeno)

		del(src)


	return

*/

/mob/living/carbon/alien/humanoid/spitter


	handle_regular_hud_updates()

		..() //-Yvarov

		if (healths)
			if (stat != 2)
				switch(health)
					if(206 to INFINITY)
						healths.icon_state = "health0"
					if(162 to 206)
						healths.icon_state = "health1"
					if(108 to 162)
						healths.icon_state = "health2"
					if(54 to 108)
						healths.icon_state = "health3"
					if(0 to 54)
						healths.icon_state = "health4"
					else
						healths.icon_state = "health5"
			else
				healths.icon_state = "health6"
