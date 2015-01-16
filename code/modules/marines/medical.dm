//MARINE SPECIAL CHEMICALS -APOPHIS 15JAN2015

//Auto-injectors Items

/obj/item/weapon/reagent_containers/hypospray/autoinjector/tricord
	name = "Tricordrazine Auto-Injector"
	desc = "An auto-injector loaded with Tricordrazine."
	icon_state = "autoinjector"
	item_state = "autoinjector"
	amount_per_transfer_from_this = 5
	volume = 5

/obj/item/weapon/reagent_containers/hypospray/autoinjector/quickclot
	name = "Quick Clot"
	desc = "An Auto-injector loaded with Quick-clot, a chemical designed to stop internal bleeding instantly."
	icon_state = "autoinjector"
	item_state = "autoinjector"
	amount_per_transfer_from_this = 5
	volume = 5

/obj/item/weapon/reagent_containers/hypospray/autoinjector/dexP
	name = "Dexalin Plus Auto-Injector"
	desc = "A rapid and safe way to administer small amounts of drugs by untrained or trained personnel."
	icon_state = "autoinjector"
	item_state = "autoinjector"
	amount_per_transfer_from_this = 10
	volume = 10



//Auto-injector Generation Proc (to change the chemicals)
/obj/item/weapon/reagent_containers/hypospray/autoinjector/tricord/New()
	..()

	reagents.remove_reagent("inaprovaline", 5)
	reagents.add_reagent("tricordrazine", 5)
	update_icon()
	return

/obj/item/weapon/reagent_containers/hypospray/autoinjector/quickclot/New()
	..()
	reagents.remove_reagent("inaprovaline", 5)
	reagents.add_reagent("quickclot", 5)
	update_icon()
	return

/obj/item/weapon/reagent_containers/hypospray/autoinjector/dexP/New()
	..()

	reagents.remove_reagent("inaprovaline", 5)
	reagents.add_reagent("dexalinp", 10)
	update_icon()
	return