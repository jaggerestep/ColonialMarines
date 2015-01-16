//MARINE VENDING - APOPHIS775 15JAN2015


///******MARINE VENDOR******///

/obj/machinery/vending/marine
	name = "ColMarTech"
	desc = "A marine equipment vendor"
	product_ads = "If it moves, it's hostile!;How many enemies have you killed today?;Shoot first, perform autopsy later!;Your ammo is right here.;Guns!;Die, scumbag!;Don't shoot me bro!;Shoot them, bro.;Why not have a donut?"
	products = list(/obj/item/weapon/reagent_containers/food/snacks/donut/normal = 25,

					/obj/item/weapon/gun/projectile/pistol/m4a3 = 5,
					/obj/item/weapon/gun/projectile/m44m = 5,
					/obj/item/weapon/gun/projectile/automatic/m39 = 5,
					/obj/item/weapon/gun/twohanded/projectile/Assault/m41 = 5,
					/obj/item/weapon/gun/twohanded/projectile/shotgun/pump/m37 = 5,
					/obj/item/weapon/gun/projectile/twohanded/automatic/l6_saw = 2,


					/obj/item/ammo_magazine/m4a3 = 25,
					/obj/item/ammo_magazine/m44m =25,
					/obj/item/ammo_magazine/m39 = 25,
					/obj/item/ammo_magazine/m41 = 25,
					/obj/item/weapon/storage/box/m37 = 25,
					/obj/item/ammo_magazine/a762 = 10,


//					/obj/item/device/motiondetector = 5,
					/obj/item/weapon/combat_knife = 5,
					/obj/item/device/flashlight/flare = 10,
					)
	contraband = list(/*bj/item/weapon/storage/fancy/donut_box = 5,
					/obj/item/ammo_magazine/a357 = 5,
					/obj/item/ammo_magazine/a50 = 5,*/
					)
	premium = list(
				/obj/item/ammo_magazine/a762 = 5,
				)
	prices = list(/*/obj/item/weapon/reagent_containers/food/snacks/donut/normal = 1,
					/obj/item/ammo_magazine/c38 = 6,
					/obj/item/weapon/storage/box/beanbags = 7,
					/obj/item/ammo_magazine/mc9mm = 20,
					/obj/item/weapon/storage/box/shotguns = 42,
					/obj/item/ammo_magazine/a12mm = 50,
					/obj/item/ammo_magazine/c45 = 60,
					/obj/item/ammo_magazine/c9mm = 75,
					/obj/item/weapon/gun/projectile/detective = 60,
					/obj/item/weapon/gun/projectile/silenced = 200,
					/obj/item/weapon/gun/projectile/pistol = 240,
					/obj/item/weapon/gun/projectile/automatic/mini_uzi = 320,
					/obj/item/weapon/gun/projectile/automatic = 450,
					/obj/item/weapon/gun/projectile/automatic/c20r = 500,
					/obj/item/weapon/gun/projectile/shotgun/pump = 40,
					/obj/item/weapon/gun/projectile/shotgun/pump/combat = 480,
					/obj/item/weapon/storage/fancy/donut_box = 7,
					/obj/item/ammo_magazine/a357 = 42,
					/obj/item/ammo_magazine/a50 = 42,
					/obj/item/ammo_magazine/a762 = 125,*/
				)

//MARINE FOOD VENDOR APOPHIS775 10JAN2014
/obj/machinery/vending/marineFood
	name = "Marine Food Vendor"
	desc = "Standard Issue Food Vendor, containing standard military food"
	icon_state = "boozeomat"        //////////////18 drink entities below, plus the glasses, in case someone wants to edit the number of bottles
	icon_deny = "boozeomat-deny"
	products = list(/obj/item/weapon/reagent_containers/food/snacks/monkeyburger = 20, /obj/item/weapon/reagent_containers/food/snacks/tofuburger = 5,
					/obj/item/weapon/reagent_containers/food/snacks/omelette = 10, /obj/item/weapon/reagent_containers/food/snacks/muffin = 20,
					/obj/item/weapon/reagent_containers/food/snacks/sosjerky = 30, /obj/item/weapon/reagent_containers/food/snacks/meatsteak = 10)
	contraband = list(/obj/item/weapon/reagent_containers/food/drinks/tea = 10)
	vend_delay = 15
	product_slogans = "Standard Issue Marine food!;It's good for you, and not the worst thing in the world.;Just fucking eat it;"
	product_ads = "Your only choice for food...Literally;"
	req_access_txt = ""


//MARINE MEDICAL VENDOR
/obj/machinery/vending/MarineMed
	name = "MarineMed"
	desc = "Advanced Marine Drug Dispenser"
	icon_state = "med"
	icon_deny = "med-deny"
	product_ads = "Go save some lives!;The best stuff for your medbay.;Only the finest tools.;Natural chemicals!;This stuff saves lives.;Don't you want some?;Ping!"
	req_access_txt = "0"
	products = list(/obj/item/weapon/reagent_containers/hypospray/autoinjector/tricord = 10,  /obj/item/weapon/reagent_containers/hypospray/autoinjector/quickclot = 10,
					/obj/item/weapon/reagent_containers/hypospray/autoinjector/dexP =10)
	contraband = list(/obj/item/weapon/reagent_containers/pill/tox = 3,/obj/item/weapon/reagent_containers/pill/stox = 4,/obj/item/weapon/reagent_containers/pill/antitox = 6)
