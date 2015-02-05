/mob/living/silicon/decoy
	name = "AI"
	icon = 'icons/mob/AI.dmi'//
	icon_state = "ai"
	anchored = 1 // -- TLE
	canmove = 0

/mob/living/silicon/decoy/New()
	src.icon = 'icons/mob/AI.dmi'
	src.icon_state = "ai"
	src.anchored = 1
	src.canmove = 0

/mob/living/silicon/decoy/Afterimage
	name = "Afterimage"
	icon = 'icons/mob/alien.dmi'//
	icon_state = "alienh_s"
	anchored = 1 // -- TLE
	canmove = 0
	density=0

/mob/living/silicon/decoy/Afterimage/New()
	src.icon = 'icons/mob/alien.dmi'
	src.icon_state = "alienh_s"
	src.anchored = 1
	src.canmove = 0
	src.density=0
