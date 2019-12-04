´
<D:\Programacion\CSharp\WPF\EzWriter\EzWriterView\App.xaml.cs
	namespace 	
EzWriterView
 
{ 
public 

partial 
class 
App 
: 
Application *
{ 
	protected 
override 
void 
	OnStartup  )
() *
StartupEventArgs* :
e; <
)< =
{ 	
base		 
.		 
	OnStartup		 
(		 
e		 
)		 
;		 
System

 
.

 
Windows

 
.

 
Forms

  
.

  !
Application

! ,
.

, -
EnableVisualStyles

- ?
(

? @
)

@ A
;

A B
} 	
} 
} òD
QD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Behaviors\ChildWindowBehavior.cs
	namespace 	
EzWriterView
 
. 
	Behaviors  
{ 
class 	
ChildWindowBehavior
 
: 
Behavior  (
<( )
Window) /
>/ 0
{		 
private

 
Window

 
windowInstance

 %
;

% &
public 
static 
readonly 
DependencyProperty 1
IsModalProperty2 A
=B C
DependencyProperty 
. 
Register '
(' (
$str( 1
,1 2
typeof3 9
(9 :
bool: >
)> ?
,? @
typeofA G
(G H
ChildWindowBehaviorH [
)[ \
,\ ]
new^ a
PropertyMetadatab r
(r s
falses x
)x y
)y z
;z {
public 
bool 
IsModal 
{ 	
get 
=> 
( 
bool 
) 
GetValue !
(! "
IsModalProperty" 1
)1 2
;2 3
set 
=> 
SetValue 
( 
IsModalProperty +
,+ ,
value- 2
)2 3
;3 4
} 	
public 
static 
readonly 
DependencyProperty 1
IsOnScreenProperty2 D
=E F
DependencyProperty 
. 
Register '
(' (
$str( 4
,4 5
typeof6 <
(< =
bool= A
)A B
,B C
typeofD J
(J K
ChildWindowBehaviorK ^
)^ _
,_ `
new( +%
FrameworkPropertyMetadata, E
(E F
falseF K
,K L,
 FrameworkPropertyMetadataOptionsM m
.m n!
BindsTwoWayByDefault	n Ç
,
Ç É
IsOnScreenChanged
Ñ ï
)
ï ñ
)
ñ ó
;
ó ò
public 
bool 

IsOnScreen 
{ 	
get 
=> 
( 
bool 
) 
GetValue !
(! "
IsOnScreenProperty" 4
)4 5
;5 6
set 
=> 
SetValue 
( 
IsOnScreenProperty .
,. /
value0 5
)5 6
;6 7
} 	
public 
static 
readonly 
DependencyProperty 1
OwnerProperty2 ?
=@ A
DependencyProperty   
.   
Register   '
(  ' (
$str  ( /
,  / 0
typeof  1 7
(  7 8
Window  8 >
)  > ?
,  ? @
typeof  A G
(  G H
ChildWindowBehavior  H [
)  [ \
,  \ ]
new  ^ a
PropertyMetadata  b r
(  r s
null  s w
)  w x
)  x y
;  y z
public"" 
Window"" 
Owner"" 
{## 	
get$$ 
=>$$ 
($$ 
Window$$ 
)$$ 
GetValue$$ #
($$# $
OwnerProperty$$$ 1
)$$1 2
;$$2 3
set%% 
=>%% 
SetValue%% 
(%% 
OwnerProperty%% )
,%%) *
value%%+ 0
)%%0 1
;%%1 2
}&& 	
public(( 
static(( 
readonly(( 
DependencyProperty(( 1
WindowTypeProperty((2 D
=((E F
DependencyProperty)) 
.)) 
Register)) '
())' (
$str))( 4
,))4 5
typeof))6 <
())< =
Type))= A
)))A B
,))B C
typeof))D J
())J K
ChildWindowBehavior))K ^
)))^ _
,))_ `
new))a d
PropertyMetadata))e u
())u v
null))v z
)))z {
))){ |
;))| }
public++ 
Type++ 

