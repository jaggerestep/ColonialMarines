/**********************Marine Gear**************************/
//MARINE COMMAND CLOSET
/obj/structure/closet/secure_closet/marine_commander
	name = "Marine Commander's Locker"
	req_access = list()
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"

	New()
		sleep(2)
		new /obj/item/weapon/storage/backpack/mcommander(src)
		new /obj/item/clothing/shoes/marinechief/commander(src)
		new /obj/item/clothing/gloves/marine/techofficer/commander(src)
		new /obj/item/clothing/under/marine/officer/commander(src)
		new /obj/item/clothing/suit/storage/marine/officer/commander(src)
		new /obj/item/weapon/storage/belt/marine(src)
		new /obj/item/clothing/head/beret/marine/commander(src)
		new /obj/item/device/flashlight(src)
		new /obj/item/clothing/glasses/sunglasses(src)
		new /obj/item/device/radio/headset/mcom(src)
		return

/obj/structure/closet/secure_closet/marine_officer
	name = "Marine Officer's Locker"
	req_access = list()
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"

	New()
		sleep(2)
		new /obj/item/clothing/shoes/marine(src)
		new /obj/item/clothing/gloves/marine/officer(src)
		new /obj/item/clothing/under/marine/officer(src)
		new /obj/item/clothing/suit/storage/marine/officer(src)
		new /obj/item/weapon/storage/belt/marine(src)
		new /obj/item/clothing/head/beret/marine(src)
		new /obj/item/device/flashlight(src)
		new /obj/item/clothing/glasses/sunglasses(src)
		new /obj/item/device/radio/headset/mcom(src)
		return

/obj/structure/closet/secure_closet/marine_chiefofficer
	name = "Marine Chief Officer's Locker"
	req_access = list()
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"

	New()
		sleep(2)
		new /obj/item/clothing/shoes/marinechief(src)
		new /obj/item/clothing/gloves/marine/officer/chief(src)
		new /obj/item/clothing/under/marine/officer/chief(src)
		new /obj/item/clothing/suit/storage/marine/officer/chief(src)
		new /obj/item/weapon/storage/belt/marine(src)
		new /obj/item/clothing/head/beret/marine/chiefofficer(src)
		new /obj/item/device/flashlight(src)
		new /obj/item/clothing/glasses/sunglasses(src)
		new /obj/item/device/radio/headset/mcom(src)
		return

/obj/structure/closet/secure_closet/marine_techofficer
	name = "Marine Tech Officer's Locker"
	req_access = list()
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"

	New()
		sleep(2)
		new /obj/item/clothing/shoes/marine(src)
		new /obj/item/clothing/gloves/marine/techofficer(src)
		new /obj/item/clothing/under/marine/officer/technical(src)
		new /obj/item/clothing/suit/storage/marine/officer/technical(src)
		new /obj/item/weapon/storage/belt/marine(src)
		new /obj/item/clothing/head/beret/marine/techofficer(src)
		new /obj/item/device/flashlight(src)
		new /obj/item/clothing/glasses/sunglasses(src)
		new /obj/item/device/radio/headset/mcom(src)
		return

//STANDARD MARINE CLOSET
/obj/structure/closet/secure_closet/marine
	name = "Marine's Locker"
	req_access = list()
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"

	New()
		sleep(2)
		new /obj/item/clothing/suit/storage/marine(src)
		new /obj/item/weapon/storage/belt/marine(src)
		new /obj/item/clothing/head/helmet/marine(src)
		new /obj/item/device/flashlight(src)
		new /obj/item/clothing/glasses/sunglasses(src)
		new /obj/item/clothing/shoes/marine(src)
		new /obj/item/clothing/gloves/marine(src)
		new /obj/item/clothing/under/marine(src)
		return



