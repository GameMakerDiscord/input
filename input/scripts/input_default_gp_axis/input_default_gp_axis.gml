/// @param axis
/// @param negative
/// @param verb
/// @param [alternate]

function input_default_gp_axis()
{
    var _axis      = argument[0];
    var _negative  = argument[1];
    var _verb      = argument[2];
    var _alternate = ((argument_count > 3) && (argument[3] != undefined))? argument[3] : 0;
    
    global.__input_default_player.set_binding(INPUT_SOURCE.GAMEPAD, _verb, _alternate,
                                              {
                                                  type          : "gp axis",
                                                  value         : _axis,
                                                  axis_negative : _negative,
                                              });
    
    var _p = 0;
    repeat(INPUT_MAX_PLAYERS)
    {
        global.__input_players[_p].set_binding(INPUT_SOURCE.GAMEPAD, _verb, _alternate,
                                               {
                                                   type          : "gp axis",
                                                   value         : _axis,
                                                   axis_negative : _negative,
                                               });
        ++_p;
    }
}