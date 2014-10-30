/mob/living/carbon/alien/humanoid/praetorian
	name = "alien praetorian"
	caste = "p"
	maxHealth = 400
	health = 400
	storedPlasma = 0
	max_plasma = 300
	icon_state = "alienp_s"
	plasma_rate = 10
	damagemin = 36
	damagemax = 43
	heal_rate = 7
	icon = 'icons/mob/alien64.dmi'
	var/progress = 0
	var/progressmax = 500
	psychiccost = 16


/mob/living/carbon/alien/humanoid/praetorian/Stat()
	..()
	stat(null, "Progress: [progress]/[progressmax]")

/mob/living/carbon/alien/humanoid/praetorian/adjustToxLoss(amount)
	if(stat != DEAD)
		progress = min(progress + 1, progressmax)
	..(amount)



/mob/living/carbon/alien/humanoid/praetorian/New()
	var/datum/reagents/R = new/datum/reagents(100)
	reagents = R
	R.my_atom = src
	if(name == "alien praetorian")
		name = text("alien praetorian ([rand(1, 1000)])")
	real_name = name
	verbs.Add(/mob/living/carbon/alien/humanoid/proc/corrosive_acid)
	verbs -= /mob/living/carbon/alien/verb/ventcrawl
	//var/matrix/M = matrix()
	//M.Scale(1.2,1.3)
	//src.transform = M
	pixel_x = -16
	..()

/mob/living/carbon/alien/humanoid/praetorian


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




/mob/living/carbon/alien/humanoid/praetorian/verb/evolve() // -- TLE
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
		src << "\blue There are three to choose from:"
		src << "<B>Ravagers</B> \blue are tasked with dealing with threats of high magnitudes. They have deadly blades that can cut through the thickest of armor with ease. Immensely large."
		src << "<B>Carriers</B> \blue are tasked with expanding the hive with their ability to launch facehuggers at threats. They can carry up to 6 facehuggers at once."
		src << "<B>Queen</B> \blue is tasked with growing the hive. They are capable of laying eggs. There can only be one queen in the hive at a time."
		var/alien_caste = alert(src, "Please choose which alien caste you shall belong to.",,"Carrier","Ravager","Queen")

		var/mob/living/carbon/alien/humanoid/new_xeno
		switch(alien_caste)
			if("Carrier")
				new_xeno = new /mob/living/carbon/alien/humanoid/carrier(loc)
			if("Ravager")
				new_xeno = new /mob/living/carbon/alien/humanoid/ravager(loc)
			if("Queen")
				// Queen check
				var/no_queen = 1
				for(var/mob/living/carbon/alien/humanoid/queen/Q in living_mob_list)
					if(!Q.key && Q.brain_op_stage != 4)
						continue
					no_queen = 0

				if(no_queen)
					new_xeno = new /mob/living/carbon/alien/humanoid/queen(loc)
				else
					src << "<span class='notice'>We already have an alive queen.</span>"
					return
		src << "\green You begin to evolve!"
		adjustToxLoss(-400)
		for(var/mob/O in viewers(src, null))
			O.show_message(text("\green <B>[src] begins to twist and contort!</B>"), 1)
		if(mind)	mind.transfer_to(new_xeno)

		del(src)


	return