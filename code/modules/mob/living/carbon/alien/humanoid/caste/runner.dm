/mob/living/carbon/alien/humanoid/runner
	name = "alien runner"
	caste = "r"
	maxHealth = 150
	health = 150
	storedPlasma = 50
	max_plasma = 100
	icon_state = "alienr_s"
	move_delay_add = -2
	plasma_rate = 10
	damagemin = 27
	damagemax = 29
	heal_rate = 6
	psychiccost = 16

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
	move_delay_add = -2
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