/obj/item/weapon/storage/belt/marine
	name = "marine belt"
	desc = "A standard issue toolbelt for Nanotrasen military forces."
	icon_state = "securitybelt"
	item_state = "security"//Could likely use a better one.
	storage_slots = 7
	max_w_class = 3
	max_combined_w_class = 21
	can_hold = list(
		"/obj/item/weapon/gun/projectile/pistol",
		"/obj/item/ammo_magazine/a12mm",
		"/obj/item/ammo_magazine/c45",
		"/obj/item/ammo_magazine/mc9mm",
		"/obj/item/ammo_magazine/a50",
		"/obj/item/ammo_magazine/c9mm",
		"/obj/item/ammo_magazine/a357",
		"/obj/item/ammo_magazine/c38",
		"/obj/item/weapon/melee/baton",
		"/obj/item/ammo_magazine/m45s",
		"/obj/item/ammo_magazine/m38s",
		"/obj/item/ammo_magazine/m9mms",
		"/obj/item/ammo_magazine/m10mms",
		"/obj/item/weapon/storage/box/mshotguns",
		"/obj/item/ammo_casing/mshotgun",
		)

/obj/item/weapon/storage/belt/marine/full/New()
	..()
	new /obj/item/weapon/gun/projectile/pistol/colt1911(src)
	new /obj/item/ammo_magazine/m38s(src)
	new /obj/item/ammo_magazine/m38s(src)



/**********************Military Police Gear**************************/
/obj/structure/closet/secure_closet/military_officer
	name = "Military Police's Locker"
	req_access = list()
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"

	New()
		sleep(2)
		new /obj/item/clothing/shoes/marine(src)
		new /obj/item/clothing/under/marine/mp(src)
		new /obj/item/clothing/suit/armor/riot/marine(src)
		new /obj/item/clothing/head/helmet/riot(src)
		new /obj/item/weapon/storage/belt/marine(src)
		new /obj/item/weapon/storage/box/beanbags(src)
		new /obj/item/device/flashlight(src)
		new /obj/item/clothing/glasses/sunglasses(src)
		new /obj/item/device/radio/headset/mcom(src)
		new /obj/item/weapon/gun/twohanded/projectile/shotgun/pump/riot(src)
		new /obj/item/weapon/melee/baton(src)
		return


/obj/structure/closet/secure_closet/military_officer_spare
	name = "Extra Equipment Locker"
	req_access = list()
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"

	New()
		sleep(2)
		new /obj/item/clothing/shoes/marine(src)
		new /obj/item/clothing/under/marine/mp(src)
		new /obj/item/clothing/suit/armor/riot/marine(src)
		new /obj/item/clothing/head/helmet/riot(src)
		new /obj/item/weapon/storage/box/beanbags(src)
		new /obj/item/weapon/storage/box/beanbags(src)
		new /obj/item/weapon/storage/box/beanbags(src)
		new /obj/item/device/flashlight(src)
		new /obj/item/clothing/glasses/sunglasses(src)
		new /obj/item/device/radio/headset/mcom(src)
		new /obj/item/weapon/gun/twohanded/projectile/shotgun/pump/riot(src)
		new /obj/item/weapon/shield/riot(src)
		new /obj/item/weapon/shield/riot(src)
		new /obj/item/weapon/melee/baton(src)
		return



/**********************Alpha Squad Gear**************************/
//ALPHA MEDICAL CLOSET
/obj/structure/closet/secure_closet/marine_alpha_medical
	name = "Alpha Medic's Locker"
	req_access = list()
	icon_state = "securemed1"
	icon_closed = "securemed"
	icon_locked = "securemed1"
	icon_opened = "securemedopen"
	icon_broken = "securemedbroken"
	icon_off = "securemedoff"

	New()
		sleep(2)
		new /obj/item/weapon/storage/belt/medical(src)
		new /obj/item/device/radio/headset/malpha(src)
		new /obj/item/weapon/storage/belt/medical(src)
		new /obj/item/device/radio/headset/malpha(src)
		new /obj/item/weapon/storage/belt/medical(src)
		new /obj/item/device/radio/headset/malpha(src)
		return