WindowType++ 
{,, 	
get-- 
=>-- 
(-- 
Type-- 
)-- 
GetValue-- !
(--! "
WindowTypeProperty--" 4
)--4 5
;--5 6
set.. 
=>.. 
SetValue.. 
(.. 
WindowTypeProperty.. .
,... /
value..0 5
)..5 6
;..6 7
}// 	
public11 
static11 
readonly11 
DependencyProperty11 1
ViewModelProperty112 C
=11D E
DependencyProperty22 
.22 
Register22 '
(22' (
$str22( 9
,229 :
typeof22; A
(22A B
Type22B F
)22F G
,22G H
typeof22I O
(22O P
ChildWindowBehavior22P c
)22c d
,22d e
new22f i
PropertyMetadata22j z
(22z {
null22{ 
)	22 Ä
)
22Ä Å
;
22Å Ç
public44 
Type44 
	ViewModel44 
{55 	
get66 
=>66 
(66 
Type66 
)66 
GetValue66 !
(66! "
ViewModelProperty66" 3
)663 4
;664 5
set77 
=>77 
SetValue77 
(77 
ViewModelProperty77 -
,77- .
value77/ 4
)774 5
;775 6
}88 	
private:: 
static:: 
void:: 
IsOnScreenChanged:: -
(::- .
DependencyObject::. >
d::? @
,::@ A.
"DependencyPropertyChangedEventArgs::B d
dpe::e h
)::h i
{;; 	
var<< 
self<< 
=<< 
d<< 
as<< 
ChildWindowBehavior<< /
;<</ 0
if>> 
(>> 
(>> 
bool>> 
)>> 
dpe>> 
.>> 
NewValue>> "
)>>" #
{?? 
object@@ 
instance@@ 
=@@  !
	Activator@@" +
.@@+ ,
CreateInstance@@, :
(@@: ;
self@@; ?
.@@? @

WindowType@@@ J
)@@J K
;@@K L
ifBB 
(BB 
instanceBB 
isBB 
WindowBB  &
)BB& '
{CC 
varDD 
windowDD 
=DD  
instanceDD! )
asDD* ,
WindowDD- 3
;DD3 4
windowEE 
.EE 
OwnerEE  
=EE! "
selfEE# '
.EE' (
OwnerEE( -
;EE- .
windowFF 
.FF 
DataContextFF &
=FF' (
	ActivatorFF) 2
.FF2 3
CreateInstanceFF3 A
(FFA B
selfFFB F
.FFF G
	ViewModelFFG P
,FFP Q
newFFR U
objectFFV \
[FF\ ]
]FF] ^
{FF_ `
(FFa b
WordProcessorFFb o
)FFo p
selfFFp t
.FFt u
OwnerFFu z
.FFz {
DataContext	FF{ Ü
}
FFá à
)
FFà â
;
FFâ ä
selfGG 
.GG 
windowInstanceGG '
=GG( )
windowGG* 0
;GG0 1
windowII 
.II 
ClosingII "
+=II# %
(II& '
sII' (
,II( )
eII* +
)II+ ,
=>II- /
{JJ 
ifKK 
(KK 
selfKK  
.KK  !

IsOnScreenKK! +
)KK+ ,
{LL 
selfMM  
.MM  !
windowInstanceMM! /
=MM0 1
nullMM2 6
;MM6 7
selfNN  
.NN  !

IsOnScreenNN! +
=NN, -
falseNN. 3
;NN3 4
}OO 
}PP 
;PP 
ifQQ 
(QQ 
selfQQ 
.QQ 
IsModalQQ $
)QQ$ %
{RR 
windowSS 
.SS 

ShowDialogSS )
(SS) *
)SS* +
;SS+ ,
}TT 
elseUU 
{VV 
windowWW 
.WW 
ShowWW #
(WW# $
)WW$ %
;WW% &
}XX 
}YY 
}ZZ 
else[[ 
{\\ 
if]] 
(]] 
self]] 
.]] 
windowInstance]] '
!=]]( *
null]]+ /
)]]/ 0
{^^ 
self__ 
.__ 
windowInstance__ '
.__' (
Close__( -
(__- .
)__. /
;__/ 0
}`` 
}aa 
}bb 	
}cc 
}dd ¶
]D:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Converters\BooleanToWinformsHostConverter.cs
	namespace 	
EzWriterView
 
. 

Converters !
{ 
class 	*
BooleanToWinformsHostConverter
 (
:) *
BaseConverter+ 8
{		 
public

 
override

 
object

 
Convert

 &
(

& '
object

' -
value

. 3
,

3 4
Type

5 9

targetType

: D
,

D E
object

F L
	parameter

M V
,

V W
CultureInfo

X c
culture

d k
)

k l
{ 	
if 
( 
value 
!= 
null 
) 
{ 
var 
result 
= 
( 
bool "
)" #
value# (
;( )
return 
result 
? 
new  #
WindowsFormsHost$ 4
{5 6
Child7 <
== >

MainWindow? I
.I J
ViewerJ P
}Q R
: 
new  #
WindowsFormsHost$ 4
{5 6
Child7 <
== >

MainWindow? I
.I J
RichEditBoxJ U
}V W
;W X
} 
return 
null 
; 
} 	
} 
} Ä
XD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Converters\ColorToFontColorConverter.cs
	namespace 	
EzWriterView
 
. 

Converters !
{ 
class		 	%
ColorToFontColorConverter		
 #
:		$ %
BaseConverter		& 3
{

 
public 
override 
object 
Convert &
(& '
object' -
value. 3
,3 4
Type5 9

targetType: D
,D E
objectF L
	parameterM V
,V W
CultureInfoX c
cultured k
)k l
{ 	
if 
( 
value 
!= 
null 
) 
{ 
object 
color 
= 
(  
(  !
PropertyInfo! -
)- .
value. 3
)3 4
.4 5
GetValue5 =
(= >
null> B
)B C
;C D
var 
wpfColor 
= 
(  
WPF  #
.# $
Color$ )
)) *
color* /
;/ 0
var 
wfColor 
= 
WF  
.  !
Color! &
.& '
FromArgb' /
(/ 0
wpfColor0 8
.8 9
A9 :
,: ;
wpfColor< D
.D E
RE F
,F G
wpfColorH P
.P Q
GQ R
,R S
wpfColorT \
.\ ]
B] ^
)^ _
;_ `
return 
WF 
. 
ColorTranslator )
.) *
ToWin32* 1
(1 2
wfColor2 9
)9 :
;: ;
} 
return 
null 
; 
} 	
} 
} î	
LD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Converters\BaseConverter.cs
	namespace 	
EzWriterView
 
. 

Converters !
{ 
class 	
BaseConverter
 
: 
IValueConverter )
{		 
public

 
virtual

 
object

 
Convert

 %
(

% &
object

& ,
value

- 2
,

2 3
Type

4 8

targetType

9 C
,

C D
object

E K
	parameter

L U
,

U V
CultureInfo

W b
culture

c j
)

j k
=> 
DependencyProperty !
.! "

UnsetValue" ,
;, -
public 
virtual 
object 
ConvertBack )
() *
object* 0
value1 6
,6 7
Type8 <

targetType= G
,G H
objectI O
	parameterP Y
,Y Z
CultureInfo[ f
cultureg n
)n o
=> 
DependencyProperty !
.! "

UnsetValue" ,
;, -
} 
} ¯
bD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Converters\InverseBooleanToVisibilityConverter.cs
	namespace 	
