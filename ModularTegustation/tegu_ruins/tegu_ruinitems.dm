//Kirie's First Aid Kit, and Special Biohood

/obj/item/clothing/head/bio_hood/cmo/kirie
	icon = 'ModularTegustation/Teguicons/kirie_stuff/ruinitems.dmi'
	worn_state = "bio_kirie"


/obj/item/storage/firstaid/kirie
	name = "doctor's first aid kit"
	desc = "A faded, purple first aid kit, filled with questionable things. The words 'Happy 10th anniversary, Kirie.' are faded in the bottom left."
	icon_state = "kiriefirstaid"
	icon = 'ModularTegustation/Teguicons/kirie_stuff/ruinitems.dmi'

	inhand_icon_state = "firstaid-o2"
	damagetype_healed = "all"


/obj/item/storage/firstaid/kirie/PopulateContents()
	new /obj/item/reagent_containers/glass/bottle/fentanyl(src),
	new /obj/item/reagent_containers/syringe(src),
	new /obj/item/healthanalyzer/advanced(src),
	new /obj/item/clothing/head/bio_hood/cmo/kirie(src),
	new /obj/item/autosurgeon/organ/cmo(src),)