//ALPHA LEADER CLOSET
/obj/structure/closet/secure_closet/marine_alpha_leader
	name = "Alpha Leader's Locker"
	req_access = list()
	icon_state = "capsecure1"
	icon_closed = "capsecure"
	icon_locked = "capsecure1"
	icon_opened = "capsecureopen"
	icon_broken = "capsecurebroken"
	icon_off = "capsecureoff"

	New()
		sleep(2)
		new /obj/item/device/radio/headset/malphal(src)
		return

//ALPHA ENGINEERING CLOSET
/obj/structure/closet/secure_closet/marine_alpha_engineering
	name = "Alpha Engineer's Locker"
	req_access = list()
	icon_state = "secureeng1"
	icon_closed = "secureeng"
	icon_locked = "secureeng1"
	icon_opened = "secureengopen"
	icon_broken = "secureengbroken"
	icon_off = "secureengoff"

	New()
		sleep(2)
		new /obj/item/weapon/storage/belt/utility/full(src)
		new /obj/item/device/radio/headset/malpha(src)
		new /obj/item/weapon/storage/belt/utility/full(src)
		new /obj/item/device/radio/headset/malpha(src)
		new /obj/item/weapon/storage/belt/utility/full(src)
		new /obj/item/device/radio/headset/malpha(src)
		return


//ALPHA CLOTHING CLOSET
/obj/structure/closet/secure_closet/marine_alpha_clothing
	name = "Alpha Squad Standard Locker"
	req_access = list()
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"

	New()
		sleep(2)
		new /obj/item/clothing/gloves/marine/alpha(src)
		new /obj/item/clothing/under/marine/alpha(src)
		new /obj/item/clothing/gloves/marine/alpha(src)
		new /obj/item/clothing/under/marine/alpha(src)
		new /obj/item/clothing/gloves/marine/alpha(src)
		new /obj/item/clothing/under/marine/alpha(src)
		new /obj/item/clothing/gloves/marine/alpha(src)
		new /obj/item/clothing/under/marine/alpha(src)
		new /obj/item/clothing/gloves/marine/alpha(src)
		new /obj/item/clothing/under/marine/alpha(src)
		new /obj/item/clothing/gloves/marine/alpha(src)
		new /obj/item/clothing/under/marine/alpha(src)
		new /obj/item/clothing/gloves/marine/alpha(src)
		new /obj/item/clothing/under/marine/alpha(src)
		new /obj/item/clothing/gloves/marine/alpha(src)
		new /obj/item/clothing/under/marine/alpha(src)
		new /obj/item/clothing/gloves/marine/alpha(src)
		new /obj/item/clothing/under/marine/alpha(src)
		new /obj/item/clothing/gloves/marine/alpha(src)
		new /obj/item/clothing/under/marine/alpha(src)
		new /obj/item/clothing/gloves/marine/alpha(src)
		new /obj/item/clothing/under/marine/alpha(src)
		new /obj/item/clothing/gloves/marine/alpha(src)
		new /obj/item/clothing/under/marine/alpha(src)
		new /obj/item/device/flashlight(src)
		return

//ALPHA STANDARD MARINE CLOSET
/obj/structure/closet/secure_closet/marine_alpha_standard
	name = "Alpha Headsets Locker"
	req_access = list()
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"

	New()
		sleep(2)
		new /obj/item/device/radio/headset/malpha(src)
		new /obj/item/device/radio/headset/malpha(src)
		new /obj/item/device/radio/headset/malpha(src)
		new /obj/item/device/radio/headset/malpha(src)
		new /obj/item/device/radio/headset/malpha(src)
		new /obj/item/device/radio/headset/malpha(src)
		new /obj/item/device/radio/headset/malpha(src)
		new /obj/item/device/radio/headset/malpha(src)
		new /obj/item/device/radio/headset/malpha(src)
		new /obj/item/device/radio/headset/malpha(src)
		new /obj/item/device/radio/headset/malpha(src)
		new /obj/item/device/radio/headset/malpha(src)
		return