EzWriterView
 
. 

Converters !
{ 
class 	/
#InverseBooleanToVisibilityConverter
 -
:. /
BaseConverter0 =
{		 
private

 
readonly

 (
BooleanToVisibilityConverter

 5
	converter

6 ?
=

@ A
new

B E(
BooleanToVisibilityConverter

F b
(

b c
)

c d
;

d e
public 
override 
object 
Convert &
(& '
object' -
value. 3
,3 4
Type5 9

targetType: D
,D E
objectF L
	parameterM V
,V W
CultureInfoX c
cultured k
)k l
{ 	
var 
result 
= 
	converter "
." #
Convert# *
(* +
value+ 0
,0 1

targetType2 <
,< =
	parameter> G
,G H
cultureI P
)P Q
asR T

VisibilityU _
?_ `
;` a
return 
result 
== 

Visibility '
.' (
	Collapsed( 1
?2 3

Visibility4 >
.> ?
Visible? F
:G H

VisibilityI S
.S T
	CollapsedT ]
;] ^
} 	
public 
override 
object 
ConvertBack *
(* +
object+ 1
value2 7
,7 8
Type9 =

targetType> H
,H I
objectJ P
	parameterQ Z
,Z [
CultureInfo\ g
cultureh o
)o p
{ 	
var 
result 
= 
	converter "
." #
ConvertBack# .
(. /
value/ 4
,4 5

targetType6 @
,@ A
	parameterB K
,K L
cultureM T
)T U
asV X
boolY ]
?] ^
;^ _
return 
result 
== 
true !
?" #
false$ )
:* +
true, 0
;0 1
} 	
} 
} ç
[D:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Converters\StringToCharSpacingConverter.cs
	namespace 	
EzWriterView
 
. 

Converters !
{ 
class 	(
StringToCharSpacingConverter
 &
:' (
BaseConverter) 6
{ 
public 
override 
object 
Convert &
(& '
object' -
value. 3
,3 4
Type5 9

targetType: D
,D E
objectF L
	parameterM V
,V W
CultureInfoX c
cultured k
)k l
{		 	
if

 
(

 
value

 
!=

 
null

 
)

 
{ 
var 
item 
= 
value  
.  !
ToString! )
() *
)* +
;+ ,
switch 
( 
item 
) 
{ 
case 
$str '
:' (
return) /
-0 1
$num1 5
;5 6
case 
$str #
:# $
return% +
-, -
$num- 1
;1 2
case 
$str !
:! "
return# )
$num* ,
;, -
case 
$str #
:# $
return% +
$num, 0
;0 1
case 
$str '
:' (
return) /
$num0 4
;4 5
} 
} 
return 
null 
; 
} 	
} 
} ¨

[D:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Converters\StringToLineSpacingConverter.cs
	namespace 	
EzWriterView
 
. 

Converters !
{ 
class 	(
StringToLineSpacingConverter
 &
:' (
BaseConverter) 6
{ 
public 
override 
object 
Convert &
(& '
object' -
value. 3
,3 4
Type5 9

targetType: D
,D E
objectF L
	parameterM V
,V W
CultureInfoX c
cultured k
)k l
{		 	
if

 
(

 
value

 
!=

 
null

 
)

 
{ 
var 
spacing 
= 
value #
.# $
ToString$ ,
(, -
)- .
;. /
return 
float 
. 
Parse "
(" #
spacing# *
.* +
Replace+ 2
(2 3
$str3 7
,7 8
string9 ?
.? @
Empty@ E
)E F
)F G
;G H
} 
return 
null 
; 
} 	
} 
} ù
ZD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Converters\StringToPageLayoutConverter.cs
	namespace 	
EzWriterView
 
. 

Converters !
{ 
class 	'
StringToPageLayoutConverter
 %
:& '
BaseConverter( 5
{ 
public 
override 
object 
Convert &
(& '
object' -
value. 3
,3 4
Type5 9

targetType: D
,D E
objectF L
	parameterM V
,V W
CultureInfoX c
cultured k
)k l
{		 	
if

 
(

 
value

 
!=

 
null

 
)

 
{ 
var 
item 
= 
value  
.  !
ToString! )
() *
)* +
;+ ,
switch 
( 
item 
) 
{ 
case 
$str %
:% &
return' -
$num. /
;/ 0
case 
$str &
:& '
return( .
$num/ 0
;0 1
case 
$str '
:' (
return) /
$num0 1
;1 2
} 
} 
return 
null 
; 
} 	
} 
} ï
XD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Converters\StringToPageZoomConverter.cs
	namespace 	
EzWriterView
 
. 

Converters !
{ 
class 	%
StringToPageZoomConverter
 #
:$ %
BaseConverter& 3
{ 
public 
override 
object 
Convert &
(& '
object' -
value. 3
,3 4
Type5 9

targetType: D
,D E
objectF L
	parameterM V
,V W
CultureInfoX c
cultured k
)k l
{		 	
if

 
(

 
value

 
!=

 
null

 
)

 
{ 
var 
item 
= 
value  
.  !
ToString! )
() *
)* +
;+ ,
var 
zoom 
= 
double !
.! "
Parse" '
(' (
item( ,
., -
Replace- 4
(4 5
$str5 8
,8 9
string: @
.@ A
EmptyA F
)F G
)G H
;H I
return 
zoom 
/ 
$num !
;! "
} 
return 
null 
; 
} 	
} 
} ¨
ZD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Converters\StringToZoomFactorConverter.cs
	namespace 	
EzWriterView
 
. 

