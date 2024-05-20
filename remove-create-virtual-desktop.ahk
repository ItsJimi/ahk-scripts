#Requires AutoHotkey v2.0

; This script handle ctrl+win+d to remove creation of virtual desktop
^#D::
{
    KeyWait("Ctrl")

    ; Get the control that has the focus
    focused := ControlGetFocus("A")

    if ((focused = 0 || focused = "") && WinActive("A"))
    {
        Send("^#D")
    }
    else
    {
        ControlSend("A", focused, "^#D")
    }
}
