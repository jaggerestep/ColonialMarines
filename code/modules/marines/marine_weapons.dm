/**********************Marine Ammo**************************/

//BULLETS

/obj/item/projectile/bullet/mpistol
	damage = 20

/obj/item/projectile/bullet/mrevolver
	damage = 40

/obj/item/projectile/bullet/msmg
	damage = 10

/obj/item/projectile/bullet/mrifle
	damage = 25

/obj/item/projectile/bullet/mshotgun
	damage = 70

//AMMO

/obj/item/ammo_casing/mpistol
	desc = "A .45 special bullet casing."
	caliber = "45s"
	projectile_type = "/obj/item/projectile/bullet/mpistol"

/obj/item/ammo_casing/mrevolver
	desc = "A .38 special bullet casing."
	caliber = "38s"
	projectile_type = "/obj/item/projectile/bullet/mrevolver"

/obj/item/ammo_casing/msmg
	desc = "A .9mm special bullet casing."
	caliber = "9mms"
	projectile_type = "/obj/item/projectile/bullet/msmg"

/obj/item/ammo_casing/mrifle
	desc = "A 10mm special bullet casing."
	caliber = "10mms"
	projectile_type = "/obj/item/projectile/bullet/mrifle"

/obj/item/ammo_casing/mshotgun
	name = "shotgun special shell"
	desc = "A 12 gauge special shell."
	icon_state = "gshell"
	caliber = "12gs"
	projectile_type = "/obj/item/projectile/bullet/mshotgun"

//AMMO BOXES

/obj/item/ammo_magazine/m45s
	name = "ammo box (.45-S)"
	desc = "A box of .45 special ammo"
	icon_state = "9mm"
	ammo_type = "/obj/item/ammo_casing/mpistol"
	max_ammo = 12

/obj/item/ammo_magazine/m45s/empty
	max_ammo = 0

/obj/item/ammo_magazine/m38s
	name = "speed loader (.38-S)"
	desc = "A .38 special rounds speed loader"
	icon_state = "38"
	ammo_type = "/obj/item/ammo_casing/mrevolver"
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_magazine/m9mms
	name = "magazine (9mm-S)"
	desc = "A 9mm special magazine"
	icon_state = "9x19p-8"
	ammo_type = "/obj/item/ammo_casing/msmg"
	max_ammo = 30

/obj/item/ammo_magazine/mc9mm/empty
	icon_state = "9x19p-0"
	max_ammo = 0

/obj/item/ammo_magazine/m10mms
	name = "magazine (10mm-S)"
	desc = "A 10mm special magazine"
	icon_state = "m309"
	ammo_type = "/obj/item/ammo_casing/mrifle"
	max_ammo = 30

/obj/item/ammo_magazine/m10mms/empty
	max_ammo = 0

/obj/item/weapon/storage/box/mshotguns
	name = "box of special shotgun shells"
	desc = "It has a picture of a marine combat shotgun and several warning symbols on the front."
	New()
		..()
		new /obj/item/ammo_casing/mshotgun(src)
		new /obj/item/ammo_casing/mshotgun(src)
		new /obj/item/ammo_casing/mshotgun(src)
		new /obj/item/ammo_casing/mshotgun(src)
		new /obj/item/ammo_casing/mshotgun(src)
		new /obj/item/ammo_casing/mshotgun(src)
		new /obj/item/ammo_casing/mshotgun(src)

/**********************Marine Weapons**************************/

//PISTOL: Low/Med damage 20, medium ammo 12, one-handed, no recoil.

/obj/item/weapon/gun/projectile/pistol/colt1911
	name = "\improper Colt 1911"
	desc = "Colt 1911. Uses .45 special rounds."
	icon_state = "pistol"
	max_shells = 12
	caliber = "45s"
	ammo_type = "/obj/item/ammo_casing/mpistol"
	recoil = 0

/obj/item/weapon/gun/projectile/pistol/colt1911/New()
	..()
	empty_mag = new /obj/item/ammo_magazine/m45s/empty(src)
	return

/obj/item/weapon/gun/projectile/pistol/colt1911/afterattack(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, flag)
	..()
	if(!loaded.len && empty_mag)
		empty_mag.loc = get_turf(src.loc)
		empty_mag = null
	return

//REVOLVER: Med/High damage 40, low ammo 6, one-handed, recoil.

/obj/item/weapon/gun/projectile/victory
	name = "\improper S&W Victory"
	desc = "Smith & Wesson Model 10 Victory revolver. Uses .38 special ammo."
	icon_state = "mateba"
	caliber = "38s"
	ammo_type = "/obj/item/ammo_casing/mrevolver"

//SMG: Low damage 10, high ammo 30, one-handed, no recoil.

/obj/item/weapon/gun/projectile/automatic/mp5
	name = "\improper H&K MP5"
	desc = "Heckler & Koch MP5. Uses 9mm rounds."
	max_shells = 30
	caliber = "9mms"
	ammo_type = "/obj/item/ammo_casing/msmg"
	fire_delay = 0

	isHandgun()
		return 0

//RIFLE: Medium damage 25, high ammo 30, two-handed, no recoil.

/obj/item/weapon/gun/twohanded/projectile/c20r/m41a
	name = "\improper M41A Rifle"
	desc = "M41A Pulse Rifle. Uses 10mm special ammunition."
	icon_state = "m41a"
	item_state = "m41a"
	w_class = 3.0
	max_shells = 30
	caliber = "10mms"
	ammo_type = "/obj/item/ammo_casing/mrifle"
	fire_sound = 'sound/weapons/Gunshot_smg.ogg'
	load_method = 2

	New()
		..()
		empty_mag = new /obj/item/ammo_magazine/m10mms/empty(src)
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
			icon_state = "m41a0"
		else
			icon_state = "m41a"
		return

//SHOTGUN: High damage 80, low ammo 8, two-handed, recoil, pump.

/obj/item/weapon/gun/twohanded/projectile/shotgun/pump/remington870
	name = "Remington 870"
	desc = "Marine version of the Remington Model 870."
	icon_state = "cshotgun"
	max_shells = 8
	caliber = "12gs"
	ammo_type = "/obj/item/ammo_casing/mshotgun"
	recoil = 1