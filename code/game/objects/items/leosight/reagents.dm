/datum/reagent/toxin/ls_lobbarika
	name = "Lobbarika"
	description = "Lobbarika deals high amounts of toxin damage and heavy weakness."
	silent_toxin = TRUE
	reagent_state = LIQUID
	color = "#BEA06A"
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
	results = list(/datum/reagent/toxin/ls_lobbarika = 3)
	required_reagents = list(/datum/reagent/uranium/radium = 1, /datum/reagent/potassium = 1, /datum/reagent/chlorine = 1)
	required_temp = 380