Converters !
{ 
class 	'
StringToZoomFactorConverter
 %
:& '
BaseConverter( 5
{ 
public 
override 
object 
Convert &
(& '
object' -
value. 3
,3 4
Type5 9

targetType: D
,D E
objectF L
	parameterM V
,V W
CultureInfoX c
cultured k
)k l
{		 	
if

 
(

 
value

 
!=

 
null

 
)

 
{ 
var 
item 
= 
value  
.  !
ToString! )
() *
)* +
;+ ,
switch 
( 
item 
) 
{ 
case 
$str "
:" #
return$ *
$num+ /
;/ 0
case 
$str !
:! "
return# )
-* +
$num+ /
;/ 0
case 
$str 
:  
return! '
$num( *
;* +
} 
} 
return 
null 
; 
} 	
} 
} Ó
ND:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Dialogs\AlertDialogService.cs
	namespace 	
EzWriterView
 
. 
Dialogs 
{ 
class 	
AlertDialogService
 
: 
IAlertDialogService 2
{ 
public 
bool 
? 
AskConfirmation $
($ %
string% +
message, 3
,3 4
string5 ;
caption< C
)C D
{		 	
var

 
result

 
=

 

MessageBox

 #
.

# $
Show

$ (
(

( )
message

) 0
,

0 1
caption

2 9
,

9 :
MessageBoxButtons

; L
.

L M
YesNoCancel

M X
,

X Y
MessageBoxIcon

Z h
.

h i
Question

i q
)

q r
;

r s
switch 
( 
result 
) 
{ 
case 
DialogResult !
.! "
OK" $
:$ %
case 
DialogResult !
.! "
Yes" %
:% &
return' -
true. 2
;2 3
case 
DialogResult !
.! "
No" $
:$ %
return& ,
false- 2
;2 3
default 
: 
return 
null  $
;$ %
} 
} 	
public 
void 
ShowInformation #
(# $
string$ *
message+ 2
,2 3
string4 :
caption; B
)B C
=> 

MessageBox 
. 
Show 
( 
message &
,& '
caption( /
,/ 0
MessageBoxButtons1 B
.B C
OKC E
,E F
MessageBoxIconG U
.U V
InformationV a
)a b
;b c
} 
} ı
QD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Dialogs\OpenFileDialogService.cs
	namespace 	
EzWriterView
 
. 
Dialogs 
{ 
class 	!
OpenFileDialogService
 
:  !
IDialogService" 0
{ 
private 
readonly 
OpenFileDialog '
ofd( +
;+ ,
public

 !
OpenFileDialogService

 $
(

$ %
)

% &
=>

' )
ofd

* -
=

. /
new

0 3
OpenFileDialog

4 B
(

B C
)

C D
;

D E
public 
bool 
AddExtension  
{ 	
get 
=> 
throw 
new 
System #
.# $!
NotSupportedException$ 9
(9 :
): ;
;; <
set 
=> 
throw 
new 
System #
.# $!
NotSupportedException$ 9
(9 :
): ;
;; <
} 	
public 
string 
DefaultExtension &
{ 	
get 
=> 
ofd 
. 

DefaultExt !
;! "
set 
=> 
ofd 
. 

DefaultExt !
=" #
value$ )
;) *
} 	
public 
string 
FileName 
=> !
ofd" %
.% &
FileName& .
;. /
public 
string 
[ 
] 
	FileNames !
=>" $
ofd% (
.( )
	FileNames) 2
;2 3
public 
string 
Filter 
{ 	
get 
=> 
ofd 
. 
Filter 
; 
set 
=> 
ofd 
. 
Filter 
= 
value  %
;% &
}   	
public"" 
int"" 
FilterIndex"" 
{## 	
get$$ 
=>$$ 
ofd$$ 
.$$ 
FilterIndex$$ "
;$$" #
set%% 
=>%% 
ofd%% 
.%% 
FilterIndex%% "
=%%# $
value%%% *
;%%* +
}&& 	
public(( 
bool(( 
MultiSelect(( 
{)) 	
get** 
=>** 
ofd** 
.** 
Multiselect** "
;**" #
set++ 
=>++ 
ofd++ 
.++ 
Multiselect++ "
=++# $
value++% *
;++* +
},, 	
public.. 
string.. 
Title.. 
{// 	
get00 
=>00 
ofd00 
.00 
Title00 
;00 
set11 
=>11 
ofd11 
.11 
Title11 
=11 
value11 $
;11$ %
}22 	
public44 
bool44 
?44 

ShowDialog44 
(44  
)44  !
=>44" $
ofd44% (
.44( )

ShowDialog44) 3
(443 4
)444 5
;445 6
}55 
}66 ë
LD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Dialogs\PageSetupService.cs
	namespace 	
EzWriterView
 
. 
Dialogs 
{ 
class 	
PageSetupService
 
: 
IPageSetupService .
{		 
private

 
readonly

 
PageSetupDialog

 (
pageSetupDialog

) 8
;

8 9
public 
PageSetupService 
(  
)  !
{ 	
pageSetupDialog 
= 
new !
PageSetupDialog" 1
{ 
EnableMetric 
= 
true #
,# $
} 
; 
} 	
public "
IRichEditPrintDocument %
Document& .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
bool 
? 

ShowDialog 
(  
)  !
{ 	
pageSetupDialog 
. 
Document $
=% &
(' (!
RichEditPrintDocument( =
)= >
Document> F
;F G
var 
result 
= 
pageSetupDialog (
.( )

ShowDialog) 3
(3 4
)4 5
;5 6
switch 
( 
result 
) 
{ 
case 
DialogResult !
.! "
OK" $
:$ %
case 
DialogResult !
.! "
Yes" %
:% &
return' -
true. 2
;2 3
case!! 
DialogResult!! !
.!!! "
Cancel!!" (
:!!( )
case"" 
DialogResult"" !
.""! "
No""" $
:""$ %
return""& ,
false""- 2
;""2 3
default$$ 
:$$ 
return$$ 
null$$  $
;$$$ %
}%% 
}&& 	
}'' 
}(( Ú
ND:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Dialogs\PrintDialogService.cs
	namespace 	
EzWriterView
 
. 
Dialogs 
{ 
class 	
PrintDialogService
 
: 
IPrintService ,
{ 
private 
readonly 
PrintDialog $
printDialog% 0
;0 1
public

 
PrintDialogService

 !
(

! "
)

" #
{ 	
printDialog 
= 
new 
PrintDialog )
{ 
AllowCurrentPage  
=! "
true# '
,' (
AllowSelection 
=  
true! %
,% &
AllowSomePages 
=  
true! %
,% &
UseEXDialog 
= 
true "
} 
; 
} 	
public 
bool 
? 

ShowDialog 
(  
)  !
{ 	
var 
result 
= 
printDialog $
.$ %

ShowDialog% /
(/ 0
)0 1
;1 2
switch 
( 
result 
) 
{ 
case 
DialogResult !
.! "
OK" $
:$ %
case 
DialogResult !
.! "
Yes" %
:% &
return' -
true. 2
;2 3
case 
DialogResult !
.! "
Cancel" (
:( )
case 
DialogResult !
.! "
No" $
:$ %
return& ,
false- 2
;2 3
default!! 
:!! 
return!! 
null!!  $
;!!$ %
}"" 
}## 	
}$$ 
}%% ã
OD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Dialogs\PrintPreviewService.cs
	namespace 	
EzWriterView
 
. 
Dialogs 
{ 
class 	
PrintPreviewService
 
:  
IPrintPreviewService  4
{		 
private

 
readonly

 
DocumentViewer

 '
documentViewer

( 6
;

6 7
public 
PrintPreviewService "
(" #
)# $
{ 	
documentViewer 
= 
new  
DocumentViewer! /
(/ 0
)0 1
{ 
	BackColor 
= 
SystemColors (
.( )!
GradientActiveCaption) >
,> ?
} 
; 
} 	
public 
int 
Columns 
{ 	
get 
=> 
documentViewer !
.! "
Columns" )
;) *
set 
=> 
documentViewer !
.! "
Columns" )
=* +
value, 1
;1 2
} 	
public "
IRichEditPrintDocument %
Document& .
{ 	
get 
=> 
documentViewer !
.! "
PrintDocument" /
;/ 0
set 
=> 
documentViewer !
.! "
PrintDocument" /
=0 1
value2 7
;7 8
} 	
public   
int   
Rows   
{!! 	
get"" 
=>"" 
documentViewer"" !
.""! "
Rows""" &
;""& '
set## 
=>## 
documentViewer## !
.##! "
Rows##" &
=##' (
value##) .
;##. /
}$$ 	
public&& 
int&& 
	StartPage&& 
{'' 	
get(( 
=>(( 
documentViewer(( !
.((! "
	StartPage((" +
;((+ ,
set)) 
=>)) 
documentViewer)) !
.))! "
	StartPage))" +
=)), -
value)). 3
;))3 4
}** 	
public,, 
bool,, 
UseAntiAlias,,  
{-- 	
get.. 
=>.. 
documentViewer.. !
...! "
UseAntiAlias.." .
;... /
set// 
=>// 
documentViewer// !
.//! "
UseAntiAlias//" .
=/// 0
value//1 6
;//6 7
}00 	
public22 
double22 
Zoom22 
{33 	
get44 
=>44 
documentViewer44 !
.44! "
Zoom44" &
;44& '
set55 
=>55 
documentViewer55 !
.55! "
Zoom55" &
=55' (
value55) .
;55. /
}66 	
}77 
}88 »
QD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Dialogs\SaveFileDialogService.cs
	namespace 	
EzWriterView
 
. 
Dialogs 
{ 
class 	!
SaveFileDialogService
 
:  !
IDialogService" 0
{ 
private 
readonly 
SaveFileDialog '
sfd( +
;+ ,
public

 !
SaveFileDialogService

 $
(

$ %
)

% &
=>

' )
sfd

* -
=

. /
new

0 3
SaveFileDialog

4 B
(

B C
)

C D
;

D E
public 
bool 
AddExtension  
{ 	
get 
=> 
sfd 
. 
AddExtension #
;# $
set 
=> 
sfd 
. 
AddExtension #
=$ %
value& +
;+ ,
} 	
public 
string 
DefaultExtension &
{ 	
get 
=> 
sfd 
. 

DefaultExt !
;! "
set 
=> 
sfd 
. 

DefaultExt !
=" #
value$ )
;) *
} 	
public 
string 
FileName 
=> !
sfd" %
.% &
FileName& .
;. /
public 
string 
[ 
] 
	FileNames !
=>" $
throw% *
new+ .
System/ 5
.5 6!
NotSupportedException6 K
(K L
)L M
;M N
public 
string 
Filter 
{ 	
get 
=> 
sfd 
. 
Filter 
; 
set 
=> 
sfd 
. 
Filter 
= 
value  %
;% &
}   	
public"" 
int"" 
FilterIndex"" 
{## 	
get$$ 
=>$$ 
sfd$$ 
.$$ 
FilterIndex$$ "
;$$" #
set%% 
=>%% 
sfd%% 
.%% 
FilterIndex%% "
=%%# $
value%%% *
;%%* +
}&& 	
public(( 
bool(( 
MultiSelect(( 
{)) 	
get** 
=>** 
throw** 
new** 
System** #
.**# $!
NotSupportedException**$ 9
(**9 :
)**: ;
;**; <
set++ 
=>++ 
throw++ 
new++ 
System++ #
.++# $!
NotSupportedException++$ 9
(++9 :
)++: ;
;++; <
},, 	
public.. 
string.. 
Title.. 
{// 	
get00 
=>00 
sfd00 
.00 
Title00 
;00 
set11 
=>11 
sfd11 
.11 
Title11 
=11 
value11 $
;11$ %
}22 	
public44 
bool44 
?44 

ShowDialog44 
(44  
)44  !
=>44" $
sfd44% (
.44( )

ShowDialog44) 3
(443 4
)444 5
;445 6
}55 
}66 ç/
RD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Styles\NumericUpDownStyle.xaml.cs
	namespace 	
EzWriterView
 
. 
Styles 
{ 
public 

partial 
class 
NumericUpDownStyle +
:, -
ResourceDictionary. @
{		 
public

 
NumericUpDownStyle

 !
(

! "
)

" #
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void $
TextBox_PreviewTextInput -
(- .
object. 4
sender5 ;
,; <$
TextCompositionEventArgs= U
eV W
)W X
{ 	
var 
textBox 
= 
sender  
as! #
TextBox$ +
;+ ,
e 
. 
Handled 
= 
! 
IsValidCharacter )
() *
textBox* 1
,1 2
e3 4
.4 5
Text5 9
)9 :
;: ;
} 	
private 
bool 
IsValidCharacter %
(% &
TextBox& -
textBox. 5
,5 6
string7 =
@char> C
)C D
{ 	
NumberFormatInfo 
nfi  
=! "
CultureInfo# .
.. /
CurrentCulture/ =
.= >
NumberFormat> J
;J K
var 
negativeSign 
= 
nfi "
." #
NegativeSign# /
;/ 0
var 
positiveSign 
= 
nfi "
." #
PositiveSign# /
;/ 0
var 
decimalSeparator  
=! "
nfi# &
.& '"
NumberDecimalSeparator' =
;= >
if 
( 
! 
char 
. 
	IsControl 
(  
@char  %
,% &
$num' (
)( )
&&* ,
!- .
char. 2
.2 3
IsDigit3 :
(: ;
@char; @
,@ A
$numB C
)C D
&&E G
@charH M
!=N P
negativeSignQ ]
&&^ `
@char 
!= 
positiveSign %
&&& (
@char) .
!=/ 1
decimalSeparator2 B
)B C
{ 
return 
false 
; 
}   
if!! 
(!! 
@char!! 
==!! 
decimalSeparator!! )
&&!!* ,
textBox!!- 4
.!!4 5
Text!!5 9
.!!9 :
IndexOf!!: A
(!!A B
decimalSeparator!!B R
)!!R S
>!!T U
-!!V W
$num!!W X
)!!X Y
{"" 
return## 
false## 
;## 
}$$ 
if%% 
(%% 
@char%% 
==%% 
negativeSign%% %
&&%%& (
textBox%%) 0
.%%0 1
Text%%1 5
.%%5 6
IndexOf%%6 =
(%%= >
negativeSign%%> J
)%%J K
>%%L M
-%%N O
$num%%O P
)%%P Q
{&& 
return'' 
false'' 
;'' 
}(( 
if)) 
()) 
@char)) 
==)) 
positiveSign)) %
&&))& (
textBox))) 0
.))0 1
Text))1 5
.))5 6
IndexOf))6 =
())= >
positiveSign))> J
)))J K
>))L M
-))N O
$num))O P
)))P Q
{** 
return++ 
false++ 
;++ 
},, 
if-- 
(-- 
(-- 
@char-- 
==-- 
negativeSign-- &
||--' )
@char--* /
==--0 2
positiveSign--3 ?
)--? @
&&--A C
(.. 
textBox.. 
... 
Text.. 
... 
IndexOf.. %
(..% &
negativeSign..& 2
)..2 3
>..4 5
-..6 7
$num..7 8
||..9 ;
textBox..< C
...C D
Text..D H
...H I
IndexOf..I P
(..P Q
positiveSign..Q ]
)..] ^
>.._ `
-..a b
$num..b c
)..c d
)..d e
{// 
return00 
false00 
;00 
}11 
if22 
(22 
(22 
@char22 
==22 
negativeSign22 &
||22' )
@char22* /
==220 2
positiveSign223 ?
)22? @
&&22A C
textBox22D K
.22K L
SelectionStart22L Z
!=22[ ]
$num22^ _
)22_ `
{33 
return44 
false44 
;44 
}55 
if66 
(66 
(66 
char66 
.66 
IsDigit66 
(66 
@char66 #
,66# $
$num66% &
)66& '
||66( *
@char66+ 0
==661 3
decimalSeparator664 D
)66D E
&&66F H
(77 
textBox77 
.77 
Text77 
.77 
IndexOf77 %
(77% &
negativeSign77& 2
)772 3
>774 5
-776 7
$num777 8
||779 ;
textBox77< C
.77C D
Text77D H
.77H I
IndexOf77I P
(77P Q
positiveSign77Q ]
)77] ^
>77_ `
-77a b
$num77b c
)77c d
&&77e g
textBox88 
.88 
SelectionStart88 &
==88' )
$num88* +
)88+ ,
{99 
return:: 
false:: 
;:: 
};; 
return<< 
true<< 
;<< 
}== 	
}>> 
}?? ∞
GD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\UI\AboutDialog.xaml.cs
	namespace 	
