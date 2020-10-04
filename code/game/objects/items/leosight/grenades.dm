/obj/item/grenade/chem_grenade/ls_executor
	name = "executor grenade"
	desc = "BLAM! You're gonna be BLAM-ed!"
	stage = GRENADE_READY

/obj/item/grenade/chem_grenade/ls_executor/Initialize()
	. = ..()
	var/obj/item/reagent_containers/glass/beaker/large/B1 = new(src)
	var/obj/item/reagent_containers/glass/beaker/large/B2 = new(src)

	B1.reagents.add_reagent(/datum/reagent/sugar, 10)
	B1.reagents.add_reagent(/datum/reagent/stableplasma, 25)
	B1.reagents.add_reagent(/datum/reagent/sulphuricacid, 20)
	B1.reagents.add_reagent(/datum/reagent/aluminium, 5)
	B1.reagents.add_reagent(/datum/reagent/radium, 5)
	B1.reagents.add_reagent(/datum/reagent/fluorine, 30)
	B2.reagents.add_reagent(/datum/reagent/fluorosulfuricacid, 20)
	B2.reagents.add_reagent(/datum/reagent/potassium, 15)
	B2.reagents.add_reagent(/datum/reagent/phosphorus, 30)
	B2.reagents.add_reagent(/datum/reagent/chlorine, 10)
	B2.reagents.add_reagent(/datum/reagent/beepskysmash, 10)
	B2.reagents.add_reagent(/datum/reagent/sulfur, 5)
	B2.reagents.add_reagent(/datum/reagent/carbon, 5)

	beakers += B1
	beakers += B2
