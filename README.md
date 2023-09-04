# Datapath-and-Controller

## RTL HDL implementation for Logic Design Lab

### The controller function is described as:
* The counter is incremented with every clock pulse when the controller state is S_1.
* The counter is cleared only when control is at state S_idle and Start is equal to 1.
* The logic for the signal clr_A_F will be included in the controller and requires an AND gate to
guarantee that both conditions are present.
* Similarly, we can anticipate that the controller will use AND gates to form signals set_E and clr_E.
* Depending on whether the controller is in state S_1 and whether A2 is asserted, set_F controls flip-
flop F and is asserted unconditionally during state S_2.
* Note that all flip-flops and registers, including the flip-flops in the control unit, use a common clock

### This lab was done in collaboration with hsidd1
