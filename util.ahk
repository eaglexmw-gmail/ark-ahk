CheckArk()
{
    win := WinActive("ARK: Survival Evolved")
    if(win = 0)
    {
        return false
    }
    return true  
}

CheckInventory()
{
    target := 0x80E7FF
    checks := [[120, 100], [120,130], [276, 126]]

    for i in checks
    {
        PixelGetColor, testColor, checks[i][1], checks[i][2], RGB
        
        if(testColor != target)
        {
            ShowShortMessage("Inventory not open")
            
            return false
        }
    }

    return true
}

CheckSlotcap()
{
    target := 0x000000
    checks := [[1822, 41], [1842,36], [1824, 16]]

    for i in checks
    {
        PixelGetColor, testColor, checks[i][1], checks[i][2], RGB
        
        if(testColor != target)
        {            
            return false
        }
    }

    ShowShortMessage("Slotcap")

    return true
}

ClearToggleStates()
{
    global toggle_states

    toggle_states := [false, false, false, false, false, false, false, false, false, false]
}

ShowShortMessage(msg, time:=2000)
{
    ToolTip, %msg%, 10, 10, 1
    SetTimer, RemoveToolTip, %time%
}

RemoveToolTip(index:=1)
{
    SetTimer, RemoveToolTip, Off
    ToolTip
}

CloseUI()
{
    if(CheckInventory())
    {
        Send {Esc}
        ;Click, 1816, 36
    }
}

; 132 / 180
ClickSearchLeft()
{
    Click, 132, 186
}
; 406 / 186
DropLeft()
{
    Click, 406, 186
}
; 132 / 180
ClickSearchRight()
{
    Click, 1260, 186
}
; 406 / 186
DropRight()
{
    Click, 1528, 186
}

TypeItem(Item)
{
    Send %Item%
}

SearchItemLeft(Item)
{
    if(!CheckInventory())
        return

    ClickSearchLeft()
    Sleep, 150
    TypeItem(Item)
}

SearchItemRight(Item)
{
    if(!CheckInventory())
        return

    ClickSearchRight()
    Sleep, 150
    TypeItem(Item)
}

DropItemLeft(Item)
{
    SearchItemLeft(Item)
    Sleep, 500
    DropLeft()
}

DropItemRight(Item)
{
    SearchItemRight(Item)
    Sleep, 500
    DropRight()
}

RawMouseMove(x, y)
{
    DllCall("mouse_event", uint, 1, int, x, int, y, uint, 0, int, 0)
}