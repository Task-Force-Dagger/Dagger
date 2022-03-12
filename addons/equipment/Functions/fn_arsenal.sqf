#include "..\script_component.hpp"
/*
Arguments:
0: items only misc items <ARRAY of STRING>
1: tooltip <STRING> (Optional)
2: picture path <STRING> (Optional)
3: override a spezific button (0-9) <NUMBER> (Optional)

Return Value:
successful: number of the slot; error: -1 <NUMBER>

Example:

call TFD_fnc_arsenal;

Public: Yes
*/

[
    ["ACRE_PRC117F","ACRE_PRC148","ACRE_PRC152","ACRE_PRC343","ACRE_PRC77","ACE_ATragMX","sps_black_hornet_01_Static_F","ItemAndroid","ItemMicroDAGR","ItemcTabHCam","ItemcTab","ACE_DAGR","ACE_HuntIR_monitor","uh60_jvmf_tablet","ACE_Kestrel4500","ACE_microDAGR","tun_tablet","ACRE_SEM52SL","ACRE_SEM70","ACRE_VHF30108SPIKE","ACRE_VHF30108","ACRE_VHF30108MAST","ACE_UAVBattery"],
    "Tech",
    "\a3\ui_f\data\GUI\Cfg\CommunicationMenu\call_ca.paa"
] call ACEFUNC(arsenal,addRightPanelButton);

[
    ["tfd_medbags_Trauma","kat_IO_FAST","kat_IV_16","kat_TXA","kat_amiodarone","kat_atropine","kat_lidocaine","kat_naloxone","kat_nitroglycerin","kat_norepinephrine","kat_phenylephrine","ACE_epinephrine","ACE_morphine","ACE_adenosine","kat_aatKit","kat_Painkiller","kat_accuvac","ACE_adenosine","tfd_epinephrine","ACE_epinephrine","kat_X_AED","tfd_NDC","ACE_elasticBandage","ACE_packingBandage","kat_crossPanel","kat_bloodIV_O","kat_bloodIV_A","kat_bloodIV_AB","ACE_bloodIV","kat_bloodIV_B","ACE_bloodIV_250","kat_bloodIV_O_250","kat_bloodIV_A_250","kat_bloodIV_AB_250","kat_bloodIV_B_250","ACE_bloodIV_500","kat_bloodIV_O_500","kat_bloodIV_A_500","kat_bloodIV_AB_500","kat_bloodIV_B_500","ACE_bodyBag","tfd_medbags_FirstAid","tfd_medbags_DrugKit","tfd_fentanyl","KAT_Empty_bloodIV_250","KAT_Empty_bloodIV_500","FirstAidKit","kat_AED","kat_chestSeal","kat_larynx","tfd_ketamine","ACE_fieldDressing","tfd_medbags_MedicKit","Medikit","tfd_morphine","ACE_morphine","tfd_naloxone","tfd_triangleban","kat_guedel","tfd_Apap","ACE_personalAidKit","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","kat_Pulseoximeter","ACE_quikclot","ACE_salineIV_250","ACE_salineIV","ACE_salineIV_500","ACE_splint","kat_stethoscope","vtx_stretcher_item","ACE_surgicalKit","tfd_tetra","ACE_tourniquet","Attachable_Helistretcher","tfd_VPN"],
    "Medical",
    "\z\ace\addons\medical_gui\data\categories\medication.paa"
] call ACEFUNC(arsenal,addRightPanelButton);

[
    ["ACE_IR_Strobe_Item","ACE_Chemlight_Shield","KNB_PanelGreen","KNB_PanelRed","KNB_PanelYellow","ACE_SpraypaintBlack","ACE_SpraypaintBlue","ACE_SpraypaintGreen","ACE_SpraypaintRed","taro_vs17_panel"],
    "Marking",
    "\z\ace\addons\arsenal\data\iconCustom.paa"
] call ACEFUNC(arsenal,addRightPanelButton);

[
    ["plp_bo_w_AfterSun","ACE_Banana","plp_bo_w_BeachBat","plp_bo_w_BocceBalls","plp_bo_w_BottleBitters","plp_bo_w_BottleBlueCorazol","plp_bo_w_BottleLiqCream","plp_bo_w_BottleGin","plp_bo_w_BottleLiqOrange","plp_bo_w_BottleTequila","plp_bo_w_CigarCutter","plp_bo_w_Cigar","plp_bo_w_CigarFine","plp_bo_w_GlassAperitif","plp_bo_w_GlassCocktail","plp_bo_w_GlassDrink","plp_bo_w_Lifebelt","plp_bo_w_LifeguardFloat","plp_bo_w_CigarBoxSealed","plp_bo_w_SunMilk","plp_bo_w_SunBlocker","CAF_Axe","ACE_Can_Franta","ACE_Can_RedGull","ACE_Can_Spirit","ACE_Canteen","ACE_Canteen_Empty","ACE_Canteen_Half","ACE_MRE_SteakVegetables","ACE_MRE_CreamTomatoSoup","ACE_MRE_CreamChickenSoup","ACE_MRE_ChickenHerbDumplings","ACE_MRE_ChickenTikkaMasala","ACE_MRE_BeefStew","ACE_MRE_LambCurry","ACE_MRE_MeatballsPasta"],
    "Stuff",
    "\a3\ui_f\data\Map\MapControl\tourism_CA.paa"
] call ACEFUNC(arsenal,addRightPanelButton);

