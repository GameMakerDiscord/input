enum E_INPUT_SLOT { UP,
                    DOWN,
                    LEFT,
                    RIGHT,
                    JUMP, //Add your own enum element to add another input slot
                    __SIZE }

enum E_INPUT_STATE { PRESSED, ON, RELEASED,                    //Simple behaviours
                     REPEATED, LONG, DOUBLE,                   //Advanced behaviours
                     PRESSED_TIME, PRESSED_INDEX, REPEAT_TIME, //Timers
                     NEW_ON, NEW_PRESSED_INDEX,                //Momentary states
                     ANALOGUE,                                 //Get the analog value
                     __SIZE }

//Millisecond delay times for advanced behaviours
repeat_delay = 280;
long_delay   = 400;
double_delay = 210;

//We're using gamepad device 0
gamepad_device = 0;

//Initialise the input system
input_clear();