EzWriterView
 
. 
UI 
{ 
public 

partial 
class 
AboutDialog $
:% &
Window' -
{ 
public		 
AboutDialog		 
(		 
)		 
=>		 
InitializeComponent		  3
(		3 4
)		4 5
;		5 6
	protected 
override 
void 
OnSourceInitialized  3
(3 4
	EventArgs4 =
e> ?
)? @
{ 	
base 
. 
OnSourceInitialized $
($ %
e% &
)& '
;' (
WindowHelper 
. 

RemoveIcon #
(# $
this$ (
)( )
;) *
} 	
} 
} ¬
MD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\UI\FindReplaceDialog.xaml.cs
	namespace 	
EzWriterView
 
. 
UI 
{ 
public 

partial 
class 
FindReplaceDialog *
:+ ,
Window- 3
{ 
public		 
FindReplaceDialog		  
(		  !
)		! "
=>		# %
InitializeComponent		& 9
(		9 :
)		: ;
;		; <
	protected 
override 
void 
OnSourceInitialized  3
(3 4
	EventArgs4 =
e> ?
)? @
{ 	
base 
. 
OnSourceInitialized $
($ %
e% &
)& '
;' (
WindowHelper 
. 

RemoveIcon #
(# $
this$ (
)( )
;) *
} 	
} 
} Œ
QD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\UI\InsertHyperlinkDialog.xaml.cs
	namespace 	
