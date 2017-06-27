
private ["_cost","_wealth"];

//_cost = 100000; Thats a bit cheap
_cost = 100000;
_wealth = player getVariable[Z_moneyVariable, 0];
_humanity = player getVariable["humanity", 0];

if (_humanity >= 100000) exitWith {"You have reached the maximum humanity we can provide" call dayz_rollingMessages;};

if (_wealth < _cost) then {
    cutText[format["You need %1 coins to change your Humanity!",_cost], "PLAIN DOWN"];
} else {
    player setVariable[Z_moneyVariable, (_wealth - _cost), true];
    titleText["Your Humanity has been changed!","PLAIN DOWN"];
    titleFadeOut 5;
    
    sleep 0.1; [500,0] call player_humanityChange;
};