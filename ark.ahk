;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ark autohotkey script
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Global variables for toggles
toggle_attack := 0
toggle_e := 0
toggle_run := 0
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autoattack right macro
;; Press F2 to toggle on/off
 
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
 
F2::
  if toggle_attack = 0
  {
    toggle_attack = 1
    SetTimer, arkAutoRightAttack, 90
    ToolTip, AUTO ATTACK RIGHT, 10, 10, 1
  }
  else
  {
    toggle_attack = 0
    SetTimer, arkAutoRightAttack, off
    Tooltip, , , , 1
  }
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autoattack macro
;; Press F3 to toggle on/off
 
arkAutoAttack:
  CoordMode, mouse, screen ;
;  IfWinActive ARK: Survival Evolved
;  {
;    SendEvent {Click}
    SetControlDelay -1
    ControlClick, X100 y100, ARK: Survival Evolved,,,, Pos
;  }
;  else
;  {
;    SetTimer, arkAutoAttack, off
;  }
return
 
F3::
  if toggle_attack = 0
  {
    toggle_attack = 1
    SetTimer, arkAutoAttack, 90
    ToolTip, AUTO ATTACK, 10, 10, 1
  }
  else
  {
    toggle_attack = 0
    SetTimer, arkAutoAttack, off
    Tooltip, , , , 1
  }
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Auto E macro
;; Press F4 to toggle on/off
 
arkAutoE:
  IfWinActive ARK: Survival Evolved
  {
    Send, e
  }
  else
  {
    SetTimer, arkAutoE, off
  }
return
 
F4::
  if toggle_e = 0
  {
    toggle_e = 1
    SetTimer, arkAutoE, 100
    ToolTip, AUTO E, 10, 30, 2
  }
  else
  {
    toggle_e = 0
    SetTimer, arkAutoE, off
    Tooltip, , , , 2
  }
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autorun macro
;; Press F1 to toggle on/off
 
arkAutoRun:
  IfWinNotActive ARK: Survival Evolved
  {
    SendInput {w up}
	SendInput {LShift up}
    SetTimer, arkAutoRun, off
    toggle_run = 0
  }
return
 
F1::
  IfWinNotActive ARK: Survival Evolved
    return
  if toggle_run = 0
  {
	SendInput {LShift down}
    SendInput {w down}
    SetTimer, arkAutoRun, 200
    toggle_run = 1
    ToolTip, AUTO RUN, 10, 50, 3
  }
  else
  {
    toggle_run = 0
    SendInput {w up}
	SendInput {LShift up}
    SetTimer, arkAutoRun, off
    Tooltip, , , , 3
  }
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 50 clicks macro
;; Press F5 to click 50 times at mouse position
F5::
  Loop 50
  {
    Click
    Sleep 20
  }
return