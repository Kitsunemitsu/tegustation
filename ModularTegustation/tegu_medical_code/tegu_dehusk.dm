/datum/surgery/dehusk
	name = "Dehusking"
	desc = "An experimental surgical procedure that can remove husking from a burn victim"
	steps = list(/datum/surgery_step/incise,
				/datum/surgery_step/retract_skin,
				/datum/surgery_step/clamp_bleeders,
				/datum/surgery_step/dehusk)
	possible_locs = list(BODY_ZONE_CHEST)
	target_mobtypes = list(/mob/living/carbon/human)

/datum/surgery/advanced/wing_reconstruction/can_start(mob/user, mob/living/carbon/target)
	if(HAS_TRAIT(target, TRAIT_HUSK) && target.getFireLoss() < UNHUSK_DAMAGE_THRESHOLD)
		return TRUE

/datum/surgery_step/dehusk
	name = "start dehusking"
	implements = list(TOOL_HEMOSTAT = 100, TOOL_SCALPEL = 85, TOOL_SCREWDRIVER = 35, /obj/item/pen = 15)
	time = 300

/datum/surgery_step/dehusk/preop(mob/user, mob/living/carbon/target, target_zone, obj/item/tool, datum/surgery/surgery)
	display_results(user, target, "<span class='notice'>You begin to fix [target]'s charred skin...</span>",
		"<span class='notice'>[user] begins to fix [target]'s charred skin.</span>",
		"<span class='notice'>[user] begins to perform surgery on [target]'s skin.</span>")

/datum/surgery_step/dehusk/success(mob/user, mob/living/carbon/target, target_zone, obj/item/tool, datum/surgery/surgery, default_display_results = FALSE)
	if(HAS_TRAIT(target, TRAIT_HUSK) && target.getFireLoss() < UNHUSK_DAMAGE_THRESHOLD)
		target.cure_husk()
		target.visible_message("<span class='nicegreen'>[target]'s tissues are surgically repaired, taking on a more healthy appearance.")

	return ..()
