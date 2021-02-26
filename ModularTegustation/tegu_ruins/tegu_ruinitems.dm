//Kirie's First Aid Kit, and Special Biohood

/*
/obj/item/clothing/head/bio_hood/cmo/kirie
	icon = 'ModularTegustation/Teguicons/kirie_stuff/ruinitems.dmi'
	icon_state = "bio_kirie"
	*/


/obj/item/storage/firstaid/kirie
	name = "doctor's first aid kit"
	desc = "A faded, purple first aid kit, filled with questionable things. The words 'Happy 10th anniversary, Kirie.' are faded in the bottom left."
	icon_state = "kiriefirstaid"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/ruinitems.dmi'

	inhand_icon_state = "firstaid-o2"
	damagetype_healed = "all"


/obj/item/storage/firstaid/kirie/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/reagent_containers/glass/bottle/fentanyl = 1,
		/obj/item/reagent_containers/syringe = 1,
		/obj/item/healthanalyzer/advanced = 1,
//		/obj/item/clothing/head/bio_hood/cmo/kirie = 1,
		/obj/item/defibrillator/compact/combat/loaded = 1,
		/obj/item/reagent_containers/pill/patch/synthflesh = 3,
		/obj/item/reagent_containers/hypospray/medipen/atropine = 1)
	generate_items_inside(items_inside,src)
