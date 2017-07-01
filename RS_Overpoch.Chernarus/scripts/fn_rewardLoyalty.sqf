multiPlyWith = 1;
_i=0;

while {_i < 7} do
{
    if ( _i == 1) then 
    {
        _reward = (20000 * multiPlyWith);
        player setVariable ["cashMoney", ((player getVariable ["cashMoney", 0]) + _reward), true];
        titleText [format ["Loyalty Time Reward! === %1 Thank you for playing on Rising Sun, Your loyalty has been rewarded with: $%2", name player, _reward], "PLAIN DOWN"];
        multiPlyWith = multiPlyWith + 1;
        _i = 0;
    };
    sleep 1800;
    _i = _i + 1;
};

//cutText [format["Thank you for playing on Rising Sun, Your Loyalty has been rewarded"], "PLAIN DOWN"];