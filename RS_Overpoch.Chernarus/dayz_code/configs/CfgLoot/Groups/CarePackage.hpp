//Vehicle class, min loot, max loot, min loot distance, max loot distance
CarePackageType[] =
{
	{Loot_NONE,			5,		Misc_cargo_cont_net1, 3, 6},
	{Loot_NONE,			4,		Misc_cargo_cont_net2, 4, 9},
	{Loot_NONE,			3,		Misc_cargo_cont_net3, 5, 12}
};

CarePackage[] =
{
	//Tools
	{Loot_WEAPON,		35,		ItemFlashlight},
	{Loot_WEAPON,		35,		ItemCompass},
	{Loot_WEAPON,		35,		ItemMap},
	{Loot_WEAPON,		35,		ItemWatch},
	{Loot_WEAPON,		35,		ItemKnife},
	
	//Backpacks
	{Loot_GROUP,		35,		backpacks},
	{Loot_GROUP,		35,		militarybackpacks},
	
	//Containers
	{Loot_CONTAINER,	35,		DZ_CardboardBox, Consumable, 6, 12},
	{Loot_CONTAINER,	35,		DZ_MedBox, MedicalHigh, 8, 16},
	
	//Items
	{Loot_MAGAZINE,		35,		ItemTent},
	{Loot_MAGAZINE,		35,		ItemDomeTent},
	{Loot_PILE,			35,		MedicalLow, 1, 3},
	{Loot_PILE,			35,		Consumable, 1, 3},
	{Loot_WEAPON,		35,		ItemMatchbox},
	{Loot_GROUP,		50,		Generic}
};