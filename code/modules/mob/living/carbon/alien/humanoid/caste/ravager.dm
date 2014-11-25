/mob/living/carbon/alien/humanoid/ravager
	name = "alien ravager"
	caste = "r"
	maxHealth = 500
	health = 500
	storedPlasma = 50
	max_plasma = 50
	icon_state = "alienr_s"
	plasma_rate = 6
	damagemin = 50
	damagemax = 75
	icon = 'icons/mob/alien64.dmi'
	var/usedcharge = 0
	var/CHARGESPEED = 1
	var/CHARGECOOLDOWN = 6 // in seconds
	var/CHARGESTRENGTH = 4
	var/CHARGEDISTANCE = 4
	var/ATTACKTIME = 1.3 // in seconds
	var/nextattack = 0
	psychiccost = 32

/mob/living/carbon/alien/humanoid/ravager/New()
	var/datum/reagents/R = new/datum/reagents(100)
	reagents = R
	R.my_atom = src
	if(name == "alien ravager")
		name = text("alien ravager ([rand(1, 1000)])")
	real_name = name
	var/matrix/M = matrix()
	M.Scale(1.15,1.15)
	src.transform = M
	verbs -= /mob/living/carbon/alien/verb/ventcrawl
	pixel_x = -18
	..()

/mob/living/carbon/alien/humanoid/ravager

	handle_regular_hud_updates()

		..() //-Yvarov

		if (healths)
			if (stat != 2)
				switch(health)
					if(600 to INFINITY)
						healths.icon_state = "health0"
					if(100 to 600)
						healths.icon_state = "health1"
					if(50 to 100)
						healths.icon_state = "health2"
					if(25 to 50)
						healths.icon_state = "health3"
					if(0 to 25)
						healths.icon_state = "health4"
					else
						healths.icon_state = "health5"
			else
				healths.icon_state = "health6"


	handle_environment()
		if(m_intent == "run" || resting)
			..()
		else
			adjustToxLoss(-heal_rate)

/proc/oppositedir(var/dir)
	var/newdir
	switch(dir)
		if(1)
			newdir = 2
		if(2)
			newdir = 1
		if(3)
			newdir = 4
		if(4)
			newdir = 3
		else
			newdir = 2
	return newdir

/mob/living/carbon/alien/humanoid/ravager/ClickOn(var/atom/A, params)



	var/list/modifiers = params2list(params)
	if(modifiers["middle"] || modifiers["shift"])
		charge(A)

		return
	var/mob/living/carbon/human/C = A

	if(C)
		if(src.nextattack <= world.time)
			src.nextattack = world.time + ATTACKTIME * 10
			if(get_dist(src, C) == 2)
				face_atom(C)
				C.attack_alien(src)
				return

	..()

/mob/living/carbon/alien/humanoid/ravager/verb/charge(var/mob/living/carbon/human/T)
	set name = "Charge"
	set desc = "Charge towards something."
	set category = "Alien"

	if(usedcharge <= world.time)
		if(!T)
			var/list/victims = list()
			for(var/mob/living/carbon/human/C in oview(7))
				victims += C
			T = input(src, "Who should we charge towards?") as null|anything in victims

		if(T)
			usedcharge = world.time + CHARGECOOLDOWN * 10
			src.throw_at(T, CHARGEDISTANCE, CHARGESPEED)
			src << "We charge at [T]"
			visible_message("\red <B>[src] charges towards [T]!</B>")
			charging = CHARGESTRENGTH
			spawn(25)
				charging = 0


		else
			src << "\blue You cannot throw at nothing!"
	else
		src << "\red You need to wait before charging!"
