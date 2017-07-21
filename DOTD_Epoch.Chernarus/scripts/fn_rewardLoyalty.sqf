multiPlyWith = 1;
_i=0;

while {_i < 7} do
{
    if ( _i == 1) then 
    {
        _reward = (10000 * multiPlyWith);
        player setVariable ["cashMoney", ((player getVariable ["cashMoney", 0]) + _reward), true];
        titleText [format ["Thanks for playing! === %1 Thank you for playing with Dawn of the Dead, You have been rewarded with: $%2", name player, _reward], "PLAIN DOWN"];
        multiPlyWith = multiPlyWith + 1;
        _i = 0;
    };
    sleep 5400;
    _i = _i + 1;
};

//cutText [format["Thank you for playing on Rising Sun, Your Loyalty has been rewarded"], "PLAIN DOWN"];