[
    ["ACE_wirecutter","ToolKit","MineDetector","ACE_Clacker","ACE_M26_Clacker","ACE_EntrenchingTool","ACE_Fortify"],
    "Engineering",
    "\z\ace\addons\minedetector\ui\icon_mineDetector.paa"
] call ACEFUNC(arsenal,addRightPanelButton);

[
    ["USP_BAT_PVS31","USP_BOLTCUTTER","USP_CARABINER","USP_ROAM2","USP_CROWBAR","USP_CRYE_KNEEPAD","USP_FAST_COVER","USP_FAST_COVER_CBR","USP_FAST_COVER_MC","USP_FAST_COVER_RGR","USP_EARMUFF_GRN","USP_EARMUFF_TAN","USP_FACESHIELD","USP_FACESHIELD_GRN","USP_WRISTWATCH","USP_GOGGLE_COVER","USP_GOGGLE_COVER_FG","USP_GOGGLE_COVER_MC","USP_GUNSIGHT","USP_GUNSIGHT_MC","USP_GUNSIGHT_TAN","USP_COUNTERWEIGHT_CBR","USP_COUNTERWEIGHT_MC","USP_COUNTERWEIGHT_RGR","USP_ACC_GPNVG18","USP_ACC_PVS14","USP_ACC_PVS15","USP_ACC_PVS31","USP_MOHOC","USP_CHARGE","USP_MS2000","USP_MECHANIX","USP_MECHANIX_BLK2","USP_MECHANIX_CBR2","USP_MECHANIX_GRN","USP_MECHANIX_GRY","USP_MECHANIX_MC","USP_NIGHTCAP_CBR","USP_NIGHTCAP_MC","USP_NIGHTCAP_MCA","USP_NIGHTCAP_MCD","USP_NIGHTCAP_MCT","USP_NIGHTCAP_RGR","USP_OVERLORD","USP_OVERLORD_GRN","USP_OVERLORD_MC","USP_OVERLORD_MIX","USP_OVERLORD_TAN","USP_TOMAHAWK","USP_ZIPTIE","USP_SEALSTRIKE","USP_OVERLORD_CBR","USP_NIGHTCAP_MCB","USP_MOHOC_GRN","USP_ACC_GPNVG18_TAN","USP_COUNTERWEIGHT","USP_ACC_NSEAS","USP_FACESHIELD_TAN","USP_GOGGLE_COVER_TAN","USP_MECHANIX_CBR","USP_NIGHTCAP","USP_EARMUFF"],
    "USP",
    "z\tfd\addons\equipment\data\usp_icon.paa"
] call ACEFUNC(arsenal,addRightPanelButton);

[
    ["ade_item_cylinder_linked_6ltr_300bar_compressedAir","ade_item_cylinder_linked_6ltr_300bar_EAN28","ade_item_cylinder_linked_6ltr_300bar_EAN32","ade_item_cylinder_linked_6ltr_300bar_EAN36","ade_item_cylinder_linked_6ltr_300bar_EAN40","ade_item_cylinder_linked_6ltr_300bar_Heliox12","ade_item_cylinder_linked_6ltr_300bar_Heliox21","ade_item_cylinder_linked_6ltr_300bar_Heliox85","ade_item_cylinder_linked_6ltr_300bar_Tx1070","ade_item_cylinder_linked_6ltr_300bar_Tx1265","ade_item_cylinder_linked_6ltr_300bar_Tx1555","ade_item_cylinder_linked_6ltr_300bar_Tx1845","ade_item_cylinder_linked_6ltr_300bar_Tx2135","ade_item_cylinder_single_6ltr_300bar_compressedAir","ade_item_cylinder_single_6ltr_300bar_EAN28","ade_item_cylinder_single_6ltr_300bar_EAN36","ade_item_cylinder_single_6ltr_300bar_EAN32","ade_item_cylinder_single_6ltr_300bar_EAN40","ade_item_cylinder_single_6ltr_300bar_Heliox12","ade_item_cylinder_single_6ltr_300bar_Heliox21","ade_item_cylinder_single_6ltr_300bar_Heliox85","ade_item_cylinder_single_6ltr_300bar_Tx1070","ade_item_cylinder_single_6ltr_300bar_Tx1265","ade_item_cylinder_single_6ltr_300bar_Tx1555","ade_item_cylinder_single_6ltr_300bar_Tx1845","ade_item_cylinder_single_6ltr_300bar_Tx2135"],
    "Diving",
    "a3\ui_f\data\GUI\Cfg\Hints\BasicDive_ca.paa"
] call ACEFUNC(arsenal,addRightPanelButton);

