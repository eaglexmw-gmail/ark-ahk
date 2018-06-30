dropDelay := 150

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

AutoAttack_REPEAT500()
{
    Click
}

AutoE_REPEAT500()
{
    Send E
}