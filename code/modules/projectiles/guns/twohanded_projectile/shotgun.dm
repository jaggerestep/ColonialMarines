/obj/item/weapon/gun/twohanded/projectile/shotgun/pump
	name = "shotgun"
	desc = "Useful for sweeping alleys."
	icon_state = "shotgun"
	item_state = "shotgun"
	max_shells = 4
	w_class = 4.0
	force = 10
	flags =  FPRINT | TABLEPASS | CONDUCT
	slot_flags = SLOT_BACK
	caliber = "shotgun"
	origin_tech = "combat=4;materials=2"
	ammo_type = "/obj/item/ammo_casing/shotgun/beanbag"
	var/recentpump = 0 // to prevent spammage
	var/pumped = 0
	var/obj/item/ammo_casing/current_shell = null


	isHandgun()
		return 0

	load_into_chamber()
		if(in_chamber)
			return 1
		return 0


	proc/pump_gun(mob/M as mob)
		playsound(M, 'sound/weapons/shotgunpump.ogg', 60, 1)
		pumped = 0
		if(current_shell)//We have a shell in the chamber
			current_shell.loc = get_turf(src)//Eject casing
			current_shell = null
			if(in_chamber)
				in_chamber = null
		if(!loaded.len)	return 0
		var/obj/item/ammo_casing/AC = loaded[1] //load next casing.
		loaded -= AC //Remove casing from loaded list.
		current_shell = AC
		if(AC.BB)
			AC.spent = 1
			in_chamber = AC.BB //Load projectile into chamber.
		update_icon()	//I.E. fix the desc
		return 1

/obj/item/weapon/gun/twohanded/projectile/shotgun/pump/verb/pump()
	set name = "Pump Shotgun"
	set category = "Weapon"

	if(recentpump)
		return

	pump_gun()
	recentpump = 1
	spawn(10)
		recentpump = 0

/obj/item/weapon/gun/twohanded/projectile/shotgun/pump/combat
	name = "combat shotgun"
	icon_state = "cshotgun"
	max_shells = 8
	origin_tech = "combat=5;materials=2"
	ammo_type = "/obj/item/ammo_casing/shotgun"


/obj/item/weapon/gun/twohanded/projectile/shotgun/pump/riot
	name = "riot shotgun"
	icon_state = "cshotgun"
	max_shells = 8
	origin_tech = "combat=5;materials=2"
	ammo_type = "/obj/item/ammo_casing/shotgun/beanbag"