/// @param player
/// @param action
/// @param bindingIndex

var _player = argument0;
var _action = argument1;
var _index  = argument2;

if ((_player < 0) || (_player >= global.__input_max_players))
{
    show_error("Input:\nPlayer index (" + string(_player) + ") is invalid (range is 0 to " + string(global.__input_max_players-1) + ")\n ", false);
    return undefined;
}

var _action_index = global.__input_actions_map[? _action];
if (_action_index == undefined)
{
    show_error("Input:\nAction \"" + string(_action) + "\" not recognised\nCall input_action_add() to add an action\n ", false);
    return undefined;
}

if (_index < 0)
{
    return undefined;
}

var _player_array = global.__input_players_array[_player];
var _actions_array = _player_array[INPUT_PLAYER.ACTIONS];
var _action_array = _actions_array[_action_index];
var _bindings_array = _action_array[INPUT_ACTION.BINDINGS];

var _binding_array = _bindings_array[_index];
return is_array(_binding_array)? _binding_array : undefined;