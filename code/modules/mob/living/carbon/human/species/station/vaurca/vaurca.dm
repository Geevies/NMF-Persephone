/datum/species/bug
	name = SPECIES_VAURCA_WORKER
	short_name = "vau"
	name_plural = "Type A"
	category_name = "Vaurca"
	bodytype = BODYTYPE_VAURCA
	age_min = 1
	age_max = 20
	default_genders = list(NEUTER)
	selectable_pronouns = null
	economic_modifier = 2
	language = LANGUAGE_VAURCA
	primitive_form = SPECIES_MONKEY_VAURCA
	greater_form = SPECIES_VAURCA_WARRIOR
	icobase = 'icons/mob/human_races/vaurca/r_vaurca.dmi'
	deform = 'icons/mob/human_races/vaurca/r_vaurca.dmi'
	preview_icon = 'icons/mob/human_races/vaurca/vaurca_preview.dmi'
	bandages_icon = 'icons/mob/bandage.dmi'
	name_language = LANGUAGE_VAURCA
	unarmed_types = list(
		/datum/unarmed_attack/stomp,
		/datum/unarmed_attack/kick,
		/datum/unarmed_attack/claws,
		/datum/unarmed_attack/bite/sharp
	)
	meat_type = /obj/item/reagent_containers/food/snacks/meat/bug
	rarity_value = 4
	slowdown = 1
	darksight = 8 //USELESS
	eyes = "vaurca_eyes" //makes it so that eye colour is not changed when skin colour is.
	eyes_are_impermeable = TRUE

	brute_mod = 0.5
	burn_mod = 1.5 //2x was a bit too much. we'll see how this goes.
	toxins_mod = 2 //they're not used to all our weird human bacteria.
	oxy_mod = 0.6
	radiation_mod = 0.2 //almost total radiation protection
	bleed_mod = 2.2
	injection_mod = 2

	grab_mod = 1.1
	resist_mod = 1.75

	warning_low_pressure = 50
	hazard_low_pressure = 0
	ethanol_resistance = 2
	taste_sensitivity = TASTE_SENSITIVE
	reagent_tag = IS_VAURCA
	siemens_coefficient = 1 //setting it to 0 would be redundant due to LordLag's snowflake checks, plus batons/tasers use siemens now too.
	breath_type = GAS_PHORON
	breath_vol_mul = 1/6 // 0.5 liters * breath_vol_mul = breath volume
	breath_eff_mul = 6 // 1/6 * breath_eff_mul = fraction of gas consumed
	poison_type = GAS_NITROGEN //a species that breathes plasma shouldn't be poisoned by it.
	breathing_sound = null //They don't work that way I guess? I'm a coder not a purple man.
	mob_size = 13 //their half an inch thick exoskeleton and impressive height.
	natural_climbing = TRUE
	climb_coeff = 0.75

	blurb = "Ka or Type A: Worker forms, endlessly ranging in variety depending on what one was designed to do. \
	Workers can range from 4 feet tall with two stubby legs and two long arms to 10 feet tall with four arms, two bulky legs and several pairs of small eyes. \
	Workers are typically bulkier than warriors, having increased durability at the cost of mobility. Some forms are of course exempt from this. \
	It should be noted that workers are typically very uncomfortable with violence. \
	But due to conflicts with the Tilla hive, workers have been instructed by their local MV forms to be especially ready for conflict at all times, negating their natural pacifism. \
	<b>Type A are comfortable in any department except security. There will almost never be a Worker in a security position, as they are as a type disposed against combat.</b>"

	cold_level_1 = 100 // Spaceproof, but space still feels cold to them.
	cold_level_2 = 50
	cold_level_3 = 1

	heat_level_1 = 420 // They evolved on a volcanic deathworld.
	heat_level_2 = 450
	heat_level_3 = 600
	flags = NO_SLIP | NO_CHUBBY | NO_ARTERIES | PHORON_IMMUNE
	spawn_flags = CAN_JOIN | IS_WHITELISTED | NO_AGE_MINIMUM
	appearance_flags = HAS_SKIN_COLOR | HAS_HAIR_COLOR
	blood_color = COLOR_VAURCA_BLOOD // dark yellow
	flesh_color = "#E6E600"
	base_color = "#575757"

	halloss_message = "crumbles to the ground, too weak to continue fighting."

	heat_discomfort_strings = list(
		"Your blood feels like its boiling in the heat.",
		"You feel uncomfortably warm.",
		"Your carapace feels hot as the sun."
	)

	cold_discomfort_strings = list(
		"You chitter in the cold.",
		"You shiver suddenly.",
		"Your carapace is ice to the touch."
	)

	stamina = 100			  // Long period of sprinting, but relatively low speed gain
	sprint_speed_factor = 0.7
	sprint_cost_factor = 0.30
	stamina_recovery = 2	//slow recovery

	has_organ = list(
		BP_PHEROMONE_PROCESSOR = /obj/item/organ/internal/pheromoneprocessor/vaurca,
		BP_LUNGS               = /obj/item/organ/internal/lungs/vaurca,
		BP_FILTRATION_BIT       = /obj/item/organ/vaurca/filtrationbit,
		BP_HEART               = /obj/item/organ/internal/heart/vaurca,
		BP_PHORON_RESERVE  = /obj/item/organ/vaurca/preserve,
		BP_LIVER               = /obj/item/organ/internal/liver/vaurca,
		BP_KIDNEYS             = /obj/item/organ/internal/kidneys/vaurca,
		BP_STOMACH             = /obj/item/organ/internal/stomach/vaurca,
		BP_APPENDIX            = /obj/item/organ/internal/appendix/vaurca,
		BP_BRAIN               = /obj/item/organ/internal/brain/vaurca,
		BP_EYES                = /obj/item/organ/internal/eyes/night/vaurca
	)

	has_limbs = list(
		BP_CHEST =  list("path" = /obj/item/organ/external/chest/vaurca),
		BP_GROIN =  list("path" = /obj/item/organ/external/groin/vaurca),
		BP_HEAD =   list("path" = /obj/item/organ/external/head/vaurca),
		BP_L_ARM =  list("path" = /obj/item/organ/external/arm/vaurca),
		BP_R_ARM =  list("path" = /obj/item/organ/external/arm/right/vaurca),
		BP_L_LEG =  list("path" = /obj/item/organ/external/leg/vaurca),
		BP_R_LEG =  list("path" = /obj/item/organ/external/leg/right/vaurca),
		BP_L_HAND = list("path" = /obj/item/organ/external/hand/vaurca),
		BP_R_HAND = list("path" = /obj/item/organ/external/hand/right/vaurca),
		BP_L_FOOT = list("path" = /obj/item/organ/external/foot/vaurca),
		BP_R_FOOT = list("path" = /obj/item/organ/external/foot/right/vaurca)
		)

	default_h_style = "Classic Antennae"

	move_trail = /obj/effect/decal/cleanable/blood/tracks/claw

	allowed_citizenships = list(CITIZENSHIP_NONE, CITIZENSHIP_XAL)
	allowed_religions = list(RELIGION_COALESCENCE_OF_MINDS, RELIGION_PAST_GODDESS, RELIGION_NONE, RELIGION_OTHER)
	default_citizenship = CITIZENSHIP_NONE

	default_accent = ACCENT_TTS
	allowed_accents = list(ACCENT_TTS)

	alterable_internal_organs = list(BP_HEART, BP_EYES, BP_LUNGS, BP_STOMACH, BP_APPENDIX)

/datum/species/bug/before_equip(var/mob/living/carbon/human/H)
	. = ..()
	H.gender = NEUTER
	var/obj/item/clothing/mask/breath/vaurca/filter/M = new /obj/item/clothing/mask/breath/vaurca/filter(H)
	if(H.equip_to_slot_or_del(M, slot_wear_mask))
		M.autodrobe_no_remove = 1

/datum/species/bug/after_equip(var/mob/living/carbon/human/H)
	if(H.shoes)
		return
	var/obj/item/clothing/shoes/sandal/S = new /obj/item/clothing/shoes/sandal(H)
	if(H.equip_to_slot_or_del(S,slot_shoes))
		S.autodrobe_no_remove = 1

/datum/species/bug/handle_post_spawn(var/mob/living/carbon/human/H)
	H.gender = NEUTER
	return ..()

/datum/species/bug/has_psi_potential()
	return FALSE
	
/datum/species/bug/is_naturally_insulated()
	return TRUE

/datum/species/bug/can_hold_s_store(obj/item/I)
	if(I.w_class <= ITEMSIZE_SMALL)
		return TRUE
	return FALSE