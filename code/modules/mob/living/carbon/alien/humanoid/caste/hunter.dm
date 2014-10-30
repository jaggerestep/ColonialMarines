/mob/living/carbon/alien/humanoid/hunter
	name = "alien warrior"
	caste = "h"
	maxHealth = 210
	health = 210
	storedPlasma = 100
	max_plasma = 150
	icon_state = "alienh_s"
	plasma_rate = 7
	damagemin = 25
	damagemax = 33
	heal_rate = 5
	var/usedpounce = 0
	var/hasJelly = 0
	var/jellyProgress = 0
	var/jellyProgressMax = 1500
	psychiccost = 8
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


/mob/living/carbon/alien/humanoid/hunter/New()
	var/datum/reagents/R = new/datum/reagents(100)
	reagents = R
	R.my_atom = src
	if(name == "alien warrior")
		name = text("alien warrior ([rand(1, 1000)])")
	real_name = name
	growJelly()
	..()

/mob/living/carbon/alien/humanoid/hunter


	handle_regular_hud_updates()

		..() //-Yvarov

		if (healths)
			if (stat != 2)
				switch(health)
					if(150 to INFINITY)
						healths.icon_state = "health0"
					if(100 to 150)
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

/mob/living/carbon/alien/humanoid/hunter/Life()
	..()

	if(usedpounce <= 0)
		usedpounce = 0
	usedpounce--


//Hunter verbs
/mob/living/carbon/alien/humanoid/hunter/verb/pounce()
	set name = "Pounce (50)"
	set desc = "Pounce onto your prey."
	set category = "Alien"

	if(usedpounce >= 1)
		src << "\red We must wait before pouncing again.."
		return

	if(powerc(50))
		var/targets[] = list()
		for(var/mob/living/carbon/human/M in oview())
			if(M.stat)	continue//Doesn't target corpses or paralyzed persons.
			targets.Add(M)

		if(targets.len)
			var/mob/living/carbon/human/target=pick(targets)
			var/atom/targloc = get_turf(target)
			if (!targloc || !istype(targloc, /turf) || get_dist(src.loc,targloc)>=3)
				src << "We cannot reach our prey!"
				return
			if(src.weakened >= 1 || src.paralysis >= 1 || src.stunned >= 1)
				src << "We cannot pounce if we are stunned.."
				return

			visible_message("\red <B>[src] pounces on [target]!</B>")
			if(src.m_intent == "walk")
				src.m_intent = "run"
				src.hud_used.move_intent.icon_state = "running"
			src.loc = targloc
			src.canmove = 0
			src.frozen = 1
			target.Weaken(3)
			usedpounce = 12
			adjustToxLoss(-100)

			spawn(30)
				src.frozen = 0
		else
			src << "\red We sense no prey.."

	return
//End hunter verbs

//Hunter procs

//End hunter procs
/*
/mob/living/carbon/alien/humanoid/hunter/verb/invis()
	set name = "Invisibility (50)"
	set desc = "Makes you invisible for 15 seconds"
	set category = "Alien"

	if(alien_invis)
		update_icons()
	else
		if(powerc(50))
			adjustToxLoss(-50)
			alien_invis = 1.0
			update_icons()
			src << "\green You are now invisible."
			for(var/mob/O in oviewers(src, null))
				O.show_message(text("\red <B>[src] fades into the surroundings!</B>"), 1)
			spawn(250)
				if(!isnull(src))//Don't want the game to runtime error when the mob no-longer exists.
					alien_invis = 0.0
					update_icons()
					src << "\green You are no longer invisible."
	return
*/


/mob/living/carbon/alien/humanoid/hunter/verb/evolve2() // -- TLE
	set name = "Evolve (Jelly)"
	set desc = "Evolve into a Runner"
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
	src << "\blue <b>You are growing into a Runner!</b>"

	var/mob/living/carbon/alien/humanoid/new_xeno

	new_xeno = new /mob/living/carbon/alien/humanoid/runner(loc)
	src << "\green You begin to evolve!"

	for(var/mob/O in viewers(src, null))
		O.show_message(text("\green <B>[src] begins to twist and contort!</B>"), 1)
	if(mind)	mind.transfer_to(new_xeno)

	del(src)


	return
