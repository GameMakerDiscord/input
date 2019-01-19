/// @param input_slot
//  Returns what kind of device created this input

enum E_INPUT_DEVICE_KIND
{
    UNKNOWN,
    KEYBOARD,
    MOUSE,
    GAMEPAD_BUTTON,
    GAMEPAD_ANALOGUE
}

return obj_input.input_state[ argument0, E_INPUT_STATE.DEVICE_KIND ];