UseMediaButtons := true

;;;Disable using by F14 button;;;

F14::
	UseMediaButtons := !UseMediaButtons
;	MsgBox %UseMediaButtons%

	if (!UseMediaButtons) {
		Hotkey, F7, off
		Hotkey, F8, off
		Hotkey, F9, off
		Hotkey, F10, off
		Hotkey, F11, off
		Hotkey, F12, off
		Hotkey, F13 & F7, off
		Hotkey, F13 & F8, off
		Hotkey, F13 & F9, off
		Hotkey, F13 & F10, off
		Hotkey, F13 & F11, off
		Hotkey, F13 & F12, off

		MsgBox Media buttons are disabled
	} else {
		Hotkey, F7, on
		Hotkey, F8, on
		Hotkey, F9, on
		Hotkey, F10, on
		Hotkey, F11, on
		Hotkey, F12, on
		Hotkey, F13 & F7, on
		Hotkey, F13 & F8, on
		Hotkey, F13 & F9, on
		Hotkey, F13 & F10, on
		Hotkey, F13 & F11, on
		Hotkey, F13 & F12, on

		MsgBox Media buttons are enabled
	}

	return

$F7::Send {Media_Prev}
$F8::Send {Media_Play_Pause}
$F9::Send {Media_Next}
$F10::Send {Volume_Mute}
$F11::Send {Volume_Down}
$F12::Send {Volume_Up}

;;;Original F button via F13+ shorcut;;;

F13 & F7::Send {F7}
F13 & F8::Send {F8}
F13 & F9::Send {F9}
F13 & F10::Send {F10}
F13 & F11::Send {F11}
F13 & F12::Send {F12}
