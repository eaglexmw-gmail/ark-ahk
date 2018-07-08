dropDelay := 100

DropForBerryRun()
{
    global dropDelay

    DropItemRight("Stim")
    Sleep, dropDelay
    DropItemRight("Narc")
    Sleep, dropDelay
    DropItemRight("Mushroom")
    Sleep, dropDelay
    DropItemRight("Seed")
    Sleep, dropDelay
    DropItemRight("Thatch")
    Sleep, dropDelay
    DropItemRight("Wood")
    Sleep, dropDelay
    DropItemRight("Flower")
}

DropForFiber()
{
    global dropDelay

    DropItemRight("Berry")
    Sleep, dropDelay
    DropItemRight("Mushroom")
    Sleep, dropDelay
    DropItemRight("Seed")
    Sleep, dropDelay
    DropItemRight("Thatch")
    Sleep, dropDelay
    DropItemRight("Wood")
    Sleep, dropDelay
    DropItemRight("Flower")
}

DropForMetal()
{
    global dropDelay

    DropItemRight("Berry")
    Sleep, dropDelay
    DropItemRight("Mushroom")
    Sleep, dropDelay
    DropItemRight("Stone")
    Sleep, dropDelay
    DropItemRight("Thatch")
    Sleep, dropDelay
    DropItemRight("Wood")
    Sleep, dropDelay
    DropItemRight("Flint")
}

DropForCrystal()
{
    global dropDelay

    DropItemRight("Berry")
    Sleep, dropDelay
    DropItemRight("Mushroom")
    Sleep, dropDelay
    DropItemRight("Stone")
    Sleep, dropDelay
    DropItemRight("Thatch")
    Sleep, dropDelay
    DropItemRight("Wood")
    Sleep, dropDelay
    DropItemRight("Flint")
    Sleep, dropDelay
    DropItemRight("Metal")
    Sleep, dropDelay
    DropItemRight("Blue Gem")
}

DropForWood()
{
    global dropDelay
    
    DropItemRight("Berry")
    Sleep, dropDelay
    DropItemRight("Seed")
    Sleep, dropDelay
    DropItemRight("Mushroom")
    Sleep, dropDelay
    DropItemRight("Stone")
    Sleep, dropDelay
    DropItemRight("Thatch")
    Sleep, dropDelay
    DropItemRight("Flint")
    Sleep, dropDelay
    DropItemRight("Metal")
    Sleep, dropDelay
    DropItemRight("Blue Gem")
}


AutoMetal_R300()
{
    if(CheckSlotcap())
    {
        Send F
        Sleep 500
        DropForMetal()
        Sleep 500
        CloseUI()

        return
    }

    Click
}

AutoAttack_R300()
{
    Click
}

AutoE_R500()
{
    Send E
}

AutoU_R300()
{
    Send U
}