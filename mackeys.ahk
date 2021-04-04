; --- Hacks ---

; Windows L Hack

SetDisableLockWorkstationRegKeyValue(1)
return

OnExit, OnExitSub
OnExitSub:
{
  SetDisableLockWorkstationRegKeyValue(0)
  ExitApp
}
return

SetDisableLockWorkstationRegKeyValue(value)
{
  RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, %value%
}

; --- Emacs ---

; Move

$^f::Send {Right}
$^b::Send {Left}
$^n::Send {Down}
$^p::Send {Up}
$^a::Send {Home}
$^e::Send {End}

; Select

$^+f::Send +{Right}
$^+b::Send +{Left}
$^+n::Send +{Down}
$^+p::Send +{Up}
$^+a::Send +{Home}
$^+e::Send +{End}

; Edit

$^k::Send +{End}{Delete}
$^h::Send {Backspace}
$^d::Send {Delete}



; --- General ---

; App

$#q::!F4

; File

$#n::Send ^n
$#+n::Send ^+n
$#t::Send ^t
$#o::Send ^o
$#l::Send ^l

$#+w:: Send ^+w
$#!+w:: Send ^+q
$#w:: Send ^w
$#s::Send ^s

; VSCode

$#p::Send ^p
$#+p::Send ^+p
$#j::Send ^j

; Edit

$#z::Send ^z

$#x::Send ^x
$#c::Send ^c
$#v::Send ^v
$#a::Send ^a

$#f::Send ^f
$#g::Send ^g
$#+g::Send ^+g

; View

$#r::Send ^r

; History

$#+t::Send ^+t



; --- System ---

; Mission Control

F3::#Tab
Lwin & Tab::AltTab
$#^Left::Send #{Left}
$#^Right::Send #{Right}
$#^Up::Send #{Up}
$#^Down::Send #{Down}
$#Space::Send #q

; Screen Shots

$#+3::Send #{PrintScreen}
$#^+3::Send {PrintScreen}
$#+4::
{
  Send !{PrintScreen}
  Send #!{PrintScreen}
}
return
$#^+4::Send !{PrintScreen}
$#+5::Send #+s

; Lock

F19::
{
  SetDisableLockWorkstationRegKeyValue(0)
  DllCall("LockWorkStation")
  Sleep, 1
  SetDisableLockWorkstationRegKeyValue(1)
}
return



; --- Text Editing ---

$#Left::Send {Home}
$#Right::Send {End}
$#Up::Send ^{Home}
$#Down::Send ^{End}
$!Left::Send ^{Left}
$!Right::Send ^{Right}

$#Backspace::Send +{Home}{Delete}
$!Backspace::Send +^{Left}{Delete}

$#+Left::Send +{Home}
$#+Right::Send +{End}
$#+Up::Send +^{Home}
$#+Down::Send +^{End}
$!+Left::Send +^{Left}
$!+Right::Send +^{Right}

