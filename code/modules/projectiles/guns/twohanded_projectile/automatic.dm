/obj/item/weapon/gun/twohanded/projectile/c20r
	name = "\improper C-20r SMG"
	desc = "A standard issue assault rifle. Uses 12mm ammunition."
	icon_state = "c20r"
	item_state = "c20r"
	w_class = 3.0
	max_shells = 20
	caliber = "12mm"
	origin_tech = "combat=5;materials=2;syndicate=8"
	ammo_type = "/obj/item/ammo_casing/a12mm"
	fire_sound = 'sound/weapons/Gunshot_smg.ogg'
	load_method = 2
	fire_delay = 2


	New()
		..()
		empty_mag = new /obj/item/ammo_magazine/a12mm/empty(src)
		update_icon()
		return


	afterattack(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, flag)
		..()
		if(!loaded.len && empty_mag)
			empty_mag.loc = get_turf(src.loc)
			empty_mag = null
			playsound(user, 'sound/weapons/smg_empty_alarm.ogg', 40, 1)
			update_icon()
		return


	update_icon()
		..()
		if(empty_mag)
			icon_state = "c20r-[round(loaded.len,4)]"
		else
			icon_state = "c20r"
		return

	verb/toggle_light()
		set name = "Toggle Flashlight"
		set category = "Weapon"
	//	var/obj/item/device/flashlight/F

		if(haslight && !islighton)
			usr << "\blue You turn the flashlight on."
			luminosity = 4
			islighton = 1
		else if(haslight && islighton)
			usr << "\blue You turn the flashlight off."
			luminosity = 0
			islighton = 0
		else if(!haslight)
			usr << "\red There is no flashlight attached!"