EzWriterView
 
. 
UI 
{ 
public

 

partial

 
class

 !
InsertHyperlinkDialog

 .
:

/ 0
Window

1 7
{ 
public !
InsertHyperlinkDialog $
($ %
)% &
=>' )
InitializeComponent* =
(= >
)> ?
;? @
	protected 
override 
void 
OnSourceInitialized  3
(3 4
	EventArgs4 =
e> ?
)? @
{ 	
base 
. 
OnSourceInitialized $
($ %
e% &
)& '
;' (
WindowHelper 
. 

RemoveIcon #
(# $
this$ (
)( )
;) *
} 	
} 
} Ö
ND:\Programacion\CSharp\WPF\EzWriter\EzWriterView\UI\InsertSymbolDialog.xaml.cs
	namespace 	
EzWriterView
 
. 
UI 
{ 
public 

partial 
class 
InsertSymbolDialog +
:, -
Window. 4
{ 
public 
InsertSymbolDialog !
(! "
)" #
=>$ &
InitializeComponent' :
(: ;
); <
;< =
} 
}		 ¬
MD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\UI\InsertTableDialog.xaml.cs
	namespace 	
EzWriterView
 
. 
UI 
{ 
public 

partial 
class 
InsertTableDialog *
:+ ,
Window- 3
{ 
public		 
InsertTableDialog		  
(		  !
)		! "
=>		# %
InitializeComponent		& 9
(		9 :
)		: ;
;		; <
	protected 
override 
void 
OnSourceInitialized  3
(3 4
	EventArgs4 =
e> ?
)? @
{ 	
base 
. 
OnSourceInitialized $
($ %
e% &
)& '
;' (
WindowHelper 
. 

RemoveIcon #
(# $
this$ (
)( )
;) *
} 	
} 
} Â"
FD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\UI\MainWindow.xaml.cs
	namespace

 	
