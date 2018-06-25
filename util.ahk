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
    ;Click, 1816, 36
    Send {Esc}
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
    ClickSearchLeft()
    Sleep, 400
    TypeItem(Item)
}

SearchItemRight(Item)
{
    ClickSearchRight()
    Sleep, 400
    TypeItem(Item)
}

DropItemLeft(Item)
{
    SearchItemLeft(Item)
    Sleep, 400
    DropLeft()
}

DropItemRight(Item)
{
    SearchItemRight(Item)
    Sleep, 400
    DropRight()
}

RawMouseMove(x, y)
{
    DllCall("mouse_event", uint, 1, int, x, int, y, uint, 0, int, 0)
}