/**********************Bravo Squad Gear**************************/
//BRAVO MEDICAL CLOSET
/obj/structure/closet/secure_closet/marine_bravo_medical
	name = "Bravo Medic's Locker"
	req_access = list()
	icon_state = "securemed1"
	icon_closed = "securemed"
	icon_locked = "securemed1"
	icon_opened = "securemedopen"
	icon_broken = "securemedbroken"
	icon_off = "securemedoff"

	New()
		sleep(2)
		new /obj/item/weapon/storage/belt/medical(src)
		new /obj/item/device/radio/headset/mbravo(src)
		new /obj/item/weapon/storage/belt/medical(src)
		new /obj/item/device/radio/headset/mbravo(src)
		new /obj/item/weapon/storage/belt/medical(src)
		new /obj/item/device/radio/headset/mbravo(src)
		return



//BRAVO LEADER CLOSET
/obj/structure/closet/secure_closet/marine_bravo_leader
	name = "Bravo Leader's Locker"
	req_access = list()
	icon_state = "capsecure1"
	icon_closed = "capsecure"
	icon_locked = "capsecure1"
	icon_opened = "capsecureopen"
	icon_broken = "capsecurebroken"
	icon_off = "capsecureoff"

	New()
		sleep(2)
		new /obj/item/device/radio/headset/mbravol(src)
		return

//BRAVO ENGINEERING CLOSET
/obj/structure/closet/secure_closet/marine_bravo_engineering
	name = "Bravo Engineer's Locker"
	req_access = list()
	icon_state = "secureeng1"
	icon_closed = "secureeng"
	icon_locked = "secureeng1"
	icon_opened = "secureengopen"
	icon_broken = "secureengbroken"
	icon_off = "secureengoff"

	New()
		sleep(2)
		new /obj/item/weapon/storage/belt/utility/full(src)
		new /obj/item/device/radio/headset/mbravo(src)
		new /obj/item/weapon/storage/belt/utility/full(src)
		new /obj/item/device/radio/headset/mbravo(src)
		new /obj/item/weapon/storage/belt/utility/full(src)
		new /obj/item/device/radio/headset/mbravo(src)
		return


//BRAVO CLOTHING CLOSET
/obj/structure/closet/secure_closet/marine_bravo_clothing
	name = "Bravo Squad Standard Locker"
	req_access = list()
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"

	New()
		sleep(2)
		new /obj/item/clothing/gloves/marine/bravo(src)
		new /obj/item/clothing/under/marine/bravo(src)
		new /obj/item/clothing/gloves/marine/bravo(src)
		new /obj/item/clothing/under/marine/bravo(src)
		new /obj/item/clothing/gloves/marine/bravo(src)
		new /obj/item/clothing/under/marine/bravo(src)
		new /obj/item/clothing/gloves/marine/bravo(src)
		new /obj/item/clothing/under/marine/bravo(src)
		new /obj/item/clothing/gloves/marine/bravo(src)
		new /obj/item/clothing/under/marine/bravo(src)
		new /obj/item/clothing/gloves/marine/bravo(src)
		new /obj/item/clothing/under/marine/bravo(src)
		new /obj/item/clothing/gloves/marine/bravo(src)
		new /obj/item/clothing/under/marine/bravo(src)
		new /obj/item/clothing/gloves/marine/bravo(src)
		new /obj/item/clothing/under/marine/bravo(src)
		new /obj/item/device/flashlight(src)
		new /obj/item/clothing/glasses/sunglasses(src)
		return

//BRAVO STANDARD MARINE CLOSET
/obj/structure/closet/secure_closet/marine_bravo_standard
	name = "Bravo Headsets Locker"
	req_access = list()
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"

	New()
		sleep(2)
		new /obj/item/device/radio/headset/mbravo(src)
		new /obj/item/device/radio/headset/mbravo(src)
		new /obj/item/device/radio/headset/mbravo(src)
		new /obj/item/device/radio/headset/mbravo(src)
		new /obj/item/device/radio/headset/mbravo(src)
		new /obj/item/device/radio/headset/mbravo(src)
		new /obj/item/device/radio/headset/mbravo(src)
		new /obj/item/device/radio/headset/mbravo(src)
		new /obj/item/device/radio/headset/mbravo(src)
		new /obj/item/device/radio/headset/mbravo(src)
		new /obj/item/device/radio/headset/mbravo(src)
		new /obj/item/device/radio/headset/mbravo(src)
		return

