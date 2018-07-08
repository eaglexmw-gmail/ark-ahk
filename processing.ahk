TransferFromLeft()
{
    Click, 354, 186
}

;1478x186
TransferFromRight()
{
    Click, 1478, 186
}

; This command has a specific check for inventory as they are often used
; when looking at a body bag, and the search commands can trigger a melee
TransferIngotsFromForgeToBody_R500()
{   
    RawMouseMove(0, -2500)
    Sleep, 200
    Send F
    Sleep, 500

    if(!CheckInventory())
        return ClearToggleStates()

    SearchItemRight("Ingot")
    Sleep, 100
    TransferFromRight()
    Sleep, 500
    CloseUI()
    Sleep, 500
    RawMouseMove(0, 2500)
    Sleep, 250
    Send F
    Sleep, 500

    if(!CheckInventory())
        return ClearToggleStates()

    SearchItemLeft("Ingot")
    Sleep, 100
    TransferFromLeft()
    Sleep, 500
    CloseUI()
    Sleep, 500
}

; This command has a specific check for inventory as they are often used
; when looking at a body bag, and the search commands can trigger a melee
TransferIngotsFromBodyToVault_R500()
{
    Send F
    Sleep, 500
 
    if(!CheckInventory())
        return ClearToggleStates()

    SearchItemRight("Ingot")
    Sleep, 100
    TransferFromRight()
    Sleep, 500
    CloseUI()
    Sleep, 500
    RawMouseMove(0, -2000)
    Sleep, 250
    Send F
    Sleep, 500

    if(!CheckInventory())
        return ClearToggleStates()

    SearchItemLeft("Ingot")
    Sleep, 100
    TransferFromLeft()
    Sleep, 500
    CloseUI()
    Sleep, 500
    RawMouseMove(0, 2000)
    sleep, 500
}

Drop_R800()
{
    Send o
}

TransferSeven()
{
    Send {Shift down}
    Click, 2
    Send {Shift up}
    Sleep, 50
    Send {Ctrl down}
    Click, 2
    Click, 2
    Send {Ctrl up}
}

SplitStack_R300()
{
    Send {Ctrl down}
    Sleep 25
    Send {LButton Down}  
    Sleep, 50
    SendMode Event
    MouseMove, 50, 0, 2, R
    SendMode Input
    Send {LButton Up}
    Sleep 25
    Send {Ctrl Up}
    
    SendMode Event
    MouseMove, -50, 0, 2, R
    SendMode Event
    ; Sleep, 50
}
