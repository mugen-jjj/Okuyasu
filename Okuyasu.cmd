[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "236aa"
command = ~D,DF,F,x+y
time = 16
[Command]
name = "236aa"
command = ~D,DF,F,y+z
time = 16
[Command]
name = "236aa"
command = ~D,DF,F,x+z
time = 16
[Command]
name = "236b"
command = ~D,DF,F,b
time = 16

[Command]
name = "214aa"
command = ~D,DB,B,x+y
time = 16
[Command]
name = "214aa"
command = ~D,DB,B,y+z
time = 16
[Command]
name = "214aa"
command = ~D,DB,B,x+z
time = 16
[Command]
name = "214b"
command = ~D,DB,B,b
time = 16

;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "236x"
command = ~D,DF,F,x
time = 12
[Command]
name = "236x"
command = ~D,DF,F,~x
time = 12

[Command]
name = "236y"
command = ~D,DF,F,y
time = 12
[Command]
name = "236y"
command = ~D,DF,F,~y
time = 12

[Command]
name = "236z"
command = ~D,DF,F,z
time = 12
[Command]
name = "236z"
command = ~D,DF,F,~z
time = 12

[Command]
name = "236a"
command = ~D,DF,F,a
time = 12
[Command]
name = "236a"
command = ~D,DF,F,~a
time = 12

[Command]
name = "214x"
command = ~D,DB,B,x
time = 12
[Command]
name = "214x"
command = ~D,DB,B,~x
time = 12

[Command]
name = "214y"
command = ~D,DB,B,y
time = 12
[Command]
name = "214y"
command = ~D,DB,B,~y
time = 12

[Command]
name = "214z"
command = ~D,DB,B,z
time = 12
[Command]
name = "214z"
command = ~D,DB,B,~z
time = 12

[Command]
name = "623x"
command = ~F,D,DF,x
time = 12
[Command]
name = "623x"
command = ~F,D,DF,~x
time = 12

[Command]
name = "623y"
command = ~F,D,DF,y
time = 12
[Command]
name = "623y"
command = ~F,D,DF,~y
time = 12

[Command]
name = "623z"
command = ~F,D,DF,z
time = 12
[Command]
name = "623z"
command = ~F,D,DF,~z
time = 12

[Command]
name = "22x"
command = ~D, D, x
time = 15
[Command]
name = "22y"
command = ~D, D, y
time = 15
[Command]
name = "22z"
command = ~D, D, z
time = 15

[Command]
name = "6z"
command = F, z
time = 9

[Command]
name = "6z"
command = ~F, z
time = 9

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = x+z
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = y+z
time = 1

[Command]
name = "AirDush" ;必須コマンド名
command = x+y
time = 1
[Command]
name = "AirDush" ;必須コマンド名
command = y+z
time = 1
[Command]
name = "AirDush" ;必須コマンド名
command = x+z
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------

[Command]
name = "holdx"	   ;必須コマンド名
command = /x
time = 1

[Command]
name = "holdy"	   ;必須コマンド名
command = /y
time = 1

[Command]
name = "holdz"	   ;必須コマンド名
command = /z
time = 1

[Command]
name = "holda"	   ;必須コマンド名
command = /a
time = 1

[Command]
name = "holdb"	   ;必須コマンド名
command = /b
time = 1

[Command]
name = "holds"
command = /s
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;AI

[State -1, end]
type = varset
trigger1 = movetype = H
trigger2 = var(59) > 0
trigger2 = p2movetype != H || p2statetype = L
var(59) = 0
[State -1, end]
type = varset
trigger1 = 1
var(21) = (ctrl ||stateno = 11 || stateno = 21 || (stateno = 52 && time >= 3 && !var(8)) || (stateno = [120,149]) || (stateno = 100 && AnimElemTime(4) > 5))

[State -1, 立ちa]
type = ChangeState
value = 200
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = statetype != A

triggerall = p2statetype != A && p2statetype != L
trigger1 = var(21)
trigger1 = p2bodydist x < 44
trigger1 = random < 30

[State -1, 立ちc]
type = ChangeState
value = 220
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = var(21)
trigger1 = p2bodydist x = [65, 110]
trigger1 = random < 30

[State -1, 屈c]
type = ChangeState
value = 400
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = statetype != A

triggerall = p2statetype != A && p2statetype != L
trigger1 = var(21)
trigger1 = p2bodydist x < 40
trigger1 = random < 60

[State -1, 屈c]
type = ChangeState
value = 410
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = statetype != A

triggerall = p2statetype != A && p2statetype != L
trigger1 = var(21)
trigger1 = p2bodydist x < 70
trigger1 = random < 40

[State -1, 屈c]
type = ChangeState
value = 420
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = statetype != A

triggerall = p2statetype != A && p2statetype != L
trigger1 = var(21)
trigger1 = p2bodydist x = [50, 85]
trigger1 = random < 35

[State -1, ジャンプb]
type = ChangeState
value = IfElse(p2bodydist x < 30, 620, 610)
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = statetype = A
trigger1 = p2bodydist x < 110
trigger1 = (vel y > 2 && random < 80) || (p2statetype = A && random < 40)
trigger1 = var(21) || (stateno = 110 && time > 10)
trigger2 = stateno = 700 && time >= 18

[State -1, assault]
type = ChangeState
value = 700
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
trigger1 = var(21)
trigger1 = p2bodydist x > 70
trigger1 = random < 25
trigger2 = (stateno = [200, 499]) && var(4)
trigger2 = moveguarded = 1
trigger2 = random < 180

;623
[State -1, 1100]
type = ChangeState
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = var(21)
trigger1 = random < 35 + (p2statetype = A) * 30
value = 1100

;236
[State -1, 1000]
type = ChangeState
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = p2statetype != A && p2statetype != L
trigger1 = var(21)
trigger1 = random < 35
trigger2 = stateno = 420 && movehit = 1
value = 1000

;214
[State -1, 1100]
type = ChangeState
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(21)
trigger1 = !inguarddist
trigger1 = p2bodydist x = [100, 155]
trigger1 = random < 20
trigger1 = var(2) := 2
value = 1200

[State -1, assault]
type = ChangeState
value = 2000
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = statetype != A
;;;triggerall = p2statetype != A && p2statetype != L
triggerall = !Inguarddist
trigger1 = var(21)
trigger1 = p2bodydist x > 55
trigger1 = random < 25
trigger2 = (stateno = [200, 499]) && var(4)
trigger2 = moveguarded = 1
trigger2 = random < 180

;HHA
[State -1, 1000]
type = ChangeState
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = statetype != A
triggerall = power >= 1000
triggerall = p2bodydist y > -100
trigger1 = var(21)
trigger1 = p2bodydist x = [100, 155]
trigger1 = random < 20
value = 3000

;HHA2
[State -1, 1000]
type = ChangeState
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = power >= 1000
trigger1 = var(21)
trigger1 = p2bodydist x < 55
trigger1 = random < 40
value = 3200

;GHA
[State -1, 1000]
type = ChangeState
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = statetype != A
triggerall = p2bodydist y > -100 && p2statetype != L
triggerall = power >= 3000
triggerall = p2bodydist x < 85

triggerall = var(21)
trigger1 = random < 35
trigger2 = Inguarddist && p2movetype = A
trigger2 = random < 50
trigger3 = stateno = 2000 && helper(10000),var(4)
value = 3100

;投げ
[State -1, 1000]
type = ChangeState
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L && !(p2stateno = [150,159])
trigger1 = var(21)
trigger1 = p2bodydist x < 30
trigger1 = p2movetype != H
value = 800

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = AILevel && RoundState = 2 && !var(59)
triggerall = p2statetype != A && p2statetype != L
trigger1 = statetype != A
trigger1 = var(21)
trigger1 = p2bodydist x < 30
trigger1 = prevstateno = 5210 && random < 100


;---------------------------------------------------------------------------
;common
;---------------------------------------------------------------------------
;ガード
[state -1, Guard]
type = ChangeState
value = 120
triggerall = AILevel
triggerall = roundstate = 2
triggerall = !var(59)
triggerall = var(21)
trigger1 = numhelper(50000)
Trigger1 = inguarddist || ((helper(50000),inguarddist = 1) || p2bodydist x >= 100&&(p2movetype=A))|| (enemynear,numproj > 0)
Trigger1 = 1

[state -1, walk]
type = ChangeState
value = 21
triggerall = AILevel && RoundState = 2
triggerall = var(21) && stateno != 21

triggerall = !var(59)
triggerall=Statetype!=A
Trigger1 = random < 25

;-------------------------------------------------------------------------------
;basic combo
--------------------------------------------------------------------------------
[State -1, end]
type = varset
triggerall = !var(59)
trigger1 = stateno = 200 || stateno = 400 || stateno = 410
trigger1 = movehit = 1
var(59) = 1000

[State -1, 立ちb]
type = ChangeState
value = 210
triggerall = AILevel && RoundState = 2
triggerall = statetype != A

triggerall = var(59) = 1000
trigger1 = p2statetype != A
trigger1 = (stateno = 200||stateno = 400) && var(4)

[State -1, 立ちc]
type = ChangeState
value = 220
triggerall = AILevel && RoundState = 2
triggerall = statetype != A

triggerall = var(59) = 1000 || var(59) = 1010
trigger1 = (stateno = 200 || stateno = 400 || stateno = 210 || stateno = 410) && var(4)

[State -1, end]
type = varset
triggerall = !var(59)
trigger1 = stateno = 220
trigger1 = movehit = 1 && fvar(10) < 8.0
var(59) = 1010

;5B
[State -1, 1200]
type = ChangeState
triggerall = AILevel && RoundState = 2
triggerall = statetype != A

triggerall = var(59) = 1000
trigger1 = (stateno = 220) && var(4)
value = 2000

;GHA
[State -1, 1000]
type = ChangeState
triggerall = AILevel && RoundState = 2
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = stateno = 2000 && helper(10000),var(4)
value = 3100


[State -1, a]
type = ChangeState
value = 200
triggerall = AILevel && RoundState = 2
triggerall = statetype != A
triggerall = var(59) = 1000
trigger1 = ctrl
trigger1 = var(59):= 1010

;623
[State -1, 1100]
type = ChangeState
triggerall = AILevel && RoundState = 2
triggerall = statetype != A
triggerall = var(59) = 1010
trigger1 = (stateno = 220) && var(4)
value = 1100

;HHA
[State -1, 1000]
type = ChangeState
triggerall = AILevel && RoundState = 2
triggerall = statetype != A
triggerall = power >= 1000

triggerall = var(59) = 1010
trigger1 = stateno = 1100 && helper(10000),var(4)
value = 3000

;-------------------------------------------------------------------------------
[State -1, end]
type = varset
triggerall = !var(59)
trigger1 = stateno = [610, 620]
trigger1 = movehit = 1 && var(8) && p2statetype != A
var(59) = 700

[State -1, 立ちa]
type = ChangeState
value = 200
triggerall = AILevel && RoundState = 2
triggerall = statetype != A

triggerall = var(59) = 700
trigger1 = p2statetype != A
trigger1 = ctrl

[State -1, 立ちb]
type = ChangeState
value = 210
triggerall = AILevel && RoundState = 2
triggerall = statetype != A

triggerall = var(59) = 700
trigger1 = p2statetype != A
trigger1 = (stateno = 200||stateno = 400) && var(4)

;HHA
[State -1, 1000]
type = ChangeState
triggerall = AILevel && RoundState = 2
triggerall = statetype != A
triggerall = power >= 1000

triggerall = var(59) = 700
trigger1 = stateno = 210 && var(4)
value = 3200

[State -1, 立ちc]
type = ChangeState
value = 220
triggerall = AILevel && RoundState = 2
triggerall = statetype != A

triggerall = var(59) = 700
trigger1 = (stateno = 200 || stateno = 400 || stateno = 210) && var(4)
trigger1 = var(59):= 1010

;==============================================================================
; 超必殺技
;==============================================================================
;GHA
[State -1, 1000]
type = ChangeState
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "c"
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
trigger3 = stateno = 1000 && helper(10000),var(4)
trigger4 = stateno = 1100 && helper(10000),var(4)
trigger5 = stateno = 1200 && helper(10000),var(4)
trigger6 = stateno = 2000 && helper(10000),var(4)
trigger7 = stateno = 52 && var(8) > 1
value = 3100

;HHA
[State -1, 1000]
type = ChangeState
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "236aa" || command = "236b"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
trigger3 = stateno = 1000 && helper(10000),var(4)
trigger4 = stateno = 1100 && helper(10000),var(4)
trigger5 = stateno = 1200 && helper(10000),var(4)
trigger6 = stateno = 2000 && helper(10000),var(4)
trigger7 = stateno = 52 && var(8) > 1
value = 3000

;HHA2
[State -1, 1000]
type = ChangeState
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "214aa" || command = "214b"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
trigger3 = stateno = 1000 && helper(10000),var(4)
trigger4 = stateno = 1100 && helper(10000),var(4)
trigger5 = stateno = 1200 && helper(10000),var(4)
trigger6 = stateno = 2000 && helper(10000),var(4)
trigger7 = stateno = 52 && var(8) > 1
value = 3200

;==============================================================================
; 必殺技
;==============================================================================
;623
[State -1, 1100]
type = ChangeState
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "623x" || command = "623y" || command = "623z"
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
trigger3 = stateno = 810 && time >= 71
trigger4 = stateno = 2000 && helper(10000),var(4)
trigger5 = stateno = 2100 && helper(10000),var(4)
trigger6 = stateno = 52 && var(8) > 1
value = 1100

;236
[State -1, 1000]
type = ChangeState
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "236x" || command = "236y" || command = "236z"
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
trigger3 = stateno = 810 && time >= 71
trigger4 = stateno = 2000 && helper(10000),var(4)
trigger5 = stateno = 2100 && helper(10000),var(4)
trigger6 = stateno = 52 && var(8) > 1
value = 1000

;214
[State -1, 1200]
type = ChangeState
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "214x" || command = "214y" || command = "214z"
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
trigger3 = stateno = 810 && time >= 71
trigger4 = stateno = 2000 && helper(10000),var(4)
trigger5 = stateno = 2100 && helper(10000),var(4)
trigger6 = stateno = 52 && var(8) > 1
value = 1200

;==============================================================================
; 移動関連
;==============================================================================
[State -1, 走る]
type = ChangeState
value = 100
triggerall = !AILevel
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = !AILevel
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "BB"

[State -1, JCan]
type = ChangeState
value = 40
triggerall = !AILevel
triggerall = command = "holdup"
trigger1 = stateno = 220 && var(4) = 1


;==============================================================================
; B技
;==============================================================================
[State -1, assault]
type = ChangeState
value = 700
triggerall = !AILevel
triggerall = command = "holdfwd"
triggerall = (command = "x" && command = "y") || (command = "b")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)

