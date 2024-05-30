#SingleInstance
TITLE := "Get Rich Quick 1.0"
PLACEID := 3524195448
WINDOW := "Roblox"

TrayTip("Press Q to quit.", TITLE)

started := A_TickCount

Loop {
    win := WinExist(WINDOW)
    if (win != 0 and StrLower(PixelGetColor(31, 673)) != "0x191b1d") {
        WinActivate(win)
        MouseMove(861, 600)
        Click
        Sleep(1000)
    } else {
        TrayTip("Starting Roblox...", TITLE)
        Run("roblox://placeId=" . PLACEID)
        Sleep 5000
    }
}

Q::{
    TrayTip("Quitting... You made ~" . Floor((A_TickCount - started) / (1000 * 60 * 6)) * 60 . " JC!!!", TITLE)
    ExitApp
}