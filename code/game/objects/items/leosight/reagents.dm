// ARDOR

/datum/reagent/ls_ardor
	name = "Ardor"
	description = "Ardor is bright blue liquid, that is used to create some special reagents."
	reagent_state = LIQUID
	color = "#30E0F3"
	taste_description = "metal"

/datum/chemical_reaction/ls_ardor
	results = list(/datum/reagent/ls_ardor = 3)
	required_reagents = list(/datum/reagent/uranium/radium = 1, /datum/reagent/potassium = 1, /datum/reagent/chlorine = 1)
	required_temp = 380

/obj/item/reagent_containers/glass/bottle/ls_ardor
	name = "ardor bottle"
	desc = "A small bottle. Contains ardor."
	list_reagents = list(/datum/reagent/ls_ardor = 30)


// LOBBARIKA

/datum/reagent/toxin/ls_lobbarika
	name = "Lobbarika"
	description = "Lobbarika deals high amounts of toxin damage and heavy weakness."
	silent_toxin = TRUE
	reagent_state = LIQUID
	color = "#BEA06A"
	taste_description = "metal"
	metabolization_rate = 0.15 * REAGENTS_METABOLISM
	toxpwr = 1.75

/datum/reagent/toxin/ls_lobbarika/on_mob_life(mob/living/carbon/M)
	if(current_cycle >= 10)
		M.Sleeping(40, 0)
	M.adjustStaminaLoss(10, 0)
	..()
	return TRUE

/obj/item/reagent_containers/glass/bottle/ls_lobbarika
	name = "lobbarika bottle"
	desc = "A small bottle. Contains lobbarika."
	list_reagents = list(/datum/reagent/toxin/ls_lobbarika = 30)

/datum/chemical_reaction/ls_lobbarika
	results = list(/datum/reagent/toxin/ls_lobbarika = 2)
	required_reagents = list(/datum/reagent/ls_ardor = 1, /datum/reagent/radium = 1)


// FREUNZ GAS

/datum/reagent/ls_freunzgas
	name = "Freunz gas"
	description = "Yellowish gas that causes weakness."
	reagent_state = GAS
	color = "#C6B23B"
	taste_description = "metal"

/datum/reagent/ls_freunzgas/on_mob_life(mob/living/carbon/M)
	M.adjustStaminaLoss(10, 0)
	..()

/obj/item/reagent_containers/glass/bottle/ls_freunzgas
	name = "freunz gas bottle"
	list_reagents = list(/datum/reagent/ls_freunzgas = 30)

/datum/chemical_reaction/ls_freunzgas
	results = list(/datum/reagent/toxin/ls_freunzgas = 2)
	required_reagents = list(/datum/reagent/ls_ardor = 1, /datum/reagent/chlorine = 1)
