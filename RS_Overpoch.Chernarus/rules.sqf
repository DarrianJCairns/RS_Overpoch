private ["_messages","_timeout"];

_messages = [
	["RS - Community Overpoch", "Welcome "+(name player)],
	["World", worldName],
	["Website/Forums", "www.risingsuncommunity.com"],
	["Discord", "discord.gg/TEk4djB"],
	["Need Help?", "Join Discord for an admin discord.gg/xgm8j6z"],
	["Server Rules", "No VOIP in side."],
	["Server Rules", "Duping, glitching or using any<br />exploit will result in a<br />permanent ban."],
	["Server Rules", "Hackers will be banned permanently!"],
	["Server Rules", "Camping traders IS allowed"],
	["Server Rules", "Base Raiding 24/7"],	
	["Server Rules", "Vehicles left within 500m of trader are moved to Junk Yard on restart."],	
	["Server Rules", "THIS IS A HIGH PVP SERVER- EXPECT TO DIE A LOT"],
	["Server Rules", "Hackers will be banned permanently<br />Respect others"],
	["Server Hints", "Easy Coins= Cooked Meats"],
	["Server Hints", "Vehicles moved to Trader Junkyard at reset and unlocked"],
	["Server Hints", "Armed Wild Spawn vehicles respawn each reset"],
	["Server Hints", "Report any bug/small or big on discord"],
	["Raid a base??", "Use a Satchel Charge to Raid bases"],
	["Having issues?", "RECORD and submit a ticket or join discord"],

	["Rising Sun", "Thank you for playing Rising Sun Overpoch!"]
];
 
_timeout = 10;
{
	private ["_title","_content","_titleText"];
	uiSleep 2;
	_title = _x select 0;
	_content = _x select 1;
	_titleText = format[("<t font='TahomaB' size='0.40' color='#a81e13' align='right' shadow='1' shadowColor='#000000'>%1</t><br /><t shadow='1'shadowColor='#000000' font='TahomaB' size='0.60' color='#FFFFFF' align='right'>%2</t>"), _title, _content];
	[
		_titleText,
		[safezoneX + safezoneW - 0.8,0.50],     //DEFAULT: 0.5,0.35
		[safezoneY + safezoneH - 0.8,0.7],      //DEFAULT: 0.8,0.7
		_timeout,
		0.5
	] spawn BIS_fnc_dynamicText;
	uiSleep (_timeout * 1.1);
} forEach _messages;