/**********************Charlie Squad Gear**************************/
//CHARLIE MEDICAL CLOSET
/obj/structure/closet/secure_closet/marine_charlie_medical
	name = "Charlie Medic's Locker"
	req_access = list()
	icon_state = "securemed1"
	icon_closed = "securemed"
	icon_locked = "securemed1"
	icon_opened = "securemedopen"
	icon_broken = "securemedbroken"
	icon_off = "securemedoff"

	New()
		sleep(2)
		new /obj/item/weapon/storage/belt/medical(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		new /obj/item/weapon/storage/belt/medical(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		new /obj/item/weapon/storage/belt/medical(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		return



//CHARLIE LEADER CLOSET
/obj/structure/closet/secure_closet/marine_charlie_leader
	name = "Charlie Leader's Locker"
	req_access = list()
	icon_state = "capsecure1"
	icon_closed = "capsecure"
	icon_locked = "capsecure1"
	icon_opened = "capsecureopen"
	icon_broken = "capsecurebroken"
	icon_off = "capsecureoff"

	New()
		sleep(2)
		new /obj/item/device/radio/headset/mcharliel(src)
		return

//CHARLIE ENGINEERING CLOSET
/obj/structure/closet/secure_closet/marine_charlie_engineering
	name = "Charlie Engineer's Locker"
	req_access = list()
	icon_state = "secureeng1"
	icon_closed = "secureeng"
	icon_locked = "secureeng1"
	icon_opened = "secureengopen"
	icon_broken = "secureengbroken"
	icon_off = "secureengoff"

	New()
		sleep(2)
		new /obj/item/weapon/storage/belt/utility/full(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		new /obj/item/weapon/storage/belt/utility/full(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		new /obj/item/weapon/storage/belt/utility/full(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		return


//CHARLIE CLOTHING CLOSET
/obj/structure/closet/secure_closet/marine_charlie_clothing
	name = "Charlie Standard Squad Locker"
	req_access = list()
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"

	New()
		sleep(2)
		new /obj/item/clothing/gloves/marine/charlie(src)
		new /obj/item/clothing/under/marine/charlie(src)
		new /obj/item/clothing/gloves/marine/charlie(src)
		new /obj/item/clothing/under/marine/charlie(src)
		new /obj/item/clothing/gloves/marine/charlie(src)
		new /obj/item/clothing/under/marine/charlie(src)
		new /obj/item/clothing/gloves/marine/charlie(src)
		new /obj/item/clothing/under/marine/charlie(src)
		new /obj/item/clothing/gloves/marine/charlie(src)
		new /obj/item/clothing/under/marine/charlie(src)
		new /obj/item/clothing/gloves/marine/charlie(src)
		new /obj/item/clothing/under/marine/charlie(src)
		new /obj/item/clothing/gloves/marine/charlie(src)
		new /obj/item/clothing/under/marine/charlie(src)
		new /obj/item/clothing/gloves/marine/charlie(src)
		new /obj/item/clothing/under/marine/charlie(src)
		new /obj/item/clothing/gloves/marine/charlie(src)
		new /obj/item/clothing/under/marine/charlie(src)
		new /obj/item/device/flashlight(src)
		return

//CHARLIE STANDARD MARINE CLOSET
/obj/structure/closet/secure_closet/marine_charlie_standard
	name = "Charlie Headsets Locker"
	req_access = list()
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"

	New()
		sleep(2)
		new /obj/item/device/radio/headset/mcharlie(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		new /obj/item/device/radio/headset/mcharlie(src)
		return

/**********************Delta Squad Gear**************************/
//DELTA MEDICAL CLOSET
/obj/structure/closet/secure_closet/marine_delta_medical
	name = "Delta Medic's Locker"
	req_access = list()
	icon_state = "securemed1"
	icon_closed = "securemed"
	icon_locked = "securemed1"
	icon_opened = "securemedopen"
	icon_broken = "securemedbroken"
	icon_off = "securemedoff"

	New()
		sleep(2)
		new /obj/item/weapon/storage/belt/medical(src)
		new /obj/item/device/radio/headset/mdelta(src)
		new /obj/item/weapon/storage/belt/medical(src)
		new /obj/item/device/radio/headset/mdelta(src)
		new /obj/item/weapon/storage/belt/medical(src)
		new /obj/item/device/radio/headset/mdelta(src)
		return



//DELTA LEADER CLOSET
/obj/structure/closet/secure_closet/marine_delta_leader
	name = "Delta Leader's Locker"
	req_access = list()
	icon_state = "capsecure1"
	icon_closed = "capsecure"
	icon_locked = "capsecure1"
	icon_opened = "capsecureopen"
	icon_broken = "capsecurebroken"
	icon_off = "capsecureoff"

	New()
		sleep(2)
		new /obj/item/device/radio/headset/mdeltal(src)
		return

//DELTA ENGINEERING CLOSET
/obj/structure/closet/secure_closet/marine_delta_engineering
	name = "Delta Engineer's Locker"
	req_access = list()
	icon_state = "secureeng1"
	icon_closed = "secureeng"
	icon_locked = "secureeng1"
	icon_opened = "secureengopen"
	icon_broken = "secureengbroken"
	icon_off = "secureengoff"

	New()
		sleep(2)
		new /obj/item/weapon/storage/belt/utility/full(src)
		new /obj/item/device/radio/headset/mdelta(src)
		new /obj/item/weapon/storage/belt/utility/full(src)
		new /obj/item/device/radio/headset/mdelta(src)
		new /obj/item/weapon/storage/belt/utility/full(src)
		new /obj/item/device/radio/headset/mdelta(src)
		return


//DELTA CLOTHING CLOSET
/obj/structure/closet/secure_closet/marine_delta_clothing
	name = "Delta Squad Standard Locker"
	req_access = list()
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"

	New()
		sleep(2)
		new /obj/item/clothing/gloves/marine/delta(src)
		new /obj/item/clothing/under/marine/delta(src)
		new /obj/item/clothing/gloves/marine/delta(src)
		new /obj/item/clothing/under/marine/delta(src)
		new /obj/item/clothing/gloves/marine/delta(src)
		new /obj/item/clothing/under/marine/delta(src)
		new /obj/item/clothing/gloves/marine/delta(src)
		new /obj/item/clothing/under/marine/delta(src)
		new /obj/item/clothing/gloves/marine/delta(src)
		new /obj/item/clothing/under/marine/delta(src)
		new /obj/item/clothing/gloves/marine/delta(src)
		new /obj/item/clothing/under/marine/delta(src)
		new /obj/item/clothing/gloves/marine/delta(src)
		new /obj/item/clothing/under/marine/delta(src)
		new /obj/item/clothing/gloves/marine/delta(src)
		new /obj/item/clothing/under/marine/delta(src)
		new /obj/item/device/flashlight(src)
		return

//DELTA STANDARD MARINE CLOSET
/obj/structure/closet/secure_closet/marine_delta_standard
	name = "Delta Headsets Locker"
	req_access = list()
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"

	New()
		sleep(2)
		new /obj/item/device/radio/headset/mdelta(src)
		new /obj/item/device/radio/headset/mdelta(src)
		new /obj/item/device/radio/headset/mdelta(src)
		new /obj/item/device/radio/headset/mdelta(src)
		new /obj/item/device/radio/headset/mdelta(src)
		new /obj/item/device/radio/headset/mdelta(src)
		new /obj/item/device/radio/headset/mdelta(src)
		new /obj/item/device/radio/headset/mdelta(src)
		new /obj/item/device/radio/headset/mdelta(src)
		new /obj/item/device/radio/headset/mdelta(src)
		new /obj/item/device/radio/headset/mdelta(src)
		new /obj/item/device/radio/headset/mdelta(src)
		return
