
REM 0-999 Counter with three 7-segments

$regfile="m16def.dat"
$crystal=8000000

config portC = output
config portD = output
config porta = output
config pinb.0 = input

'------------------- 7 Segments Configuration ----------------
00a alias portc.0
00b alias portc.1
00c alias portc.2
00d alias portc.3
00e alias portc.4
00f alias portc.5
00g alias portc.6

0a alias portD.0
0b alias portD.1
0c alias portd.2
0d alias portd.3
0e alias portd.4
0f alias portd.5
0g alias portd.6

a alias porta.0
b alias porta.1
c alias porta.2
d alias porta.3
e alias porta.4
f alias porta.5
g alias porta.6

'---------------------- Declaring Variables ----------------
Dim k as integer
Dim i as integer
Dim j as integer

k = 0
i = 0
j = 0

'------------------------- 0 to 999 counter ---------------
set portb.0
bitwait portb.0 , set



 while k < 10

    if k = 0 then
    gosub 000
    elseif k = 1  then
    gosub 111
    elseif k = 2  then
    gosub 222
    elseif k = 3  then
    gosub 333
    elseif k = 4  then
    gosub 444
    elseif k = 5  then
    gosub 555
    elseif k = 6  then
    gosub 666
    elseif k = 7  then
    gosub 777
    elseif k = 8  then
    gosub 888
    elseif k = 9  then
    gosub 999
    end if
                    i=0



                    while i < 10

                         if i = 0 then
                         gosub 00
                         elseif i = 1  then
                         gosub 11
                         elseif i = 2  then
                         gosub 22
                         elseif i = 3  then
                         gosub 33
                         elseif i = 4  then
                         gosub 44
                         elseif i = 5  then
                         gosub 55
                         elseif i = 6  then
                         gosub 66
                         elseif i = 7  then
                         gosub 77
                         elseif i = 8  then
                         gosub 88
                         elseif i = 9  then
                         gosub 99
                         end if

                               j=0



                               while j<10
                                           if j = 0 then
                                        gosub 0
                                       elseif j = 1 then
                                        gosub 1
                                       elseif j= 2  then
                                        gosub 2
                                       elseif j= 3 then
                                        gosub 3
                                       elseif j = 4  then
                                        gosub 4
                                       elseif j = 5 then
                                        gosub 5
                                       elseif j = 6 then
                                        gosub 6
                                       elseif j = 7 then
                                        gosub 7
                                       elseif j = 8 then
                                        gosub 8
                                       elseif j = 9 then
                                        gosub 9
                                       end if
                                       Incr j
                                       waitms 500
                                wend

                       Incr i
                   wend

 Incr k
 wend
end



'---------------------------
             000:
             set 00a
             set 00b
             set 00c
             set 00d
             set 00e
             set 00f
             reset 00g
             return


             111:
             set 00b
             set 00c
             reset 00a
             reset 00d
             reset 00e
             reset 00f
             reset 00g
             return


             222:
             set 00a
             set 00b
             set 00g
             set 00e
             set 00d
             reset 00c
             reset 00f
             return


             333:
             set 00a
             set 00b
             set 00g
             set 00c
             set 00d
             reset 00e
             reset 00f
             return


             444:
             set 00b
             set 00c
             set 00g
             set 00f
             reset 00a
             reset 00d
             reset 00e
             return


             555:
             set 00a
             set 00f
             set 00g
             set 00c
             set 00d
             reset 00b
             reset 00e
             return


             666:
             set 00a
             set 00f
             set 00g
             set 00c
             set 00d
             set 00e
             reset 00b
             return


             777:
             set 00a
             set 00b
             set 00c
             reset 00d
             reset 00e
             reset 00f
             reset 00g
             return


             888:
             set 00a
             set 00b
             set 00c
             set 00d
             set 00e
             set 00f
             set 00g
             return


             999:
             set 00a
             set 00b
             set 00g
             set 00f
             set 00c
             reset 00d
             reset 00e
             return
'-------------------------------
             00:
             set 0a
             set 0b
             set 0c
             set 0d
             set 0e
             set 0f
             reset 0g
             return


             11:
             set 0b
             set 0c
             reset 0a
             reset 0d
             reset 0e
             reset 0f
             reset 0g
             return


             22:
             set 0a
             set 0b
             set 0g
             set 0e
             set 0d
             reset 0c
             reset 0f
             return


             33:
             set 0a
             set 0b
             set 0g
             set 0c
             set 0d
             reset 0e
             reset 0f
             return


             44:
             set 0b
             set 0c
             set 0g
             set 0f
             reset 0a
             reset 0d
             reset 0e
             return


             55:
             set 0a
             set 0f
             set 0g
             set 0c
             set 0d
             reset 0b
             reset 0e
             return


             66:
             set 0a
             set 0f
             set 0g
             set 0c
             set 0d
             set 0e
             reset 0b
             return


             77:
             set 0a
             set 0b
             set 0c
             reset 0d
             reset 0e
             reset 0f
             reset 0g
             return


             88:
             set 0a
             set 0b
             set 0c
             set 0d
             set 0e
             set 0f
             set 0g
             return


             99:
             set 0a
             set 0b
             set 0g
             set 0f
             set 0c
             reset 0d
             reset 0e
             return

'--------------------------------

             0:
             set a
             set b
             set c
             set d
             set e
             set f
             reset g
             return


             1:
             set b
             set c
             reset a
             reset d
             reset e
             reset f
             reset g
             return


             2:
             set a
             set b
             set g
             set e
             set d
             reset c
             reset f
             return


             3:
             set a
             set b
             set g
             set c
             set d
             reset e
             reset f
             return


             4:
             set b
             set c
             set g
             set f
             reset a
             reset d
             reset e
             return


             5:
             set a
             set f
             set g
             set c
             set d
             reset b
             reset e
             return


             6:
             set a
             set f
             set g
             set c
             set d
             set e
             reset b
             return


             7:
             set a
             set b
             set c
             reset d
             reset e
             reset f
             reset g
             return


             8:
             set a
             set b
             set c
             set d
             set e
             set f
             set g
             return


             9:
             set a
             set b
             set g
             set f
             set c
             reset d
             reset e
             return

             '-------------------------------