EzWriterView


 
.

 
UI

 
{ 
public 

partial 
class 

MainWindow #
:$ %
Window& ,
{ 
private 
readonly 
WordProcessor &
wordProcessor' 4
;4 5
public 

MainWindow 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
Viewer 
= $
InitializeDocumentViewer -
(- .
). /
;/ 0
RichEditBox 
= 
InitializeRichEdit ,
(, -
)- .
;. /
wordProcessor 
= #
InitializeWordProcessor 3
(3 4
)4 5
;5 6
DataContext 
= 
wordProcessor '
;' (
Loaded 
+= 
( 
s 
, 
e 
) 
=> 
RichEditBox  +
.+ ,
Focus, 1
(1 2
)2 3
;3 4
} 	
public 
static 
DocumentViewer $
Viewer% +
{, -
get. 1
;1 2
private3 :
set; >
;> ?
}@ A
public 
static 
RichEditBox !
RichEditBox" -
{. /
get0 3
;3 4
private5 <
set= @
;@ A
}B C
	protected 
override 
void 
OnSourceInitialized  3
(3 4
	EventArgs4 =
e> ?
)? @
{ 	
base   
.   
OnSourceInitialized   $
(  $ %
e  % &
)  & '
;  ' (
WindowHelper!! 
.!! 

RemoveIcon!! #
(!!# $
this!!$ (
)!!( )
;!!) *
}"" 	
private$$ 
DocumentViewer$$ $
InitializeDocumentViewer$$ 7
($$7 8
)$$8 9
{%% 	
var&& 
documentViewer&& 
=&&  
new&&! $
DocumentViewer&&% 3
{'' 
Zoom(( 
=(( 
$num(( 
})) 
;)) 
return** 
documentViewer** !
;**! "
}++ 	
private-- 
RichEditBox-- 
InitializeRichEdit-- .
(--. /
)--/ 0
{.. 	
var// 
richEditBox// 
=// 
new// !
RichEditBox//" -
{00 
BorderStyle11 
=11 
BorderStyle11 )
.11) *
None11* .
,11. /
Font22 
=22 
new22 
Font22 
(22  
$str22  *
,22* +
$num22, /
)22/ 0
,220 1
IsSpellCheckEnabled33 #
=33$ %
true33& *
,33* +
}44 
;44 
return55 
richEditBox55 
;55 
}66 	
private88 
WordProcessor88 #
InitializeWordProcessor88 5
(885 6
)886 7
{99 	
var:: 
	processor:: 
=:: 
new:: 
WordProcessor::  -
{;; 
DocumentViewer<< 
=<<  
Viewer<<! '
,<<' (
RichEdit== 
=== 
RichEditBox== &
,==& '
OpenFileService>> 
=>>  !
new>>" %!
OpenFileDialogService>>& ;
(>>; <
)>>< =
,>>= >
SaveFileService?? 
=??  !
new??" %!
SaveFileDialogService??& ;
(??; <
)??< =
,??= >
PrintFileService@@  
=@@! "
new@@# &
PrintDialogService@@' 9
(@@9 :
)@@: ;
,@@; <
PageSetupServiceAA  
=AA! "
newAA# &
PageSetupServiceAA' 7
(AA7 8
)AA8 9
,AA9 :
AlertServiceBB 
=BB 
newBB "
AlertDialogServiceBB# 5
(BB5 6
)BB6 7
,BB7 8
}CC 
;CC 
returnDD 
	processorDD 
;DD 
}EE 	
}FF 
}GG †(
ED:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Util\WindowHelper.cs
	namespace 	
EzWriterView
 
. 
Util 
{ 
class 	
WindowHelper
 
{ 
public 
static 
void 

RemoveIcon %
(% &
Window& ,
window- 3
)3 4
{ 	
IntPtr 
hwnd 
= 
new 
WindowInteropHelper 1
(1 2
window2 8
)8 9
.9 :
Handle: @
;@ A
int 
extendedStyle 
= 
GetWindowLong  -
(- .
hwnd. 2
,2 3
GWL_EXSTYLE4 ?
)? @
;@ A
SetWindowLong 
( 
hwnd 
, 
GWL_EXSTYLE  +
,+ ,
extendedStyle- :
|; <
WS_EX_DLGMODALFRAME= P
)P Q
;Q R
SendMessage 
( 
hwnd 
, 

WM_SETICON (
,( )
(* +
IntPtr+ 1
)1 2

ICON_SMALL2 <
,< =
IntPtr> D
.D E
ZeroE I
)I J
;J K
SendMessage 
( 
hwnd 
, 

WM_SETICON (
,( )
(* +
IntPtr+ 1
)1 2
ICON_BIG2 :
,: ;
IntPtr< B
.B C
ZeroC G
)G H
;H I
SetWindowPos 
( 
hwnd 
, 
IntPtr %
.% &
Zero& *
,* +
$num, -
,- .
$num/ 0
,0 1
$num2 3
,3 4
$num5 6
,6 7

SWP_NOMOVE8 B
|C D

SWP_NOSIZEE O
|P Q
SWP_NOZORDERR ^
|_ `
SWP_FRAMECHANGEDa q
)q r
;r s
} 	
private 
const 
int 
GWL_EXSTYLE %
=& '
-( )
$num) +
;+ ,
private   
const   
int   

SWP_NOSIZE   $
=  % &
$num  ' -
;  - .
private!! 
const!! 
int!! 

SWP_NOMOVE!! $
=!!% &
$num!!' -
;!!- .
private"" 
const"" 
int"" 
SWP_NOZORDER"" &
=""' (
$num"") /
;""/ 0
private## 
const## 
int## 
SWP_FRAMECHANGED## *
=##+ ,
$num##- 3
;##3 4
private$$ 
const$$ 
int$$ 
WS_EX_DLGMODALFRAME$$ -
=$$. /
$num$$0 6
;$$6 7
private%% 
const%% 
int%% 

WM_SETICON%% $
=%%% &
$num%%' -
;%%- .
private&& 
const&& 
int&& 

ICON_SMALL&& $
=&&% &
$num&&' (
;&&( )
private'' 
const'' 
int'' 
ICON_BIG'' "
=''# $
$num''% &
;''& '
[)) 	
	DllImport))	 
()) 
$str)) 
)))  
]))  !
private** 
static** 
extern** 
int** !
GetWindowLong**" /
(**/ 0
IntPtr**0 6
hwnd**7 ;
,**; <
int**= @
index**A F
)**F G
;**G H
[,, 	
	DllImport,,	 
(,, 
$str,, 
),,  
],,  !
private-- 
static-- 
extern-- 
int-- !
SetWindowLong--" /
(--/ 0
IntPtr--0 6
hwnd--7 ;
,--; <
int--= @
index--A F
,--F G
int--H K
newStyle--L T
)--T U
;--U V
[// 	
	DllImport//	 
(// 
$str// 
)//  
]//  !
private00 
static00 
extern00 
bool00 "
SetWindowPos00# /
(00/ 0
IntPtr000 6
hwnd007 ;
,00; <
IntPtr00= C
hwndInsertAfter00D S
,00S T
int00U X
x00Y Z
,00Z [
int00\ _
y00` a
,00a b
int00c f
width00g l
,00l m
int00n q
height00r x
,00x y
uint00z ~
flags	00 Ñ
)
00Ñ Ö
;
00Ö Ü
[22 	
	DllImport22	 
(22 
$str22 
,22  
CharSet22! (
=22) *
CharSet22+ 2
.222 3
Auto223 7
)227 8
]228 9
private33 
static33 
extern33 
IntPtr33 $
SendMessage33% 0
(330 1
IntPtr331 7
hWnd338 <
,33< =
int33> A
Msg33B E
,33E F
IntPtr33G M
wParam33N T
,33T U
IntPtr33V \
lParam33] c
)33c d
;33d e
}66 
}77 Ã
KD:\Programacion\CSharp\WPF\EzWriter\EzWriterView\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str #
)# $
]$ %
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 s
+		t u
$str

 [
+

\ ]
$str F
+G H
$str D
+E F
$str 6
+7 8
$str 6
+7 8
$str Y
)Y Z
]Z [
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str %
)% &
]& '
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str /
)/ 0
]0 1
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[&& 
assembly&& 	
:&&	 

	ThemeInfo&& 
(&& &
ResourceDictionaryLocation'' 
.'' 
None'' #
,''# $&
ResourceDictionaryLocation** 
.** 
SourceAssembly** -
)-- 
]-- 
[:: 
assembly:: 	
:::	 

AssemblyVersion:: 
(:: 
$str:: $
)::$ %
]::% &
[;; 
assembly;; 	
:;;	 

AssemblyFileVersion;; 
(;; 
$str;; (
);;( )
];;) *