;5B
[State -1, 1200]
type = ChangeState
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "b"
;triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = (stateno = [200, 499]) && var(4)
value = 2000

;JB
[State -1, 1200]
type = ChangeState
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = command = "b"
triggerall = var(8) = 0
triggerall = var(30) = 0
trigger1 = ctrl
trigger2 = (stateno = [600, 699]) && var(4)
value = 2200

;==============================================================================
; 特殊技
;==============================================================================
;投げ
[State -1, 1000]
type = ChangeState
triggerall = !AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "a"
trigger1 = ctrl
value = 800

;GC
[State -1, 1000]
type = ChangeState
triggerall = AILevel = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command = "a"
triggerall = power >= 1000
trigger1 = stateno = [150,153]
trigger1 = time > 0
value = 720

[State -1, 6c]
type = ChangeState
value = 230
triggerall = !AILevel
;triggerall = command = "z"
triggerall = command = "6z" ;"holdfwd"
triggerall = statetype != A
trigger1 = ctrl && stateno != 100
trigger2 = (stateno = 200||stateno = 210||stateno = 220||stateno = 400||stateno = 410||stateno = 420) && var(4)

;==============================================================================
; 通常攻撃技
;==============================================================================
[State -1, 立ちa]
type = ChangeState
value = 200
triggerall = !AILevel
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200||stateno = 400) && var(4)

