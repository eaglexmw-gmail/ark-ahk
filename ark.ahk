#Include util.ahk
#Include farming.ahk
#Include processing.ahk
#Include lib/MouseDelta.ahk

#Persistent
#NoEnv
;#Warn

; Macro sets
macro_set_1 := [Func("AutoAttack_R300"), Func("AutoE_R500")]
macro_set_2 := [Func("CheckInventory"), Func("SplitStack_R300"), Func("Drop_R800"), Func("TransferSeven"), Func("AutoU_R300"), Func("Empty"), Func("Empty"), Func("Empty"), Func("TransferIngotsFromBodyToVault_R500"), Func("TransferIngotsFromForgeToBody_R500")]
macro_set_3 := [Func("DropForBerryRun"), Func("AutoMetal_R300"), Func("DropForMetal"), Func("DropForCrystal"), Func("DropForWood"),Func("DropForFiber")]

macro_sets := [macro_set_1, macro_set_2, macro_set_3]
num_sets := macro_sets.MaxIndex()

macro_set := macro_set_1
macro_set_index := 2 ; Will cycle to 0 on first load

; Toggle utils
ClearToggleStates()
toggle_index := 0
toggle_delay := 0
toggle_f1  := false
toggle_f2  := false
toggle_f3  := false
toggle_f4  := false
toggle_f5  := false
toggle_f6  := false
toggle_f7  := false
toggle_f8  := false
toggle_f9  := false
toggle_f10 := false
toggle_f11 := false
toggle_f12 := false

SendMode Input
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CycleMacros()
return

; Bind both F12 and Escape to reload. This aborts all current macros
F1::
    Reload      
return

; Cycle through the macro sets
F2::
    CycleMacros()
return

; Load the next macro set in the arrays
CycleMacros()
{
    global macro_set_index, macro_set, macro_sets, num_sets, toggle_states
    
    macro_set_index := Mod(macro_set_index+1, num_sets)
    macro_set := macro_sets[macro_set_index+1]
    ClearToggleStates()
    

    ; Print out the function list
    f_index := 3
    f_str := ""
    for index in macro_set
    {
        f_name := macro_set[index].Name
        f_str := f_str . "F" . f_index . " - " . f_name . "  |  "
        f_index++
    }

    ShowShortMessage(f_str, 10000)
}

; Notice on script load
ShowWelcome()
{
    ;ShowShortMessage("F6 - Berry   |   F7 - Fiber |   F8 - Metal   |   F9 - Crystal   |   F10 - Wood   |   F11 - IngotTransferForge", 1000)
}

TestFunc1()
{
    ShowShortMessage("TestFunc1")
}

TestFunc2()
{
    ShowShortMessage("TestFunc2")
}

Empty()
{
    ShowShortMessage("Empty")
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Main macro calls on FN keys
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

CallMacro(index)
{
    global macro_set, toggle_states, toggle_index, toggle_delay

    ; If we've alt-tabbed, just reset macro states
    if(!CheckArk())
    {
        ShowShortMessage("Ark not active")
        ClearToggleStates()
        
        return
    }

    func := macro_set[index]

    if(!func)
    {
        ShowShortMessage("No macro for FN index " . index)
        return
    }

    funcName := func.Name

    ; Is this a repeat function?
    found := RegExMatch(funcName, "[a-zA-Z0-9]+_R(\d+)", delay)

    if(found > 0)
    {
        toggle_index := index
        toggle_delay := Max(delay1, 50)

        ; Show states
        ;ShowShortMessage(toggle_states[1] . " " . toggle_states[2] . " " . toggle_states[3] . " " . toggle_states[4] . " " . toggle_states[5] . " " . toggle_states[6] . " " . toggle_states[7] . " " . toggle_states[8] . " " . toggle_states[9] . " " . toggle_states[10])

        before := toggle_states[index]
        toggle_states[index] := !toggle_states[index]
        after := toggle_states[index]

        ;ShowShortMessage(before . " " . after)      

        RepeatMacro()

        return
    }

    ; Just call
    ShowShortMessage(func.Name)
    func.Call()
}

RepeatMacro()
{
    global macro_set, toggle_states, toggle_index, toggle_delay

    if(toggle_states[toggle_index])
    {
        func := macro_set[toggle_index]
        func.Call()

        SetTimer, RepeatMacro, -%toggle_delay%
        
    } else {
        SetTimer, RepeatMacro, off
    }
}

F3::
    CallMacro(1)
return

F4::
    CallMacro(2)
return

F5::
    CallMacro(3)
return

F6::
    CallMacro(4)
return

F7::
    CallMacro(5)
return

F8::
    CallMacro(6)
return

F9::
    CallMacro(7)
return

F10::
    CallMacro(8)
return

F11::
    CallMacro(9)
return

~F12::
    CallMacro(10)
return


Macro10()
{
    global toggle_f12

    if(toggle_f12)
    {
        CallMacro(10)
        SetTimer, Macro10, -500
        return
    }

    SetTimer, Macro10, off

    
}

arkAutoRightAttack:
  IfWinActive ARK: Survival Evolved
  {
    SendEvent {Click, Right}
  }
  else
  {
    SetTimer, arkAutoRightAttack, off
  }
return