/obj/item/kitchen/knife/ls_hunting
	name = "hunting knife"
	desc = "Very fancy hunting knife, ideal for throwing."
	inhand_icon_state = "huntingknife"
	icon_state = "huntingknife"
	force = 15
	throwforce = 30
	throw_speed = 3
	throw_range = 20

/obj/item/kitchen/knife/ls_hunting/set_butchering()
	AddComponent(/datum/component/butchering, 80 - force, 100, force + 10)