[State -1, 立ちb]
type = ChangeState
value = 210
triggerall = !AILevel
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200||stateno = 400) && var(4)

[State -1, 立ちc]
type = ChangeState
value = 220
triggerall = !AILevel
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200||stateno = 210||stateno = 400||stateno = 410) && var(4)

[State -1, 屈c]
type = ChangeState
value = 400
triggerall = !AILevel
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200||stateno = 400) && var(4)

[State -1, 屈c]
type = ChangeState
value = 410
triggerall = !AILevel
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200||stateno = 400) && var(4)

[State -1, 屈c]
type = ChangeState
value = 420
triggerall = !AILevel
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200||stateno = 210||stateno = 400||stateno = 410) && var(4)

[State -1, ジャンプa]
type = ChangeState
value = 600
triggerall = !AILevel
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

[State -1, ジャンプb]
type = ChangeState
value = 610
triggerall = !AILevel
triggerall = statetype = A
trigger1 = command = "y"
trigger1 = ctrl
trigger2 = command = "y"
trigger2 = var(8) = 0
trigger2 = stateno = 600 && var(4)
trigger3 = (command = "y" || command = "holdy") || ((command = "x" || command = "holdx") && stateno = 700)
trigger3 = stateno = 700 && time >= 20

[State -1, ジャンプc]
type = ChangeState
value = 620
triggerall = !AILevel
triggerall = statetype = A
trigger1 = command = "z"
trigger1 = ctrl
trigger2 = command = "z"
trigger2 = var(8) = 0
trigger2 = (stateno = [600,610]) && var(4)
trigger3 = (command = "z" || command = "holdz")
trigger3 = stateno = 700 && time >= 20

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = !AILevel
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
