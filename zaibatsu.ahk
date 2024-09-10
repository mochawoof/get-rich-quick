#SingleInstance
TITLE := "GET RICH QUICK 1.11"
PLACEID := 3524195448
WINDOW := "Roblox"

CLICK_X := 861
CLICK_Y := 585

startupChoice := MsgBox("Before you begin: Make sure you're playing on 1920x1080 resolution and set Roblox to automatically close when you leave a game (Bloxstrap can help with this)!", TITLE, 1)

if (startupChoice != "OK") {
    ExitApp
}

TrayTip("Press Q to quit.", TITLE)

started := A_TickCount

Loop {
    win := WinExist(WINDOW)
    if (win != 0 and StrLower(PixelGetColor(31, 673)) != "0x191b1d") {
        WinActivate(win)
        MouseMove(CLICK_X, CLICK_Y)
        Click
        Sleep(1000)
        MouseMove(CLICK_X - 25, CLICK_Y - 25)
        Click
    } else {
        TrayTip("Starting Roblox...", TITLE)
        Run("roblox://placeId=" . PLACEID)
        Sleep 8000
    }
}

Q::{
    TrayTip("Quitting... You made ~" . Floor((A_TickCount - started) / (1000 * 60 * 6)) * 60 . " JC!!!", TITLE)
    ExitApp
}