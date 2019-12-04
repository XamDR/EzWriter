∑
QD:\Programacion\CSharp\WPF\EzWriter\EzWriterViewModel\Commands\DelegateCommand.cs
	namespace 	
EzWriterViewModel
 
. 
Commands $
{ 
class		 	
DelegateCommand		
 
:		 
ICommand		 $
{

 
private 
readonly 
Action 
<  
object  &
>& '
action( .
;. /
private 
readonly 
Func 
< 
object $
,$ %
bool& *
>* +
canExecuteAction, <
;< =
public 
DelegateCommand 
( 
Action %
<% &
object& ,
>, -
action. 4
,4 5
Func6 :
<: ;
object; A
,A B
boolC G
>G H
canExecuteActionI Y
)Y Z
{ 	
this 
. 
action 
= 
action  
;  !
this 
. 
canExecuteAction !
=" #
canExecuteAction$ 4
;4 5
} 	
public 
DelegateCommand 
( 
Action %
action& ,
,, -
Func. 2
<2 3
bool3 7
>7 8
canExecuteAction9 I
)I J
:K L
thisM Q
(Q R
oR S
=>T V
actionW ]
(] ^
)^ _
,_ `
oa b
=>c e
canExecuteActionf v
(v w
)w x
)x y
{z {
}| }
public$$ 
DelegateCommand$$ 
($$ 
Action$$ %
<$$% &
object$$& ,
>$$, -
action$$. 4
)$$4 5
:$$6 7
this$$8 <
($$< =
action$$= C
,$$C D
null$$E I
)$$I J
{$$K L
}$$M N
public** 
DelegateCommand** 
(** 
Action** %
action**& ,
)**, -
:**. /
this**0 4
(**4 5
o**5 6
=>**7 9
action**: @
(**@ A
)**A B
)**B C
{**D E
}**F G
public22 
bool22 

CanExecute22 
(22 
object22 %
	parameter22& /
)22/ 0
=>221 3
canExecuteAction224 D
==22E G
null22H L
?22M N
true22O S
:22T U
canExecuteAction22V f
(22f g
	parameter22g p
)22p q
;22q r
public88 
void88 
Execute88 
(88 
object88 "
	parameter88# ,
)88, -
=>88. 0
action881 7
(887 8
	parameter888 A
)88A B
;88B C
public== 
void== "
RaiseCanExecuteChanged== *
(==* +
)==+ ,
=>==- /
CanExecuteChanged==0 A
?==A B
.==B C
Invoke==C I
(==I J
this==J N
,==N O
	EventArgs==P Y
.==Y Z
Empty==Z _
)==_ `
;==` a
publicBB 
eventBB 
EventHandlerBB !
CanExecuteChangedBB" 3
;BB3 4
}CC 
}DD €)
XD:\Programacion\CSharp\WPF\EzWriter\EzWriterViewModel\Commands\DelegatePreviewCommand.cs
	namespace 	
EzWriterViewModel
 
. 
Commands $
{ 
class		 	"
DelegatePreviewCommand		
  
:		! "
IPreviewCommand		# 2
{

 
private 
readonly 
Action 
<  
object  &
>& '
action( .
;. /
private 
readonly 
Func 
< 
object $
,$ %
bool& *
>* +
canExecuteAction, <
;< =
private 
readonly 
Action 
<  
object  &
>& '
previewAction( 5
;5 6
private 
readonly 
Action 
cancelPreview  -
;- .
public "
DelegatePreviewCommand %
(% &
Action& ,
<, -
object- 3
>3 4
action5 ;
,; <
Func= A
<A B
objectB H
,H I
boolJ N
>N O
canExecuteActionP `
,` a
Action& ,
<, -
object- 3
>3 4
previewAction5 B
,B C
ActionD J
cancelPreviewK X
)X Y
{ 	
this 
. 
action 
= 
action  
;  !
this 
. 
canExecuteAction !
=" #
canExecuteAction$ 4
;4 5
this 
. 
previewAction 
=  
previewAction! .
;. /
this 
. 
cancelPreview 
=  
cancelPreview! .
;. /
} 	
public"" "
DelegatePreviewCommand"" %
(""% &
Action""& ,
<"", -
object""- 3
>""3 4
action""5 ;
,""; <
Action""= C
<""C D
object""D J
>""J K
previewAction""L Y
,""Y Z
Action""[ a
cancelPreview""b o
)""o p
:## 
this## 
(## 
action## 
,## 
null## 
,##  
previewAction##! .
,##. /
cancelPreview##0 =
)##= >
{##? @
}##A B
public** "
DelegatePreviewCommand** %
(**% &
Action**& ,
<**, -
object**- 3
>**3 4
action**5 ;
,**; <
Func**= A
<**A B
object**B H
,**H I
bool**J N
>**N O
canExecuteAction**P `
)**` a
:++ 
this++ 
(++ 
action++ 
,++ 
canExecuteAction++ +
,+++ ,
null++- 1
,++1 2
null++3 7
)++7 8
{++9 :
}++; <
public11 "
DelegatePreviewCommand11 %
(11% &
Action11& ,
<11, -
object11- 3
>113 4
action115 ;
)11; <
:11= >
this11? C
(11C D
action11D J
,11J K
null11L P
,11P Q
null11R V
,11V W
null11X \
)11\ ]
{11^ _
}11` a
public66 
void66 
CancelPreview66 !
(66! "
)66" #
{77 	
if88 
(88 
previewAction88 
!=88  
null88! %
)88% &
{99 
cancelPreview:: 
(:: 
):: 
;::  
};; 
}<< 	
publicCC 
boolCC 

CanExecuteCC 
(CC 
objectCC %
	parameterCC& /
)CC/ 0
=>CC1 3
canExecuteActionCC4 D
==CCE G
nullCCH L
?CCM N
trueCCO S
:CCT U
canExecuteActionCCV f
(CCf g
	parameterCCg p
)CCp q
;CCq r
publicII 
voidII 
ExecuteII 
(II 
objectII "
	parameterII# ,
)II, -
=>II. 0
actionII1 7
(II7 8
	parameterII8 A
)IIA B
;IIB C
publicOO 
voidOO 
PreviewOO 
(OO 
objectOO "
	parameterOO# ,
)OO, -
{PP 	
ifQQ 
(QQ 
previewActionQQ 
==QQ  
nullQQ! %
)QQ% &
{RR 
actionSS 
(SS 
	parameterSS  
)SS  !
;SS! "
}TT 
elseUU 
{VV 
previewActionWW 
(WW 
	parameterWW '
)WW' (
;WW( )
}XX 
}YY 	
public^^ 
void^^ "
RaiseCanExecuteChanged^^ *
(^^* +
)^^+ ,
=>^^- /
CanExecuteChanged^^0 A
?^^A B
.^^B C
Invoke^^C I
(^^I J
this^^J N
,^^N O
	EventArgs^^P Y
.^^Y Z
Empty^^Z _
)^^_ `
;^^` a
publiccc 
eventcc 
EventHandlercc !
CanExecuteChangedcc" 3
;cc3 4
}dd 
}ee ﬁ)
RD:\Programacion\CSharp\WPF\EzWriter\EzWriterViewModel\Core\AboutDialogViewModel.cs
	namespace 	
EzWriterViewModel
 
. 
Core  
{ 
public		 

class		  
AboutDialogViewModel		 %
:		& '
BaseViewModel		( 5
{

 
private 
readonly 
WordProcessor &
wordProcessor' 4
;4 5
public  
AboutDialogViewModel #
(# $
WordProcessor$ 1
wordProcessor2 ?
)? @
=>A C
thisD H
.H I
wordProcessorI V
=W X
wordProcessorY f
;f g
public 
string 
AssemblyCopyright '
{ 	
get 
{ 
var 

attributes 
=  
Assembly! )
.) *
GetEntryAssembly* :
(: ;
); <
.< =
GetCustomAttributes= P
(P Q
typeofQ W
(W X&
AssemblyCopyrightAttributeX r
)r s
,s t
falseu z
)z {
;{ |
return 

attributes !
.! "
Length" (
==) +
$num, -
?. /
string0 6
.6 7
Empty7 <
:= >
(? @
(@ A&
AssemblyCopyrightAttributeA [
)[ \

attributes\ f
[f g
$numg h
]h i
)i j
.j k
	Copyrightk t
;t u
} 
} 	
public!! 
string!! 
AssemblyDescription!! )
{"" 	
get## 
{$$ 
var%% 

attributes%% 
=%%  
Assembly%%! )
.%%) *
GetEntryAssembly%%* :
(%%: ;
)%%; <
.%%< =
GetCustomAttributes%%= P
(%%P Q
typeof%%Q W
(%%W X(
AssemblyDescriptionAttribute%%X t
)%%t u
,%%u v
false%%w |
)%%| }
;%%} ~
return&& 

attributes&& !
.&&! "
Length&&" (
==&&) +
$num&&, -
?&&. /
string&&0 6
.&&6 7
Empty&&7 <
:&&= >
(&&? @
(&&@ A(
AssemblyDescriptionAttribute&&A ]
)&&] ^

attributes&&^ h
[&&h i
$num&&i j
]&&j k
)&&k l
.&&l m
Description&&m x
;&&x y
}'' 
}(( 	
public-- 
string-- 
AssemblyProduct-- %
{.. 	
get// 
{00 
var11 

attributes11 
=11  
Assembly11! )
.11) *
GetEntryAssembly11* :
(11: ;
)11; <
.11< =
GetCustomAttributes11= P
(11P Q
typeof11Q W
(11W X$
AssemblyProductAttribute11X p
)11p q
,11q r
false11s x
)11x y
;11y z
return22 

attributes22 !
.22! "
Length22" (
==22) +
$num22, -
?22. /
string220 6
.226 7
Empty227 <
:22= >
(22? @
(22@ A$
AssemblyProductAttribute22A Y
)22Y Z

attributes22Z d
[22d e
$num22e f
]22f g
)22g h
.22h i
Product22i p
;22p q
}33 
}44 	
public99 
string99 
AssemblyTitle99 #
{:: 	
get;; 
{<< 
var== 

attributes== 
===  
Assembly==! )
.==) *
GetEntryAssembly==* :
(==: ;
)==; <
.==< =
GetCustomAttributes=== P
(==P Q
typeof==Q W
(==W X"
AssemblyTitleAttribute==X n
)==n o
,==o p
false==q v
)==v w
;==w x
if?? 
(?? 

attributes?? 
.?? 
Length?? %
>??& '
$num??( )
)??) *
{@@ 
varAA 
titleAttributeAA &
=AA' (
(AA) *"
AssemblyTitleAttributeAA* @
)AA@ A

attributesAAA K
[AAK L
$numAAL M
]AAM N
;AAN O
ifCC 
(CC 
titleAttributeCC &
.CC& '
TitleCC' ,
!=CC- /
$strCC0 2
)CC2 3
{DD 
returnEE 
titleAttributeEE -
.EE- .
TitleEE. 3
;EE3 4
}FF 
}GG 
returnHH 
PathHH 
.HH '
GetFileNameWithoutExtensionHH 7
(HH7 8
AssemblyHH8 @
.HH@ A
GetEntryAssemblyHHA Q
(HHQ R
)HHR S
.HHS T
CodeBaseHHT \
)HH\ ]
;HH] ^
}II 
}JJ 	
publicOO 
stringOO 
AssemblyVersionOO %
=>OO& (
AssemblyOO) 1
.OO1 2
GetEntryAssemblyOO2 B
(OOB C
)OOC D
.OOD E
GetNameOOE L
(OOL M
)OOM N
.OON O
VersionOOO V
.OOV W
ToStringOOW _
(OO_ `
)OO` a
;OOa b
}PP 
}QQ ê
KD:\Programacion\CSharp\WPF\EzWriter\EzWriterViewModel\Core\BaseViewModel.cs
	namespace 	
EzWriterViewModel
 
. 
Core  
{ 
public 

class 
BaseViewModel 
:  "
INotifyPropertyChanged! 7
{		 
	protected 
virtual 
void 
OnPropertyChanged 0
(0 1
string1 7
propertyName8 D
)D E
=> 
PropertyChanged 
? 
.  
Invoke  &
(& '
this' +
,+ ,
new- 0$
PropertyChangedEventArgs1 I
(I J
propertyNameJ V
)V W
)W X
;X Y
public 
event '
PropertyChangedEventHandler 0
PropertyChanged1 @
;@ A
} 
} È-
RD:\Programacion\CSharp\WPF\EzWriter\EzWriterViewModel\Core\FindReplaceViewModel.cs
	namespace 	
EzWriterViewModel
 
. 
Core  
{ 
public

 

class

  
FindReplaceViewModel

 %
:

& '
BaseViewModel

( 5
{ 
private 
readonly 
WordProcessor &
wordProcessor' 4
;4 5
public  
FindReplaceViewModel #
(# $
WordProcessor$ 1
wordProcessor2 ?
)? @
=>A C
thisD H
.H I
wordProcessorI V
=W X
wordProcessorY f
;f g
private 
string 
textToReplace $
;$ %
public 
string 
TextToReplace #
{ 	
get 
=> 
textToReplace  
;  !
set 
{ 
if 
( 
value 
!= 
textToReplace *
)* +
{ 
textToReplace   !
=  " #
value  $ )
;  ) *
OnPropertyChanged!! %
(!!% &
nameof!!& ,
(!!, -
TextToReplace!!- :
)!!: ;
)!!; <
;!!< =
}"" 
}## 
}$$ 	
private&& 
string&& 
textToSearch&& #
;&&# $
public++ 
string++ 
TextToSearch++ "
{,, 	
get-- 
=>-- 
textToSearch-- 
;--  
set.. 
{// 
if00 
(00 
value00 
!=00 
textToSearch00 )
)00) *
{11 
textToSearch22  
=22! "
value22# (
;22( )
OnPropertyChanged33 %
(33% &
nameof33& ,
(33, -
TextToSearch33- 9
)339 :
)33: ;
;33; <
}44 
}55 
}66 	
private88 
bool88 
isCaseChecked88 "
;88" #
public== 
bool== 
IsCaseChecked== !
{>> 	
get?? 
=>?? 
isCaseChecked??  
;??  !
set@@ 
{AA 
ifBB 
(BB 
valueBB 
!=BB 
isCaseCheckedBB *
)BB* +
{CC 
isCaseCheckedDD !
=DD" #
valueDD$ )
;DD) *
OnPropertyChangedEE %
(EE% &
nameofEE& ,
(EE, -
IsCaseCheckedEE- :
)EE: ;
)EE; <
;EE< =
}FF 
}GG 
}HH 	
privateJJ 
intJJ 
selectedIndexJJ !
;JJ! "
publicOO 
intOO 
SelectedIndexOO  
{PP 	
getQQ 
=>QQ 
selectedIndexQQ  
;QQ  !
setRR 
{SS 
selectedIndexTT 
=TT 
valueTT  %
;TT% &
OnPropertyChangedUU !
(UU! "
nameofUU" (
(UU( )
SelectedIndexUU) 6
)UU6 7
)UU7 8
;UU8 9
}VV 
}WW 	
public\\ 
ICommand\\ 
FindTextCommand\\ '
=>\\( *
new\\+ .
DelegateCommand\\/ >
(\\> ?
FindText\\? G
)\\G H
;\\H I
publicaa 
ICommandaa 
ReplaceTextCommandaa *
=>aa+ -
newaa. 1
DelegateCommandaa2 A
(aaA B
ReplaceTextaaB M
)aaM N
;aaN O
privatecc 
voidcc 
FindTextcc 
(cc 
)cc 
{dd 	
varee 
rangeee 
=ee 
wordProcessoree %
.ee% &
RichEditee& .
.ee. /
Documentee/ 7
.ee7 8
EntireRangeee8 C
;eeC D
varff 
optionsff 
=ff 
IsCaseCheckedff '
?ff( )
FindOptionsff* 5
.ff5 6
Caseff6 :
:ff; <
FindOptionsff= H
.ffH I
WordffI M
;ffM N
intgg 
resultgg 
;gg 
doii 
{jj 
resultkk 
=kk 
rangekk 
.kk 
FindTextkk '
(kk' (
TextToSearchkk( 4
,kk4 5
optionskk6 =
)kk= >
;kk> ?
rangell 
.ll 
Fontll 
.ll 
	BackColorll $
=ll% &
$numll' /
;ll/ 0
}mm 
whilemm 
(mm 
resultmm 
>mm 
$nummm 
)mm  
;mm  !
}nn 	
privatepp 
voidpp 
ReplaceTextpp  
(pp  !
)pp! "
{qq 	
varrr 
rangerr 
=rr 
wordProcessorrr %
.rr% &
RichEditrr& .
.rr. /
Documentrr/ 7
.rr7 8
EntireRangerr8 C
;rrC D
varss 
optionsss 
=ss 
IsCaseCheckedss '
?ss( )
FindOptionsss* 5
.ss5 6
Casess6 :
:ss; <
FindOptionsss= H
.ssH I
WordssI M
;ssM N
inttt 
resulttt 
;tt 
dovv 
{ww 
resultxx 
=xx 
rangexx 
.xx 
FindTextxx '
(xx' (
TextToSearchxx( 4
,xx4 5
optionsxx6 =
)xx= >
;xx> ?
rangeyy 
.yy 
Textyy 
=yy 
TextToReplaceyy *
;yy* +
}zz 
whilezz 
(zz 
resultzz 
>zz 
$numzz 
)zz  
;zz  !
}{{ 	
}|| 
}}} ‹
VD:\Programacion\CSharp\WPF\EzWriter\EzWriterViewModel\Core\InsertHyperlinkViewModel.cs
	namespace 	
EzWriterViewModel
 
. 
Core  
{ 
public		 

class		 $
InsertHyperlinkViewModel		 )
:		* +
BaseViewModel		, 9
{

 
private 
readonly 
WordProcessor &
wordProcessor' 4
;4 5
public $
InsertHyperlinkViewModel '
(' (
WordProcessor( 5
wordProcessor6 C
)C D
=>E G
thisH L
.L M
wordProcessorM Z
=[ \
wordProcessor] j
;j k
private 
string 
friendlyName #
;# $
public 
string 
FriendlyName "
{ 	
get 
=> 
friendlyName 
;  
set 
{ 
if 
( 
value 
!= 
friendlyName )
)) *
{ 
friendlyName  
=! "
value# (
;( )
OnPropertyChanged   %
(  % &
nameof  & ,
(  , -
FriendlyName  - 9
)  9 :
)  : ;
;  ; <
}!! 
}"" 
}## 	
private%% 
string%% 
url%% 
;%% 
public** 
string** 
Url** 
{++ 	
get,, 
=>,, 
url,, 
;,, 
set-- 
{.. 
if// 
(// 
value// 
!=// 
url//  
)//  !
{00 
url11 
=11 
value11 
;11  
OnPropertyChanged22 %
(22% &
nameof22& ,
(22, -
Url22- 0
)220 1
)221 2
;222 3
}33 
}44 
}55 	
public:: 
ICommand:: "
InsertHyperlinkCommand:: .
=>::/ 1
new::2 5
DelegateCommand::6 E
(::E F
InsertHyperlink::F U
)::U V
;::V W
private<< 
void<< 
InsertHyperlink<< $
(<<$ %
)<<% &
{== 	
var>> 
	selection>> 
=>> 
wordProcessor>> )
.>>) *
RichEdit>>* 2
.>>2 3
Document>>3 ;
.>>; <
	Selection>>< E
;>>E F
	selection?? 
.?? 
Text?? 
=?? 
FriendlyName?? )
;??) *
	selection@@ 
.@@ 
Url@@ 
=@@ 
$"@@ 
\"@@  
{@@  !
Url@@! $
}@@$ %
\"@@% '
"@@' (
;@@( )
wordProcessorAA 
.AA 

MainWindowAA $
.AA$ %'
IsInsertHyperlinkDialogOpenAA% @
=AAA B
falseAAC H
;AAH I
}BB 	
}CC 
}DD ∑
RD:\Programacion\CSharp\WPF\EzWriter\EzWriterViewModel\Core\InsertTableViewModel.cs
	namespace 	
EzWriterViewModel
 
. 
Core  
{ 
public		 

class		  
InsertTableViewModel		 %
:		& '
BaseViewModel		( 5
{

 
private 
readonly 
WordProcessor &
wordProcessor' 4
;4 5
public  
InsertTableViewModel #
(# $
WordProcessor$ 1
wordProcessor2 ?
)? @
=>A C
thisD H
.H I
wordProcessorI V
=W X
wordProcessorY f
;f g
private 
int 
numberColumns !
;! "
public 
int 
NumberColumns  
{ 	
get 
=> 
numberColumns  
;  !
set 
{ 
if 
( 
value 
!= 
numberColumns *
)* +
{ 
numberColumns !
=" #
value$ )
;) *
OnPropertyChanged   %
(  % &
nameof  & ,
(  , -
numberColumns  - :
)  : ;
)  ; <
;  < =
}!! 
}"" 
}## 	
private%% 
int%% 

numberRows%% 
;%% 
public** 
int** 

NumberRows** 
{++ 	
get,, 
=>,, 

numberRows,, 
;,, 
set-- 
{.. 
if// 
(// 
value// 
!=// 

numberRows// '
)//' (
{00 

numberRows11 
=11  
value11! &
;11& '
OnPropertyChanged22 %
(22% &
nameof22& ,
(22, -

NumberRows22- 7
)227 8
)228 9
;229 :
}33 
}44 
}55 	
public:: 
ICommand:: 
InsertTableCommand:: *
=>::+ -
new::. 1
DelegateCommand::2 A
(::A B
InsertTable::B M
)::M N
;::N O
private<< 
void<< 
InsertTable<<  
(<<  !
)<<! "
{== 	
wordProcessor>> 
.>> 

MainWindow>> $
.>>$ %#
IsInsertTableDialogOpen>>% <
=>>= >
false>>? D
;>>D E
wordProcessor?? 
.?? 
RichEdit?? "
.??" #
InsertTable??# .
(??. /
NumberColumns??/ <
,??< =

NumberRows??> H
)??H I
;??I J
}@@ 	
}AA 
}BB ÉF
QD:\Programacion\CSharp\WPF\EzWriter\EzWriterViewModel\Core\MainWindowViewModel.cs
	namespace 	
EzWriterViewModel
 
. 
Core  
{ 
public		 

class		 
MainWindowViewModel		 $
:		% &
BaseViewModel		' 4
{

 
private 
readonly 
WordProcessor &
wordProcessor' 4
;4 5
public 
MainWindowViewModel "
(" #
WordProcessor# 0
wordProcessor1 >
)> ?
=>@ B
thisC G
.G H
wordProcessorH U
=V W
wordProcessorX e
;e f
private 
bool 
isAboutDialogOpen &
;& '
public 
bool 
IsAboutDialogOpen %
{ 	
get 
=> 
isAboutDialogOpen $
;$ %
set 
{ 
isAboutDialogOpen !
=" #
value$ )
;) *
OnPropertyChanged !
(! "
nameof" (
(( )
IsAboutDialogOpen) :
): ;
); <
;< =
} 
}   	
private"" 
bool"" #
isFindReplaceDialogOpen"" ,
;"", -
public(( 
bool(( #
IsFindReplaceDialogOpen(( +
{)) 	
get** 
=>** #
isFindReplaceDialogOpen** *
;*** +
set++ 
{,, #
isFindReplaceDialogOpen-- '
=--( )
value--* /
;--/ 0
OnPropertyChanged.. !
(..! "
nameof.." (
(..( )#
IsFindReplaceDialogOpen..) @
)..@ A
)..A B
;..B C
}// 
}00 	
private22 
bool22 
isInPreviewMode22 $
;22$ %
public77 
bool77 
IsInPreviewMode77 #
{88 	
get99 
=>99 
isInPreviewMode99 "
;99" #
set:: 
{;; 
if<< 
(<< 
value<< 
!=<< 
isInPreviewMode<< ,
)<<, -
{== 
isInPreviewMode>> #
=>>$ %
value>>& +
;>>+ ,
OnPropertyChanged?? %
(??% &
nameof??& ,
(??, -
IsInPreviewMode??- <
)??< =
)??= >
;??> ?
}@@ 
}AA 
}BB 	
privateDD 
boolDD '
isInsertHyperlinkDialogOpenDD 0
;DD0 1
publicJJ 
boolJJ '
IsInsertHyperlinkDialogOpenJJ /
{KK 	
getLL 
=>LL '
isInsertHyperlinkDialogOpenLL .
;LL. /
setMM 
{NN '
isInsertHyperlinkDialogOpenOO +
=OO, -
valueOO. 3
;OO3 4
OnPropertyChangedPP !
(PP! "
nameofPP" (
(PP( )'
IsInsertHyperlinkDialogOpenPP) D
)PPD E
)PPE F
;PPF G
}QQ 
}RR 	
privateTT 
boolTT #
isInsertTableDialogOpenTT ,
;TT, -
publicZZ 
boolZZ #
IsInsertTableDialogOpenZZ +
{[[ 	
get\\ 
=>\\ #
isInsertTableDialogOpen\\ *
;\\* +
set]] 
{^^ #
isInsertTableDialogOpen__ '
=__( )
value__* /
;__/ 0
OnPropertyChanged`` !
(``! "
nameof``" (
(``( )#
IsInsertTableDialogOpen``) @
)``@ A
)``A B
;``B C
}aa 
}bb 	
privatedd 
booldd 
isTabVisibledd !
;dd! "
publicjj 
booljj 
IsTabVisiblejj  
{kk 	
getll 
=>ll 
isTabVisiblell 
;ll  
setmm 
{nn 
ifoo 
(oo 
valueoo 
!=oo 
isTabVisibleoo )
)oo) *
{pp 
isTabVisibleqq  
=qq! "
valueqq# (
;qq( )
OnPropertyChangedrr %
(rr% &
nameofrr& ,
(rr, -
IsTabVisiblerr- 9
)rr9 :
)rr: ;
;rr; <
}ss 
}tt 
}uu 	
privateww 
doubleww 
sliderValueww "
=ww# $
$numww% *
;ww* +
public|| 
double|| 
SliderValue|| !
{}} 	
get~~ 
=>~~ 
sliderValue~~ 
;~~ 
set 
{
ÄÄ 
if
ÅÅ 
(
ÅÅ 
value
ÅÅ 
!=
ÅÅ 
sliderValue
ÅÅ (
)
ÅÅ( )
{
ÇÇ 
sliderValue
ÉÉ 
=
ÉÉ  !
value
ÉÉ" '
;
ÉÉ' (
OnPropertyChanged
ÖÖ %
(
ÖÖ% &
nameof
ÖÖ& ,
(
ÖÖ, -
SliderValue
ÖÖ- 8
)
ÖÖ8 9
)
ÖÖ9 :
;
ÖÖ: ;
}
ÜÜ 
}
áá 
}
àà 	
private
ää 
string
ää 
title
ää 
;
ää 
public
èè 
string
èè 
Title
èè 
{
êê 	
get
ëë 
=>
ëë 
title
ëë 
;
ëë 
set
íí 
{
ìì 
if
îî 
(
îî 
value
îî 
!=
îî 
title
îî "
)
îî" #
{
ïï 
title
ññ 
=
ññ 
value
ññ !
;
ññ! "
OnPropertyChanged
óó %
(
óó% &
nameof
óó& ,
(
óó, -
Title
óó- 2
)
óó2 3
)
óó3 4
;
óó4 5
}
òò 
}
ôô 
}
öö 	
public
üü 
ICommand
üü 
HideTabCommand
üü &
=>
üü' )
new
üü* -
DelegateCommand
üü. =
(
üü= >
HideTab
üü> E
)
üüE F
;
üüF G
public
§§ 
ICommand
§§ $
ShowAboutDialogCommand
§§ .
=>
§§/ 1
new
§§2 5
DelegateCommand
§§6 E
(
§§E F
ShowAboutDialog
§§F U
)
§§U V
;
§§V W
public
©© 
ICommand
©© 
ShowTabCommand
©© &
=>
©©' )
new
©©* -
DelegateCommand
©©. =
(
©©= >
ShowTab
©©> E
)
©©E F
;
©©F G
public
ÆÆ 
ICommand
ÆÆ *
ShowFindReplaceDialogCommand
ÆÆ 4
=>
ÆÆ5 7
new
ÆÆ8 ;
DelegateCommand
ÆÆ< K
(
ÆÆK L#
ShowFindReplaceDialog
ÆÆL a
)
ÆÆa b
;
ÆÆb c
public
≥≥ 
ICommand
≥≥ (
ShowHyperlinkDialogCommand
≥≥ 2
=>
≥≥3 5
new
≥≥6 9
DelegateCommand
≥≥: I
(
≥≥I J'
ShowInsertHyperlinkDialog
≥≥J c
)
≥≥c d
;
≥≥d e
public
∏∏ 
ICommand
∏∏ $
ShowTableDialogCommand
∏∏ .
=>
∏∏/ 1
new
∏∏2 5
DelegateCommand
∏∏6 E
(
∏∏E F#
ShowInsertTableDialog
∏∏F [
)
∏∏[ \
;
∏∏\ ]
private
∫∫ 
void
∫∫ 
HideTab
∫∫ 
(
∫∫ 
)
∫∫ 
{
ªª 	
IsTabVisible
ºº 
=
ºº 
false
ºº  
;
ºº  !
IsInPreviewMode
ΩΩ 
=
ΩΩ 
false
ΩΩ #
;
ΩΩ# $
}
ææ 	
private
¿¿ 
void
¿¿ 
ShowAboutDialog
¿¿ $
(
¿¿$ %
)
¿¿% &
=>
¿¿' )
IsAboutDialogOpen
¿¿* ;
=
¿¿< =
true
¿¿> B
;
¿¿B C
private
¬¬ 
void
¬¬ 
ShowTab
¬¬ 
(
¬¬ 
)
¬¬ 
{
√√ 	
IsTabVisible
ƒƒ 
=
ƒƒ 
true
ƒƒ 
;
ƒƒ  
IsInPreviewMode
≈≈ 
=
≈≈ 
true
≈≈ "
;
≈≈" #
wordProcessor
∆∆ 
.
∆∆ 
DocumentViewer
∆∆ (
.
∆∆( )
PrintDocument
∆∆) 6
=
∆∆7 8
wordProcessor
∆∆9 F
.
∆∆F G
RichEdit
∆∆G O
.
∆∆O P
PrintDocument
∆∆P ]
;
∆∆] ^
}
«« 	
private
…… 
void
…… #
ShowFindReplaceDialog
…… *
(
……* +
)
……+ ,
=>
……- /%
IsFindReplaceDialogOpen
……0 G
=
……H I
true
……J N
;
……N O
private
ÀÀ 
void
ÀÀ '
ShowInsertHyperlinkDialog
ÀÀ .
(
ÀÀ. /
)
ÀÀ/ 0
=>
ÀÀ1 3)
IsInsertHyperlinkDialogOpen
ÀÀ4 O
=
ÀÀP Q
true
ÀÀR V
;
ÀÀV W
private
ÕÕ 
void
ÕÕ #
ShowInsertTableDialog
ÕÕ *
(
ÕÕ* +
)
ÕÕ+ ,
=>
ÕÕ- /%
IsInsertTableDialogOpen
ÕÕ0 G
=
ÕÕH I
true
ÕÕJ N
;
ÕÕN O
}
ŒŒ 
}œœ ≤Ë
KD:\Programacion\CSharp\WPF\EzWriter\EzWriterViewModel\Core\WordProcessor.cs
	namespace

 	
EzWriterViewModel


 
.

 
Core

  
{ 
public 

class 
WordProcessor 
:  
IWordProcessor! /
{ 
private 
int 
fontBackColor !
;! "
private 
int 
fontForeColor !
;! "
private 
string 
fontName 
;  
private 
float 
fontSize 
; 
private 
float 
lineSpacing !
;! "
private 
float 
charSpacing !
;! "
private 
int 
pageBackColor !
;! "
public   
WordProcessor   
(   
)   
=>   !

MainWindow  " ,
=  - .
new  / 2
MainWindowViewModel  3 F
(  F G
this  G K
)  K L
;  L M
public'' 
ICommand'' 
AddTabCommand'' %
=>''& (
new'') ,
DelegateCommand''- <
(''< =
AddTab''= C
)''C D
;''D E
public,, 
ICommand,, !
AlignParagraphCommand,, -
=>,,. 0
new,,1 4
DelegateCommand,,5 D
(,,D E
AlignParagraph,,E S
),,S T
;,,T U
public11 
ICommand11 
ChangeCaseCommand11 )
=>11* ,
new11- 0
DelegateCommand111 @
(11@ A

ChangeCase11A K
)11K L
;11L M
public66 
ICommand66 )
ChangeCharacterSpacingCommand66 5
=>77 
new77 "
DelegatePreviewCommand77 )
(77) *"
ChangeCharacterSpacing77* @
,77@ A#
PreviewCharacterSpacing77B Y
,77Y Z"
CancelCharacterSpacing77[ q
)77q r
;77r s
public<< 
IPreviewCommand<< &
ChangeFontBackColorCommand<< 9
=>== 
new== "
DelegatePreviewCommand== )
(==) *
ChangeFontBackColor==* =
,=== > 
PreviewFontBackColor==? S
,==S T&
CancelPreviewFontBackColor==U o
)==o p
;==p q
publicBB 
IPreviewCommandBB &
ChangeFontForeColorCommandBB 9
=>CC 
newCC "
DelegatePreviewCommandCC )
(CC) *
ChangeFontForeColorCC* =
,CC= > 
PreviewFontForeColorCC? S
,CCS T&
CancelPreviewFontForeColorCCU o
)CCo p
;CCp q
publicHH 
IPreviewCommandHH !
ChangeFontNameCommandHH 4
=>HH5 7
newHH8 ;"
DelegatePreviewCommandHH< R
(HHR S
ChangeFontNameHHS a
,HHa b
PreviewFontNameHHc r
,HHr s"
CancelPreviewFontName	HHt â
)
HHâ ä
;
HHä ã
publicMM 
IPreviewCommandMM !
ChangeFontSizeCommandMM 4
=>MM5 7
newMM8 ;"
DelegatePreviewCommandMM< R
(MMR S
ChangeFontSizeMMS a
,MMa b
PreviewFontSizeMMc r
,MMr s"
CancelPreviewFontSize	MMt â
)
MMâ ä
;
MMä ã
publicRR 
IPreviewCommandRR &
ChangePageBackColorCommandRR 9
=>SS 
newSS "
DelegatePreviewCommandSS )
(SS) *
ChangePageBackColorSS* =
,SS= > 
PreviewPageBackColorSS? S
,SSS T&
CancelPreviewPageBackColorSSU o
)SSo p
;SSp q
publicXX 
ICommandXX %
ChangePageSettingsCommandXX 1
=>XX2 4
newXX5 8
DelegateCommandXX9 H
(XXH I
ChangePageSettingsXXI [
)XX[ \
;XX\ ]
public]] 
ICommand]] 
CopyCommand]] #
=>]]$ &
new]]' *
DelegateCommand]]+ :
(]]: ;
Copy]]; ?
)]]? @
;]]@ A
publicbb 
ICommandbb !
CreateDocumentCommandbb -
=>bb. 0
newbb1 4
DelegateCommandbb5 D
(bbD E
CreateDocumentbbE S
)bbS T
;bbT U
publicgg 
ICommandgg 

CutCommandgg "
=>gg# %
newgg& )
DelegateCommandgg* 9
(gg9 :
Cutgg: =
)gg= >
;gg> ?
publicll 
ICommandll $
DecrementFontSizeCommandll 0
=>ll1 3
newll4 7
DelegateCommandll8 G
(llG H
DecrementFontSizellH Y
)llY Z
;llZ [
publicqq 
ICommandqq $
IncrementFontSizeCommandqq 0
=>qq1 3
newqq4 7
DelegateCommandqq8 G
(qqG H
IncrementFontSizeqqH Y
)qqY Z
;qqZ [
publicvv 
ICommandvv 
InsertImageCommandvv *
=>vv+ -
newvv. 1
DelegateCommandvv2 A
(vvA B
InsertImagevvB M
)vvM N
;vvN O
public{{ 
ICommand{{ !
MoveToNextPageCommand{{ -
=>{{. 0
new{{1 4
DelegateCommand{{5 D
({{D E
MoveToNextPage{{E S
){{S T
;{{T U
public
ÄÄ 
ICommand
ÄÄ '
MoveToPreviousPageCommand
ÄÄ 1
=>
ÄÄ2 4
new
ÄÄ5 8
DelegateCommand
ÄÄ9 H
(
ÄÄH I 
MoveToPreviousPage
ÄÄI [
)
ÄÄ[ \
;
ÄÄ\ ]
public
ÖÖ 
ICommand
ÖÖ 
OpenFileCommand
ÖÖ '
=>
ÖÖ( *
new
ÖÖ+ .
DelegateCommand
ÖÖ/ >
(
ÖÖ> ?
OpenFile
ÖÖ? G
)
ÖÖG H
;
ÖÖH I
public
ää 
ICommand
ää 
PasteCommand
ää $
=>
ää% '
new
ää( +
DelegateCommand
ää, ;
(
ää; <
Paste
ää< A
)
ääA B
;
ääB C
public
èè 
ICommand
èè 
PrintCommand
èè $
=>
èè% '
new
èè( +
DelegateCommand
èè, ;
(
èè; <
Print
èè< A
)
èèA B
;
èèB C
public
îî 
ICommand
îî 
SaveFileCommand
îî '
=>
îî( *
new
îî+ .
DelegateCommand
îî/ >
(
îî> ?
SaveFile
îî? G
)
îîG H
;
îîH I
public
ôô 
ICommand
ôô #
SetLineSpacingCommand
ôô -
=>
ôô. 0
new
ôô1 4$
DelegatePreviewCommand
ôô5 K
(
ôôK L
SetLineSpacing
ôôL Z
,
ôôZ [ 
PreviewLineSpacing
ôô\ n
,
ôôn o'
CancelPreviewLineSpacingôôp à
)ôôà â
;ôôâ ä
public
ûû 
ICommand
ûû "
SetListBulletCommand
ûû ,
=>
ûû- /
new
ûû0 3
DelegateCommand
ûû4 C
(
ûûC D
SetListBullet
ûûD Q
)
ûûQ R
;
ûûR S
public
££ 
ICommand
££ "
SetPageLayoutCommand
££ ,
=>
££- /
new
££0 3
DelegateCommand
££4 C
(
££C D
SetPageLayout
££D Q
)
££Q R
;
££R S
public
®® 
ICommand
®®  
SetPageZoomCommand
®® *
=>
®®+ -
new
®®. 1
DelegateCommand
®®2 A
(
®®A B
SetPageZoom
®®B M
)
®®M N
;
®®N O
public
≠≠ 
ICommand
≠≠ "
SetSpaceAfterCommand
≠≠ ,
=>
≠≠- /
new
≠≠0 3
DelegateCommand
≠≠4 C
(
≠≠C D
SetSpaceAfter
≠≠D Q
)
≠≠Q R
;
≠≠R S
public
≤≤ 
ICommand
≤≤ #
SetSpaceBeforeCommand
≤≤ -
=>
≤≤. 0
new
≤≤1 4
DelegateCommand
≤≤5 D
(
≤≤D E
SetSpaceBefore
≤≤E S
)
≤≤S T
;
≤≤T U
public
∑∑ 
ICommand
∑∑ &
SetUnderlineStyleCommand
∑∑ 0
=>
∑∑1 3
new
∑∑4 7
DelegateCommand
∑∑8 G
(
∑∑G H
SetUnderlineStyle
∑∑H Y
)
∑∑Y Z
;
∑∑Z [
public
ºº 
ICommand
ºº "
SetZoomFactorCommand
ºº ,
=>
ºº- /
new
ºº0 3
DelegateCommand
ºº4 C
(
ººC D
SetZoomFactor
ººD Q
)
ººQ R
;
ººR S
public
¡¡ 
ICommand
¡¡ 
ToggleBoldCommand
¡¡ )
=>
¡¡* ,
new
¡¡- 0
DelegateCommand
¡¡1 @
(
¡¡@ A

ToggleBold
¡¡A K
)
¡¡K L
;
¡¡L M
public
∆∆ 
ICommand
∆∆ !
ToggleItalicCommand
∆∆ +
=>
∆∆, .
new
∆∆/ 2
DelegateCommand
∆∆3 B
(
∆∆B C
ToggleItalic
∆∆C O
)
∆∆O P
;
∆∆P Q
public
ÀÀ 
ICommand
ÀÀ !
ToggleShadowCommand
ÀÀ +
=>
ÀÀ, .
new
ÀÀ/ 2
DelegateCommand
ÀÀ3 B
(
ÀÀB C
ToggleShadow
ÀÀC O
)
ÀÀO P
;
ÀÀP Q
public
–– 
ICommand
–– $
ToggleSmallCapsCommand
–– .
=>
––/ 1
new
––2 5
DelegateCommand
––6 E
(
––E F
ToggleSmallCaps
––F U
)
––U V
;
––V W
public
’’ 
ICommand
’’ (
ToggleStrikethroughCommand
’’ 2
=>
’’3 5
new
’’6 9
DelegateCommand
’’: I
(
’’I J!
ToggleStrikethrough
’’J ]
)
’’] ^
;
’’^ _
public
⁄⁄ 
ICommand
⁄⁄ $
ToggleSubscriptCommand
⁄⁄ .
=>
⁄⁄/ 1
new
⁄⁄2 5
DelegateCommand
⁄⁄6 E
(
⁄⁄E F
ToggleSubscript
⁄⁄F U
)
⁄⁄U V
;
⁄⁄V W
public
ﬂﬂ 
ICommand
ﬂﬂ &
ToggleSuperscriptCommand
ﬂﬂ 0
=>
ﬂﬂ1 3
new
ﬂﬂ4 7
DelegateCommand
ﬂﬂ8 G
(
ﬂﬂG H
ToggleSuperscript
ﬂﬂH Y
)
ﬂﬂY Z
;
ﬂﬂZ [
public
‰‰ 
ICommand
‰‰ $
ToggleUnderlineCommand
‰‰ .
=>
‰‰/ 1
new
‰‰2 5
DelegateCommand
‰‰6 E
(
‰‰E F
ToggleUnderline
‰‰F U
)
‰‰U V
;
‰‰V W
public
ÌÌ !
IAlertDialogService
ÌÌ "
AlertService
ÌÌ# /
{
ÌÌ0 1
get
ÌÌ2 5
;
ÌÌ5 6
set
ÌÌ7 :
;
ÌÌ: ;
}
ÌÌ< =
public
ÚÚ 
IDialogService
ÚÚ 
OpenFileService
ÚÚ -
{
ÚÚ. /
get
ÚÚ0 3
;
ÚÚ3 4
set
ÚÚ5 8
;
ÚÚ8 9
}
ÚÚ: ;
public
˜˜ 
IDialogService
˜˜ 
SaveFileService
˜˜ -
{
˜˜. /
get
˜˜0 3
;
˜˜3 4
set
˜˜5 8
;
˜˜8 9
}
˜˜: ;
public
¸¸ 
IPageSetupService
¸¸  
PageSetupService
¸¸! 1
{
¸¸2 3
get
¸¸4 7
;
¸¸7 8
set
¸¸9 <
;
¸¸< =
}
¸¸> ?
public
ÅÅ 
IPrintService
ÅÅ 
PrintFileService
ÅÅ -
{
ÅÅ. /
get
ÅÅ0 3
;
ÅÅ3 4
set
ÅÅ5 8
;
ÅÅ8 9
}
ÅÅ: ;
public
ÜÜ !
MainWindowViewModel
ÜÜ "

MainWindow
ÜÜ# -
{
ÜÜ. /
get
ÜÜ0 3
;
ÜÜ3 4
}
ÜÜ5 6
private
åå 
void
åå 
AddTab
åå 
(
åå 
)
åå 
=>
åå  
RichEdit
åå! )
.
åå) *
Document
åå* 2
.
åå2 3
	Selection
åå3 <
.
åå< =
TypeText
åå= E
(
ååE F
$str
ååF J
)
ååJ K
;
ååK L
private
éé 
void
éé 
AlignParagraph
éé #
(
éé# $
object
éé$ *
	parameter
éé+ 4
)
éé4 5
=>
éé6 8
RichEdit
éé9 A
.
ééA B
Document
ééB J
.
ééJ K
	Selection
ééK T
.
ééT U
	Paragraph
ééU ^
.
éé^ _
	Alignment
éé_ h
=
ééi j
(
éék l 
ParagraphAlignment
éél ~
)
éé~ 
	parameteréé à
;ééà â
private
êê 
void
êê 

ChangeCase
êê 
(
êê  
object
êê  &
	parameter
êê' 0
)
êê0 1
=>
êê2 4
RichEdit
êê5 =
.
êê= >
Document
êê> F
.
êêF G
	Selection
êêG P
.
êêP Q

ChangeCase
êêQ [
(
êê[ \
(
êê\ ]

LetterCase
êê] g
)
êêg h
	parameter
êêh q
)
êêq r
;
êêr s
private
íí 
void
íí $
CancelCharacterSpacing
íí +
(
íí+ ,
)
íí, -
=>
íí. 0
RichEdit
íí1 9
.
íí9 :
Document
íí: B
.
ííB C
	Selection
ííC L
.
ííL M
Font
ííM Q
.
ííQ R
Spacing
ííR Y
=
ííZ [
charSpacing
íí\ g
;
ííg h
private
îî 
void
îî %
PreviewCharacterSpacing
îî ,
(
îî, -
object
îî- 3
	parameter
îî4 =
)
îî= >
{
ïï 	
charSpacing
ññ 
=
ññ 
RichEdit
ññ "
.
ññ" #
Document
ññ# +
.
ññ+ ,
	Selection
ññ, 5
.
ññ5 6
Font
ññ6 :
.
ññ: ;
Spacing
ññ; B
;
ññB C
RichEdit
óó 
.
óó 
Document
óó 
.
óó 
	Selection
óó '
.
óó' (
Font
óó( ,
.
óó, -
Spacing
óó- 4
=
óó5 6
(
óó7 8
float
óó8 =
)
óó= >
	parameter
óó> G
;
óóG H
}
òò 	
private
öö 
void
öö $
ChangeCharacterSpacing
öö +
(
öö+ ,
object
öö, 2
	parameter
öö3 <
)
öö< =
{
õõ 	
charSpacing
úú 
=
úú 
(
úú 
float
úú  
)
úú  !
	parameter
úú! *
;
úú* +
RichEdit
ùù 
.
ùù 
Document
ùù 
.
ùù 
	Selection
ùù '
.
ùù' (
Font
ùù( ,
.
ùù, -
Spacing
ùù- 4
=
ùù5 6
charSpacing
ùù7 B
;
ùùB C
}
ûû 	
private
†† 
void
†† (
CancelPreviewFontBackColor
†† /
(
††/ 0
)
††0 1
=>
††2 4
RichEdit
††5 =
.
††= >
Document
††> F
.
††F G
	Selection
††G P
.
††P Q
Font
††Q U
.
††U V
	BackColor
††V _
=
††` a
fontBackColor
††b o
;
††o p
private
¢¢ 
void
¢¢ "
PreviewFontBackColor
¢¢ )
(
¢¢) *
object
¢¢* 0
	parameter
¢¢1 :
)
¢¢: ;
{
££ 	
fontBackColor
§§ 
=
§§ 
RichEdit
§§ $
.
§§$ %
Document
§§% -
.
§§- .
	Selection
§§. 7
.
§§7 8
Font
§§8 <
.
§§< =
	BackColor
§§= F
;
§§F G
RichEdit
•• 
.
•• 
Document
•• 
.
•• 
	Selection
•• '
.
••' (
Font
••( ,
.
••, -
	BackColor
••- 6
=
••7 8
(
••9 :
int
••: =
)
••= >
	parameter
••> G
;
••G H
}
¶¶ 	
private
®® 
void
®® !
ChangeFontBackColor
®® (
(
®®( )
object
®®) /
	parameter
®®0 9
)
®®9 :
{
©© 	
fontBackColor
™™ 
=
™™ 
(
™™ 
int
™™  
)
™™  !
	parameter
™™! *
;
™™* +
RichEdit
´´ 
.
´´ 
Document
´´ 
.
´´ 
	Selection
´´ '
.
´´' (
Font
´´( ,
.
´´, -
	BackColor
´´- 6
=
´´7 8
fontBackColor
´´9 F
;
´´F G
}
¨¨ 	
private
ÆÆ 
void
ÆÆ (
CancelPreviewFontForeColor
ÆÆ /
(
ÆÆ/ 0
)
ÆÆ0 1
=>
ÆÆ2 4
RichEdit
ÆÆ5 =
.
ÆÆ= >
Document
ÆÆ> F
.
ÆÆF G
	Selection
ÆÆG P
.
ÆÆP Q
Font
ÆÆQ U
.
ÆÆU V
	ForeColor
ÆÆV _
=
ÆÆ` a
fontForeColor
ÆÆb o
;
ÆÆo p
private
∞∞ 
void
∞∞ "
PreviewFontForeColor
∞∞ )
(
∞∞) *
object
∞∞* 0
	parameter
∞∞1 :
)
∞∞: ;
{
±± 	
fontForeColor
≤≤ 
=
≤≤ 
RichEdit
≤≤ $
.
≤≤$ %
Document
≤≤% -
.
≤≤- .
	Selection
≤≤. 7
.
≤≤7 8
Font
≤≤8 <
.
≤≤< =
	ForeColor
≤≤= F
;
≤≤F G
RichEdit
≥≥ 
.
≥≥ 
Document
≥≥ 
.
≥≥ 
	Selection
≥≥ '
.
≥≥' (
Font
≥≥( ,
.
≥≥, -
	ForeColor
≥≥- 6
=
≥≥7 8
(
≥≥9 :
int
≥≥: =
)
≥≥= >
	parameter
≥≥> G
;
≥≥G H
}
¥¥ 	
private
∂∂ 
void
∂∂ !
ChangeFontForeColor
∂∂ (
(
∂∂( )
object
∂∂) /
	parameter
∂∂0 9
)
∂∂9 :
{
∑∑ 	
fontForeColor
∏∏ 
=
∏∏ 
(
∏∏ 
int
∏∏  
)
∏∏  !
	parameter
∏∏! *
;
∏∏* +
RichEdit
ππ 
.
ππ 
Document
ππ 
.
ππ 
	Selection
ππ '
.
ππ' (
Font
ππ( ,
.
ππ, -
	ForeColor
ππ- 6
=
ππ7 8
fontForeColor
ππ9 F
;
ππF G
}
∫∫ 	
private
ºº 
void
ºº #
CancelPreviewFontName
ºº *
(
ºº* +
)
ºº+ ,
=>
ºº- /
RichEdit
ºº0 8
.
ºº8 9
Document
ºº9 A
.
ººA B
	Selection
ººB K
.
ººK L
Font
ººL P
.
ººP Q
Name
ººQ U
=
ººV W
fontName
ººX `
;
ºº` a
private
ææ 
void
ææ 
PreviewFontName
ææ $
(
ææ$ %
object
ææ% +
	parameter
ææ, 5
)
ææ5 6
{
øø 	
fontName
¿¿ 
=
¿¿ 
RichEdit
¿¿ 
.
¿¿  
Document
¿¿  (
.
¿¿( )
	Selection
¿¿) 2
.
¿¿2 3
Font
¿¿3 7
.
¿¿7 8
Name
¿¿8 <
;
¿¿< =
RichEdit
¡¡ 
.
¡¡ 
Document
¡¡ 
.
¡¡ 
	Selection
¡¡ '
.
¡¡' (
Font
¡¡( ,
.
¡¡, -
Name
¡¡- 1
=
¡¡2 3
	parameter
¡¡4 =
.
¡¡= >
ToString
¡¡> F
(
¡¡F G
)
¡¡G H
;
¡¡H I
}
¬¬ 	
private
ƒƒ 
void
ƒƒ 
ChangeFontName
ƒƒ #
(
ƒƒ# $
object
ƒƒ$ *
	parameter
ƒƒ+ 4
)
ƒƒ4 5
{
≈≈ 	
fontName
∆∆ 
=
∆∆ 
	parameter
∆∆  
.
∆∆  !
ToString
∆∆! )
(
∆∆) *
)
∆∆* +
;
∆∆+ ,
RichEdit
«« 
.
«« 
Document
«« 
.
«« 
	Selection
«« '
.
««' (
Font
««( ,
.
««, -
Name
««- 1
=
««2 3
fontName
««4 <
;
««< =
}
»» 	
private
   
void
   #
CancelPreviewFontSize
   *
(
  * +
)
  + ,
=>
  - /
RichEdit
  0 8
.
  8 9
Document
  9 A
.
  A B
	Selection
  B K
.
  K L
Font
  L P
.
  P Q
Size
  Q U
=
  V W
fontSize
  X `
;
  ` a
private
ÃÃ 
void
ÃÃ 
PreviewFontSize
ÃÃ $
(
ÃÃ$ %
object
ÃÃ% +
	parameter
ÃÃ, 5
)
ÃÃ5 6
{
ÕÕ 	
fontSize
ŒŒ 
=
ŒŒ 
RichEdit
ŒŒ 
.
ŒŒ  
Document
ŒŒ  (
.
ŒŒ( )
	Selection
ŒŒ) 2
.
ŒŒ2 3
Font
ŒŒ3 7
.
ŒŒ7 8
Size
ŒŒ8 <
;
ŒŒ< =
RichEdit
œœ 
.
œœ 
Document
œœ 
.
œœ 
	Selection
œœ '
.
œœ' (
Font
œœ( ,
.
œœ, -
Size
œœ- 1
=
œœ2 3
(
œœ4 5
float
œœ5 :
)
œœ: ;
	parameter
œœ; D
;
œœD E
}
–– 	
private
““ 
void
““ 
ChangeFontSize
““ #
(
““# $
object
““$ *
	parameter
““+ 4
)
““4 5
{
”” 	
fontSize
‘‘ 
=
‘‘ 
(
‘‘ 
float
‘‘ 
)
‘‘ 
	parameter
‘‘ '
;
‘‘' (
RichEdit
’’ 
.
’’ 
Document
’’ 
.
’’ 
	Selection
’’ '
.
’’' (
Font
’’( ,
.
’’, -
Size
’’- 1
=
’’2 3
fontSize
’’4 <
;
’’< =
}
÷÷ 	
private
ÿÿ 
void
ÿÿ !
ChangePageBackColor
ÿÿ (
(
ÿÿ( )
object
ÿÿ) /
	parameter
ÿÿ0 9
)
ÿÿ9 :
{
ŸŸ 	
pageBackColor
⁄⁄ 
=
⁄⁄ 
(
⁄⁄ 
int
⁄⁄  
)
⁄⁄  !
	parameter
⁄⁄! *
;
⁄⁄* +
RichEdit
€€ 
.
€€ 
BackgroundColor
€€ $
=
€€% &
pageBackColor
€€' 4
;
€€4 5
}
‹‹ 	
private
ﬁﬁ 
void
ﬁﬁ "
PreviewPageBackColor
ﬁﬁ )
(
ﬁﬁ) *
object
ﬁﬁ* 0
	parameter
ﬁﬁ1 :
)
ﬁﬁ: ;
{
ﬂﬂ 	
pageBackColor
‡‡ 
=
‡‡ 
RichEdit
‡‡ $
.
‡‡$ %
BackgroundColor
‡‡% 4
;
‡‡4 5
RichEdit
·· 
.
·· 
BackgroundColor
·· $
=
··% &
(
··' (
int
··( +
)
··+ ,
	parameter
··, 5
;
··5 6
}
‚‚ 	
private
‰‰ 
void
‰‰ (
CancelPreviewPageBackColor
‰‰ /
(
‰‰/ 0
)
‰‰0 1
=>
‰‰2 4
RichEdit
‰‰5 =
.
‰‰= >
BackgroundColor
‰‰> M
=
‰‰N O
pageBackColor
‰‰P ]
;
‰‰] ^
private
ÊÊ 
void
ÊÊ  
ChangePageSettings
ÊÊ '
(
ÊÊ' (
)
ÊÊ( )
{
ÁÁ 	
PageSetupService
ËË 
.
ËË 
Document
ËË %
=
ËË& '
RichEdit
ËË( 0
.
ËË0 1
PrintDocument
ËË1 >
;
ËË> ?
if
ÍÍ 
(
ÍÍ 
PageSetupService
ÍÍ  
.
ÍÍ  !

ShowDialog
ÍÍ! +
(
ÍÍ+ ,
)
ÍÍ, -
==
ÍÍ. 0
true
ÍÍ1 5
)
ÍÍ5 6
{
ÎÎ 
throw
ÏÏ 
new
ÏÏ 
System
ÏÏ  
.
ÏÏ  !%
NotImplementedException
ÏÏ! 8
(
ÏÏ8 9
)
ÏÏ9 :
;
ÏÏ: ;
}
ÌÌ 
}
ÓÓ 	
private
 
void
 
Copy
 
(
 
)
 
=>
 
RichEdit
 '
.
' (
Document
( 0
.
0 1
	Selection
1 :
.
: ;
Copy
; ?
(
? @
)
@ A
;
A B
private
ÚÚ 
void
ÚÚ 
CreateDocument
ÚÚ #
(
ÚÚ# $
)
ÚÚ$ %
{
ÛÛ 	
if
ÙÙ 
(
ÙÙ 
!
ÙÙ 
RichEdit
ÙÙ 
.
ÙÙ 
Document
ÙÙ "
.
ÙÙ" #
Saved
ÙÙ# (
)
ÙÙ( )
{
ıı 
bool
ˆˆ 
?
ˆˆ 
result
ˆˆ 
=
ˆˆ 
AlertService
ˆˆ +
.
ˆˆ+ ,
AskConfirmation
ˆˆ, ;
(
ˆˆ; <
$str
ˆˆ< `
,
ˆˆ` a
$str
ˆˆb l
)
ˆˆl m
;
ˆˆm n
if
¯¯ 
(
¯¯ 
result
¯¯ 
!=
¯¯ 
null
¯¯ "
)
¯¯" #
{
˘˘ 
if
˙˙ 
(
˙˙ 
result
˙˙ 
==
˙˙ !
true
˙˙" &
)
˙˙& '
{
˚˚ 
SaveFile
¸¸  
(
¸¸  !
)
¸¸! "
;
¸¸" #
}
˝˝ 
else
˛˛ 
{
ˇˇ 
RichEdit
ÄÄ  
.
ÄÄ  !
Document
ÄÄ! )
.
ÄÄ) *
New
ÄÄ* -
(
ÄÄ- .
)
ÄÄ. /
;
ÄÄ/ 0
}
ÅÅ 
}
ÇÇ 
}
ÉÉ 
else
ÑÑ 
{
ÖÖ 
RichEdit
ÜÜ 
.
ÜÜ 
Document
ÜÜ !
.
ÜÜ! "
New
ÜÜ" %
(
ÜÜ% &
)
ÜÜ& '
;
ÜÜ' (
}
áá 
}
àà 	
private
ää 
void
ää 
Cut
ää 
(
ää 
)
ää 
=>
ää 
RichEdit
ää &
.
ää& '
Document
ää' /
.
ää/ 0
	Selection
ää0 9
.
ää9 :
Cut
ää: =
(
ää= >
)
ää> ?
;
ää? @
private
åå 
void
åå 
DecrementFontSize
åå &
(
åå& '
)
åå' (
{
çç 	
const
éé 
int
éé 
minFontSize
éé !
=
éé" #
$num
éé$ %
;
éé% &
if
êê 
(
êê 
RichEdit
êê 
.
êê 
Document
êê !
.
êê! "
	Selection
êê" +
.
êê+ ,
Font
êê, 0
.
êê0 1
Size
êê1 5
<=
êê6 8
minFontSize
êê9 D
)
êêD E
{
ëë 
RichEdit
íí 
.
íí 
Document
íí !
.
íí! "
	Selection
íí" +
.
íí+ ,
Font
íí, 0
.
íí0 1
Size
íí1 5
=
íí6 7
minFontSize
íí8 C
;
ííC D
}
ìì 
RichEdit
îî 
.
îî 
Document
îî 
.
îî 
	Selection
îî '
.
îî' (
Font
îî( ,
.
îî, -
Size
îî- 1
--
îî1 3
;
îî3 4
}
ïï 	
private
óó 
void
óó 
IncrementFontSize
óó &
(
óó& '
)
óó' (
{
òò 	
const
ôô 
int
ôô 
maxFontSize
ôô !
=
ôô" #
$num
ôô$ (
;
ôô( )
if
õõ 
(
õõ 
RichEdit
õõ 
.
õõ 
Document
õõ !
.
õõ! "
	Selection
õõ" +
.
õõ+ ,
Font
õõ, 0
.
õõ0 1
Size
õõ1 5
>=
õõ6 8
maxFontSize
õõ9 D
)
õõD E
{
úú 
RichEdit
ùù 
.
ùù 
Document
ùù !
.
ùù! "
	Selection
ùù" +
.
ùù+ ,
Font
ùù, 0
.
ùù0 1
Size
ùù1 5
=
ùù6 7
maxFontSize
ùù8 C
;
ùùC D
}
ûû 
RichEdit
üü 
.
üü 
Document
üü 
.
üü 
	Selection
üü '
.
üü' (
Font
üü( ,
.
üü, -
Size
üü- 1
++
üü1 3
;
üü3 4
}
†† 	
private
¢¢ 
void
¢¢ 
InsertImage
¢¢  
(
¢¢  !
)
¢¢! "
{
££ 	
OpenFileService
§§ 
.
§§ 
DefaultExtension
§§ ,
=
§§- .
$str
§§/ 5
;
§§5 6
OpenFileService
•• 
.
•• 
Filter
•• "
=
••# $
string
••% +
.
••+ ,
Join
••, 0
(
••0 1
$str
••1 3
,
••3 4
new
••5 8
string
••9 ?
[
••? @
]
••@ A
{
¶¶ 
$str
ßß <
,
ßß< =
$str
®® L
,
®®L M
$str
©© $
,
©©$ %
$str™™ ì
,™™ì î
}
´´ 
)
´´ 
;
´´ 
OpenFileService
¨¨ 
.
¨¨ 
FilterIndex
¨¨ '
=
¨¨( )
$num
¨¨* +
;
¨¨+ ,
OpenFileService
≠≠ 
.
≠≠ 
MultiSelect
≠≠ '
=
≠≠( )
true
≠≠* .
;
≠≠. /
OpenFileService
ÆÆ 
.
ÆÆ 
Title
ÆÆ !
=
ÆÆ" #
$str
ÆÆ$ 5
;
ÆÆ5 6
if
∞∞ 
(
∞∞ 
OpenFileService
∞∞ 
.
∞∞  

ShowDialog
∞∞  *
(
∞∞* +
)
∞∞+ ,
==
∞∞- /
true
∞∞0 4
&&
∞∞5 7
OpenFileService
∞∞8 G
.
∞∞G H
	FileNames
∞∞H Q
.
∞∞Q R
All
∞∞R U
(
∞∞U V
filename
∞∞V ^
=>
∞∞_ a
filename
∞∞b j
.
∞∞j k
Length
∞∞k q
>
∞∞r s
$num
∞∞t u
)
∞∞u v
)
∞∞v w
{
±± 
foreach
≤≤ 
(
≤≤ 
var
≤≤ 
filename
≤≤ %
in
≤≤& (
OpenFileService
≤≤) 8
.
≤≤8 9
	FileNames
≤≤9 B
)
≤≤B C
{
≥≥ 
RichEdit
¥¥ 
.
¥¥ 
InsertImage
¥¥ (
(
¥¥( )
filename
¥¥) 1
)
¥¥1 2
;
¥¥2 3
}
µµ 
}
∂∂ 
}
∑∑ 	
private
ππ 
void
ππ 
MoveToNextPage
ππ #
(
ππ# $
)
ππ$ %
=>
ππ& (
DocumentViewer
ππ) 7
.
ππ7 8
	StartPage
ππ8 A
++
ππA C
;
ππC D
private
ªª 
void
ªª  
MoveToPreviousPage
ªª '
(
ªª' (
)
ªª( )
{
ºº 	
if
ΩΩ 
(
ΩΩ 
DocumentViewer
ΩΩ 
.
ΩΩ 
	StartPage
ΩΩ (
>
ΩΩ) *
$num
ΩΩ+ ,
)
ΩΩ, -
{
ææ 
DocumentViewer
øø 
.
øø 
	StartPage
øø (
--
øø( *
;
øø* +
}
¿¿ 
}
¡¡ 	
private
√√ 
void
√√ 
OpenFile
√√ 
(
√√ 
)
√√ 
{
ƒƒ 	
OpenFileService
≈≈ 
.
≈≈ 
DefaultExtension
≈≈ ,
=
≈≈- .
$str
≈≈/ 5
;
≈≈5 6
OpenFileService
∆∆ 
.
∆∆ 
Filter
∆∆ "
=
∆∆# $
string
∆∆% +
.
∆∆+ ,
Join
∆∆, 0
(
∆∆0 1
$str
∆∆1 3
,
∆∆3 4
new
∆∆5 8
string
∆∆9 ?
[
∆∆? @
]
∆∆@ A
{
«« 
$str
»» ?
,
»»? @
$str
…… 3
,
……3 4
$str
   .
}
ÀÀ 
)
ÀÀ 
;
ÀÀ 
OpenFileService
ÃÃ 
.
ÃÃ 
FilterIndex
ÃÃ '
=
ÃÃ( )
$num
ÃÃ* +
;
ÃÃ+ ,
OpenFileService
ÕÕ 
.
ÕÕ 
MultiSelect
ÕÕ '
=
ÕÕ( )
false
ÕÕ* /
;
ÕÕ/ 0
OpenFileService
ŒŒ 
.
ŒŒ 
Title
ŒŒ !
=
ŒŒ" #
$str
ŒŒ$ 3
;
ŒŒ3 4
if
–– 
(
–– 
OpenFileService
–– 
.
––  

ShowDialog
––  *
(
––* +
)
––+ ,
==
––- /
true
––0 4
&&
––5 7
OpenFileService
––8 G
.
––G H
FileName
––H P
.
––P Q
Length
––Q W
>
––X Y
$num
––Z [
)
––[ \
{
—— 
if
““ 
(
““ 
OpenFileService
““ #
.
““# $
FilterIndex
““$ /
==
““0 2
$num
““3 4
)
““4 5
{
”” 
RichEdit
‘‘ 
.
‘‘ 
Document
‘‘ %
.
‘‘% &
OpenFile
‘‘& .
(
‘‘. /
OpenFileService
‘‘/ >
.
‘‘> ?
FileName
‘‘? G
,
‘‘G H!
TextOpenSaveOptions
‘‘I \
.
‘‘\ ]
RTF
‘‘] `
)
‘‘` a
;
‘‘a b
}
’’ 
else
÷÷ 
{
◊◊ 
RichEdit
ÿÿ 
.
ÿÿ 
Document
ÿÿ %
.
ÿÿ% &
OpenFile
ÿÿ& .
(
ÿÿ. /
OpenFileService
ÿÿ/ >
.
ÿÿ> ?
FileName
ÿÿ? G
,
ÿÿG H!
TextOpenSaveOptions
ÿÿI \
.
ÿÿ\ ]
Default
ÿÿ] d
)
ÿÿd e
;
ÿÿe f
}
ŸŸ 

MainWindow
⁄⁄ 
.
⁄⁄ 
Title
⁄⁄  
=
⁄⁄! "
$"
⁄⁄# %
{
⁄⁄% &
Path
⁄⁄& *
.
⁄⁄* +
GetFileName
⁄⁄+ 6
(
⁄⁄6 7
RichEdit
⁄⁄7 ?
.
⁄⁄? @
Document
⁄⁄@ H
.
⁄⁄H I
Name
⁄⁄I M
)
⁄⁄M N
}
⁄⁄N O
 - 
⁄⁄O R
"
⁄⁄R S
;
⁄⁄S T
}
€€ 
}
‹‹ 	
private
ﬁﬁ 
void
ﬁﬁ 
Paste
ﬁﬁ 
(
ﬁﬁ 
object
ﬁﬁ !
	parameter
ﬁﬁ" +
)
ﬁﬁ+ ,
{
ﬂﬂ 	
var
‡‡ 
format
‡‡ 
=
‡‡ 
int
‡‡ 
.
‡‡ 
Parse
‡‡ "
(
‡‡" #
	parameter
‡‡# ,
.
‡‡, -
ToString
‡‡- 5
(
‡‡5 6
)
‡‡6 7
)
‡‡7 8
;
‡‡8 9
if
‚‚ 
(
‚‚ 
RichEdit
‚‚ 
.
‚‚ 
Document
‚‚ !
.
‚‚! "
	Selection
‚‚" +
.
‚‚+ ,
CanPaste
‚‚, 4
(
‚‚4 5
format
‚‚5 ;
)
‚‚; <
)
‚‚< =
{
„„ 
RichEdit
‰‰ 
.
‰‰ 
Document
‰‰ !
.
‰‰! "
	Selection
‰‰" +
.
‰‰+ ,
Paste
‰‰, 1
(
‰‰1 2
format
‰‰2 8
)
‰‰8 9
;
‰‰9 :
}
ÂÂ 
}
ÊÊ 	
private
ËË 
void
ËË 
Print
ËË 
(
ËË 
)
ËË 
{
ÈÈ 	
if
ÍÍ 
(
ÍÍ 
PrintFileService
ÍÍ  
.
ÍÍ  !

ShowDialog
ÍÍ! +
(
ÍÍ+ ,
)
ÍÍ, -
==
ÍÍ. 0
true
ÍÍ1 5
)
ÍÍ5 6
{
ÎÎ 
RichEdit
ÏÏ 
.
ÏÏ 
PrintDocument
ÏÏ &
.
ÏÏ& '
Print
ÏÏ' ,
(
ÏÏ, -
)
ÏÏ- .
;
ÏÏ. /
}
ÌÌ 
}
ÓÓ 	
private
 
void
 
SaveFile
 
(
 
)
 
{
ÒÒ 	
SaveFileService
ÚÚ 
.
ÚÚ 
AddExtension
ÚÚ (
=
ÚÚ) *
true
ÚÚ+ /
;
ÚÚ/ 0
SaveFileService
ÛÛ 
.
ÛÛ 
DefaultExtension
ÛÛ ,
=
ÛÛ- .
$str
ÛÛ/ 5
;
ÛÛ5 6
SaveFileService
ÙÙ 
.
ÙÙ 
Filter
ÙÙ "
=
ÙÙ# $
$str
ÙÙ% t
;
ÙÙt u
SaveFileService
ıı 
.
ıı 
FilterIndex
ıı '
=
ıı( )
$num
ıı* +
;
ıı+ ,
SaveFileService
ˆˆ 
.
ˆˆ 
Title
ˆˆ !
=
ˆˆ" #
$str
ˆˆ$ 5
;
ˆˆ5 6
if
¯¯ 
(
¯¯ 
SaveFileService
¯¯ 
.
¯¯  

ShowDialog
¯¯  *
(
¯¯* +
)
¯¯+ ,
==
¯¯- /
true
¯¯0 4
&&
¯¯5 7
SaveFileService
¯¯8 G
.
¯¯G H
FileName
¯¯H P
.
¯¯P Q
Length
¯¯Q W
>
¯¯X Y
$num
¯¯Z [
)
¯¯[ \
{
˘˘ 
if
˙˙ 
(
˙˙ 
SaveFileService
˙˙ #
.
˙˙# $
FilterIndex
˙˙$ /
==
˙˙0 2
$num
˙˙3 4
)
˙˙4 5
{
˚˚ 
RichEdit
¸¸ 
.
¸¸ 
Document
¸¸ %
.
¸¸% &
SaveFile
¸¸& .
(
¸¸. /
SaveFileService
¸¸/ >
.
¸¸> ?
FileName
¸¸? G
,
¸¸G H!
TextOpenSaveOptions
¸¸I \
.
¸¸\ ]
RTF
¸¸] `
)
¸¸` a
;
¸¸a b
}
˝˝ 
else
˛˛ 
{
ˇˇ 
RichEdit
ÄÄ 
.
ÄÄ 
Document
ÄÄ %
.
ÄÄ% &
SaveFile
ÄÄ& .
(
ÄÄ. /
SaveFileService
ÄÄ/ >
.
ÄÄ> ?
FileName
ÄÄ? G
,
ÄÄG H!
TextOpenSaveOptions
ÄÄI \
.
ÄÄ\ ]
	PlainText
ÄÄ] f
)
ÄÄf g
;
ÄÄg h
}
ÅÅ 

MainWindow
ÇÇ 
.
ÇÇ 
Title
ÇÇ  
=
ÇÇ! "
$"
ÇÇ# %
{
ÇÇ% &
Path
ÇÇ& *
.
ÇÇ* +
GetFileName
ÇÇ+ 6
(
ÇÇ6 7
RichEdit
ÇÇ7 ?
.
ÇÇ? @
Document
ÇÇ@ H
.
ÇÇH I
Name
ÇÇI M
)
ÇÇM N
}
ÇÇN O
 - 
ÇÇO R
"
ÇÇR S
;
ÇÇS T
}
ÉÉ 
}
ÑÑ 	
private
ÜÜ 
void
ÜÜ &
CancelPreviewLineSpacing
ÜÜ -
(
ÜÜ- .
)
ÜÜ. /
=>
ÜÜ0 2
RichEdit
ÜÜ3 ;
.
ÜÜ; <
Document
ÜÜ< D
.
ÜÜD E
	Selection
ÜÜE N
.
ÜÜN O
	Paragraph
ÜÜO X
.
ÜÜX Y
SetLineSpacing
ÜÜY g
(
ÜÜg h
lineSpacing
ÜÜh s
)
ÜÜs t
;
ÜÜt u
private
àà 
void
àà  
PreviewLineSpacing
àà '
(
àà' (
object
àà( .
	parameter
àà/ 8
)
àà8 9
{
ââ 	
lineSpacing
ää 
=
ää 
RichEdit
ää "
.
ää" #
Document
ää# +
.
ää+ ,
	Selection
ää, 5
.
ää5 6
	Paragraph
ää6 ?
.
ää? @
LineSpacing
ää@ K
;
ääK L
RichEdit
ãã 
.
ãã 
Document
ãã 
.
ãã 
	Selection
ãã '
.
ãã' (
	Paragraph
ãã( 1
.
ãã1 2
SetLineSpacing
ãã2 @
(
ãã@ A
(
ããA B
float
ããB G
)
ããG H
	parameter
ããH Q
)
ããQ R
;
ããR S
}
åå 	
private
éé 
void
éé 
SetLineSpacing
éé #
(
éé# $
object
éé$ *
	parameter
éé+ 4
)
éé4 5
{
èè 	
lineSpacing
êê 
=
êê 
(
êê 
float
êê  
)
êê  !
	parameter
êê! *
;
êê* +
RichEdit
ëë 
.
ëë 
Document
ëë 
.
ëë 
	Selection
ëë '
.
ëë' (
	Paragraph
ëë( 1
.
ëë1 2
SetLineSpacing
ëë2 @
(
ëë@ A
lineSpacing
ëëA L
)
ëëL M
;
ëëM N
}
íí 	
private
îî 
void
îî 
SetListBullet
îî "
(
îî" #
)
îî# $
=>
îî% '
RichEdit
îî( 0
.
îî0 1
Document
îî1 9
.
îî9 :
	Selection
îî: C
.
îîC D
	Paragraph
îîD M
.
îîM N
ListType
îîN V
=
îîW X
ListType
îîY a
.
îîa b
Bullet
îîb h
;
îîh i
private
ññ 
void
ññ 
SetPageLayout
ññ "
(
ññ" #
object
ññ# )
	parameter
ññ* 3
)
ññ3 4
=>
ññ5 7
DocumentViewer
ññ8 F
.
ññF G
Columns
ññG N
=
ññO P
(
ññQ R
int
ññR U
)
ññU V
	parameter
ññV _
;
ññ_ `
private
òò 
void
òò 
SetPageZoom
òò  
(
òò  !
object
òò! '
	parameter
òò( 1
)
òò1 2
=>
òò3 5
DocumentViewer
òò6 D
.
òòD E
Zoom
òòE I
=
òòJ K
(
òòL M
double
òòM S
)
òòS T
	parameter
òòT ]
;
òò] ^
private
öö 
void
öö 
SetSpaceAfter
öö "
(
öö" #
object
öö# )
	parameter
öö* 3
)
öö3 4
{
õõ 	
var
úú 
value
úú 
=
úú 
	parameter
úú !
.
úú! "
ToString
úú" *
(
úú* +
)
úú+ ,
;
úú, -
var
ùù 

spaceAfter
ùù 
=
ùù 
float
ùù "
.
ùù" #
Parse
ùù# (
(
ùù( )
value
ùù) .
)
ùù. /
;
ùù/ 0
RichEdit
ûû 
.
ûû 
Document
ûû 
.
ûû 
	Selection
ûû '
.
ûû' (
	Paragraph
ûû( 1
.
ûû1 2

SpaceAfter
ûû2 <
=
ûû= >

spaceAfter
ûû? I
;
ûûI J
}
üü 	
private
°° 
void
°° 
SetSpaceBefore
°° #
(
°°# $
object
°°$ *
	parameter
°°+ 4
)
°°4 5
{
¢¢ 	
var
££ 
value
££ 
=
££ 
	parameter
££ !
.
££! "
ToString
££" *
(
££* +
)
££+ ,
;
££, -
var
§§ 
spaceBefore
§§ 
=
§§ 
float
§§ #
.
§§# $
Parse
§§$ )
(
§§) *
value
§§* /
)
§§/ 0
;
§§0 1
RichEdit
•• 
.
•• 
Document
•• 
.
•• 
	Selection
•• '
.
••' (
	Paragraph
••( 1
.
••1 2
SpaceBefore
••2 =
=
••> ?
spaceBefore
••@ K
;
••K L
}
¶¶ 	
private
®® 
void
®® 
SetUnderlineStyle
®® &
(
®®& '
object
®®' -
	parameter
®®. 7
)
®®7 8
=>
®®9 ;
RichEdit
®®< D
.
®®D E
Document
®®E M
.
®®M N
	Selection
®®N W
.
®®W X
Font
®®X \
.
®®\ ]
	Underline
®®] f
=
®®g h
(
®®i j
int
®®j m
)
®®m n
(
®®n o
UnderlineStyle
®®o }
)
®®} ~
	parameter®®~ á
;®®á à
private
™™ 
void
™™ 
SetZoomFactor
™™ "
(
™™" #
object
™™# )
	parameter
™™* 3
)
™™3 4
{
´´ 	
var
¨¨ 
factor
¨¨ 
=
¨¨ 
(
¨¨ 
float
¨¨ 
)
¨¨  
	parameter
¨¨  )
;
¨¨) *
RichEdit
≠≠ 
.
≠≠ 

ZoomFactor
≠≠ 
=
≠≠  !
factor
≠≠" (
!=
≠≠) +
$num
≠≠, .
?
≠≠/ 0
RichEdit
≠≠1 9
.
≠≠9 :

ZoomFactor
≠≠: D
+
≠≠E F
factor
≠≠G M
:
≠≠N O
$num
≠≠P T
;
≠≠T U
}
ÆÆ 	
private
∞∞ 
void
∞∞ 

ToggleBold
∞∞ 
(
∞∞  
)
∞∞  !
=>
∞∞" $
RichEdit
∞∞% -
.
∞∞- .
Document
∞∞. 6
.
∞∞6 7
	Selection
∞∞7 @
.
∞∞@ A
Font
∞∞A E
.
∞∞E F
Bold
∞∞F J
=
∞∞K L
FormatEffect
∞∞M Y
.
∞∞Y Z
Toggle
∞∞Z `
;
∞∞` a
private
≤≤ 
void
≤≤ 
ToggleItalic
≤≤ !
(
≤≤! "
)
≤≤" #
=>
≤≤$ &
RichEdit
≤≤' /
.
≤≤/ 0
Document
≤≤0 8
.
≤≤8 9
	Selection
≤≤9 B
.
≤≤B C
Font
≤≤C G
.
≤≤G H
Italic
≤≤H N
=
≤≤O P
FormatEffect
≤≤Q ]
.
≤≤] ^
Toggle
≤≤^ d
;
≤≤d e
private
¥¥ 
void
¥¥ 
ToggleShadow
¥¥ !
(
¥¥! "
)
¥¥" #
=>
¥¥$ &
RichEdit
¥¥' /
.
¥¥/ 0
Document
¥¥0 8
.
¥¥8 9
	Selection
¥¥9 B
.
¥¥B C
Font
¥¥C G
.
¥¥G H
Shadow
¥¥H N
=
¥¥O P
FormatEffect
¥¥Q ]
.
¥¥] ^
Toggle
¥¥^ d
;
¥¥d e
private
∂∂ 
void
∂∂ 
ToggleSmallCaps
∂∂ $
(
∂∂$ %
)
∂∂% &
=>
∂∂' )
RichEdit
∂∂* 2
.
∂∂2 3
Document
∂∂3 ;
.
∂∂; <
	Selection
∂∂< E
.
∂∂E F
Font
∂∂F J
.
∂∂J K
	SmallCaps
∂∂K T
=
∂∂U V
FormatEffect
∂∂W c
.
∂∂c d
Toggle
∂∂d j
;
∂∂j k
private
∏∏ 
void
∏∏ !
ToggleStrikethrough
∏∏ (
(
∏∏( )
)
∏∏) *
=>
∏∏+ -
RichEdit
∏∏. 6
.
∏∏6 7
Document
∏∏7 ?
.
∏∏? @
	Selection
∏∏@ I
.
∏∏I J
Font
∏∏J N
.
∏∏N O
Strikethrough
∏∏O \
=
∏∏] ^
FormatEffect
∏∏_ k
.
∏∏k l
Toggle
∏∏l r
;
∏∏r s
private
∫∫ 
void
∫∫ 
ToggleSubscript
∫∫ $
(
∫∫$ %
)
∫∫% &
=>
∫∫' )
RichEdit
∫∫* 2
.
∫∫2 3
Document
∫∫3 ;
.
∫∫; <
	Selection
∫∫< E
.
∫∫E F
Font
∫∫F J
.
∫∫J K
	Subscript
∫∫K T
=
∫∫U V
FormatEffect
∫∫W c
.
∫∫c d
Toggle
∫∫d j
;
∫∫j k
private
ºº 
void
ºº 
ToggleSuperscript
ºº &
(
ºº& '
)
ºº' (
=>
ºº) +
RichEdit
ºº, 4
.
ºº4 5
Document
ºº5 =
.
ºº= >
	Selection
ºº> G
.
ººG H
Font
ººH L
.
ººL M
Superscript
ººM X
=
ººY Z
FormatEffect
ºº[ g
.
ººg h
Toggle
ººh n
;
ººn o
private
ææ 
void
ææ 
ToggleUnderline
ææ $
(
ææ$ %
)
ææ% &
=>
ææ' )
RichEdit
ææ* 2
.
ææ2 3
Document
ææ3 ;
.
ææ; <
	Selection
ææ< E
.
ææE F
Font
ææF J
.
ææJ K
	Underline
ææK T
=
ææU V
(
ææW X
int
ææX [
)
ææ[ \
FormatEffect
ææ\ h
.
ææh i
Toggle
ææi o
;
ææo p
public
«« 
IDocumentViewer
«« 
DocumentViewer
«« -
{
««. /
get
««0 3
;
««3 4
set
««5 8
;
««8 9
}
««: ;
public
ÃÃ 
IRichEditBox
ÃÃ 
RichEdit
ÃÃ $
{
ÃÃ% &
get
ÃÃ' *
;
ÃÃ* +
set
ÃÃ, /
;
ÃÃ/ 0
}
ÃÃ1 2
}
œœ 
}–– O
VD:\Programacion\CSharp\WPF\EzWriter\EzWriterViewModel\Core\WordProcessorCollections.cs
	namespace 	
EzWriterViewModel
 
. 
Core  
{ 
public 

class $
WordProcessorCollections )
{ 
public $
WordProcessorCollections '
(' (
)( )
{ 	
CharacterSpacings 
= 
new  #
string$ *
[* +
]+ ,
{ 
$str 
, 
$str  *
,* +
$str, 4
,4 5
$str6 @
,@ A
$strB P
} 
; 
	FontSizes 
= 
new 
float !
[! "
]" #
{ 
$num 
, 
$num 
, 
$num !
,! "
$num# (
,( )
$num* /
,/ 0
$num1 6
,6 7
$num8 =
,= >
$num? D
,D E
$numF K
,K L
$numM R
,R S
$num 
, 
$num 
, 
$num #
,# $
$num% *
,* +
$num, 1
,1 2
$num3 8
,8 9
$num: ?
,? @
$numA F
,F G
$numH M
} 
; 
LineSpacings 
= 
new 
string %
[% &
]& '
{ 
$str 
, 
$str 
, 
$str  %
,% &
$str' .
,. /
$str0 5
} 
; 
ArrowSymbols 
= 
new 
string %
[% &
]& '
{ 
$str 
, 
$str 
, 
$str 
, 
$str "
," #
$str$ '
,' (
$str) ,
,, -
$str. 1
,1 2
$str3 6
,6 7
$str8 ;
,; <
$str= @
,@ A
$strB E
,E F
$strG J
,J K
$strL O
,O P
$strQ T
,T U
$strV Y
,Y Z
$str[ ^
,^ _
$str` c
,c d
$stre h
,h i
$strj m
,m n
$stro r
,r s
$strt w
,w x
$str 
, 
$str 
, 
$str 
, 
$str "
," #
$str$ '
,' (
$str) ,
,, -
$str. 1
,1 2
$str3 6
,6 7
$str8 ;
,; <
$str= @
,@ A
$strB E
,E F
$strG J
,J K
$strL O
,O P
$strQ T
,T U
$strV Y
,Y Z
$str[ ^
,^ _
$str` c
,c d
$stre h
,h i
$strj m
,m n
$stro r
,r s
$strt w
,w x
$str 
, 
$str 
, 
$str 
, 
$str "
," #
$str$ '
,' (
$str) ,
,, -
$str. 1
,1 2
$str3 6
,6 7
$str8 ;
,; <
$str= @
,@ A
$strB E
,E F
$strG J
,J K
$strL O
,O P
$strQ T
,T U
$strV Y
,Y Z
$str[ ^
,^ _
$str` c
,c d
$stre h
,h i
$strj m
,m n
$stro r
,r s
$strt w
,w x
$str 
, 
$str 
, 
$str 
, 
$str "
," #
$str$ '
,' (
$str) ,
,, -
$str. 1
,1 2
$str3 6
,6 7
$str8 ;
,; <
$str= @
,@ A
$strB E
,E F
$strG J
,J K
$strL O
,O P
$strQ T
,T U
$strV Y
,Y Z
$str[ ^
,^ _
$str` c
,c d
$stre h
,h i
$strj m
,m n
$stro r
,r s
$strt w
,w x
$str   
,   
$str   
,   
$str   
,   
$str   "
,  " #
$str  $ '
,  ' (
$str  ) ,
,  , -
$str  . 1
,  1 2
}!! 
;!! 
GeometricSymbols"" 
="" 
new"" "
string""# )
["") *
]""* +
{## 
$str$$ 
,$$ 
$str$$ 
,$$ 
$str$$ 
,$$ 
$str$$ "
,$$" #
$str$$$ '
,$$' (
$str$$) ,
,$$, -
$str$$. 1
,$$1 2
$str$$3 6
,$$6 7
$str$$8 ;
,$$; <
$str$$= @
,$$@ A
$str$$B E
,$$E F
$str$$G J
,$$J K
$str$$L O
,$$O P
$str$$Q T
,$$T U
$str$$V Y
,$$Y Z
$str$$[ ^
,$$^ _
$str$$` c
,$$c d
$str$$e h
,$$h i
$str$$j m
,$$m n
$str$$o r
,$$r s
$str$$t w
,$$w x
$str%% 
,%% 
$str%% 
,%% 
$str%% 
,%% 
$str%% "
,%%" #
$str%%$ '
,%%' (
$str%%) ,
,%%, -
$str%%. 1
,%%1 2
$str%%3 6
,%%6 7
$str%%8 ;
,%%; <
$str%%= @
,%%@ A
$str%%B E
,%%E F
$str%%G J
,%%J K
$str%%L O
,%%O P
$str%%Q T
,%%T U
$str%%V Y
,%%Y Z
$str%%[ ^
,%%^ _
$str%%` c
,%%c d
$str%%e h
,%%h i
$str%%j m
,%%m n
$str%%o r
,%%r s
$str%%t w
,%%w x
$str&& 
,&& 
$str&& 
,&& 
$str&& 
,&& 
$str&& "
,&&" #
$str&&$ '
,&&' (
$str&&) ,
,&&, -
$str&&. 1
,&&1 2
$str&&3 6
,&&6 7
$str&&8 ;
,&&; <
$str&&= @
,&&@ A
$str&&B E
,&&E F
$str&&G J
,&&J K
$str&&L O
,&&O P
$str&&Q T
,&&T U
$str&&V Y
,&&Y Z
$str&&[ ^
,&&^ _
$str&&` c
,&&c d
$str&&e h
,&&h i
$str&&j m
,&&m n
$str&&o r
,&&r s
$str&&t w
,&&w x
$str'' 
,'' 
$str'' 
,'' 
$str'' 
,'' 
$str'' "
,''" #
$str''$ '
,''' (
$str'') ,
,'', -
$str''. 1
,''1 2
$str''3 6
,''6 7
$str''8 ;
,''; <
$str''= @
,''@ A
$str''B E
,''E F
$str''G J
,''J K
$str''L O
,''O P
$str''Q T
,''T U
$str''V Y
,''Y Z
$str''[ ^
,''^ _
}(( 
;((  
MiscellaneousSymbols))  
=))! "
new))# &
string))' -
[))- .
])). /
{** 
$str++ 
,++ 
$str++ 
,++ 
$str++ 
,++ 
$str++ "
,++" #
$str++$ '
,++' (
$str++) ,
,++, -
$str++. 1
,++1 2
$str++3 6
,++6 7
$str++8 ;
,++; <
$str++= @
,++@ A
$str++B E
,++E F
$str++G J
,++J K
$str++L O
,++O P
$str++Q T
,++T U
$str++V Y
,++Y Z
$str++[ ^
,++^ _
$str++` c
,++c d
$str++e h
,++h i
$str++j m
,++m n
$str++o r
,++r s
$str++t w
,++w x
$str,, 
,,, 
$str,, 
,,, 
$str,, 
,,, 
$str,, "
,,," #
$str,,$ '
,,,' (
$str,,) ,
,,,, -
$str,,. 1
,,,1 2
$str,,3 6
,,,6 7
$str,,8 ;
,,,; <
$str,,= @
,,,@ A
$str,,B E
,,,E F
$str,,G J
,,,J K
$str,,L O
,,,O P
$str,,Q T
,,,T U
$str,,V Y
,,,Y Z
$str,,[ ^
,,,^ _
$str,,` c
,,,c d
$str,,e h
,,,h i
$str,,j m
,,,m n
$str,,o r
,,,r s
$str,,t w
,,,w x
}-- 
;-- 
}.. 	
public33 
string33 
[33 
]33 
CharacterSpacings33 )
{33* +
get33, /
;33/ 0
}331 2
public88 
float88 
[88 
]88 
	FontSizes88  
{88! "
get88# &
;88& '
}88( )
public== 
string== 
[== 
]== 
LineSpacings== $
{==% &
get==' *
;==* +
}==, -
publicBB 
stringBB 
[BB 
]BB 
ArrowSymbolsBB $
{BB% &
getBB' *
;BB* +
}BB, -
publicGG 
stringGG 
[GG 
]GG 
GeometricSymbolsGG (
{GG) *
getGG+ .
;GG. /
}GG0 1
publicLL 
stringLL 
[LL 
]LL  
MiscellaneousSymbolsLL ,
{LL- .
getLL/ 2
;LL2 3
}LL4 5
}MM 
}NN ˚
PD:\Programacion\CSharp\WPF\EzWriter\EzWriterViewModel\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str ,
), -
]- .
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[		 
assembly		 	
:			 
!
AssemblyConfiguration		  
(		  !
$str		! #
)		# $
]		$ %
[

 
assembly

 	
:

	 

AssemblyCompany

 
(

 
$str

 
)

 
]

 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str .
). /
]/ 0
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *Ω
UD:\Programacion\CSharp\WPF\EzWriter\EzWriterViewModel\Services\IAlertDialogService.cs
	namespace 	
EzWriterViewModel
 
. 
Services $
{ 
public 

	interface 
IAlertDialogService (
{ 
bool 
? 
AskConfirmation 
( 
string $
message% ,
,, -
string. 4
caption5 <
)< =
;= >
void 
ShowInformation 
( 
string #
message$ +
,+ ,
string- 3
caption4 ;
); <
;< =
} 
} µ
PD:\Programacion\CSharp\WPF\EzWriter\EzWriterViewModel\Services\IDialogService.cs
	namespace 	
EzWriterViewModel
 
. 
Services $
{ 
public 

	interface 
IDialogService #
{ 
bool 
AddExtension 
{ 
get 
;  
set! $
;$ %
}& '
string 
DefaultExtension 
{  !
get" %
;% &
set' *
;* +
}, -
string 
FileName 
{ 
get 
; 
}  
string 
[ 
] 
	FileNames 
{ 
get  
;  !
}" #
string 
Filter 
{ 
get 
; 
set  
;  !
}" #
int$$ 
FilterIndex$$ 
{$$ 
get$$ 
;$$ 
set$$ "
;$$" #
}$$$ %
bool)) 
MultiSelect)) 
{)) 
get)) 
;)) 
set))  #
;))# $
}))% &
string.. 
Title.. 
{.. 
get.. 
;.. 
set.. 
;..  
}..! "
bool44 
?44 

ShowDialog44 
(44 
)44 
;44 
}55 
}66 Æ
SD:\Programacion\CSharp\WPF\EzWriter\EzWriterViewModel\Services\IPageSetupService.cs
	namespace 	
EzWriterViewModel
 
. 
Services $
{ 
public 

	interface 
IPageSetupService &
{		 "
IRichEditPrintDocument 
Document '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
bool 
? 

ShowDialog 
( 
) 
; 
} 
} Á
VD:\Programacion\CSharp\WPF\EzWriter\EzWriterViewModel\Services\IPrintPreviewService.cs
	namespace 	
EzWriterViewModel
 
. 
Services $
{ 
public 

	interface  
IPrintPreviewService )
{		 
int 
Columns 
{ 
get 
; 
set 
; 
}  !"
IRichEditPrintDocument 
Document '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
int 
Rows 
{ 
get 
; 
set 
; 
} 
int 
	StartPage 
{ 
get 
; 
set  
;  !
}" #
bool!! 
UseAntiAlias!! 
{!! 
get!! 
;!!  
set!!! $
;!!$ %
}!!& '
double&& 
Zoom&& 
{&& 
get&& 
;&& 
set&& 
;&& 
}&&  !
}'' 
}(( é
OD:\Programacion\CSharp\WPF\EzWriter\EzWriterViewModel\Services\IPrintService.cs
	namespace 	
EzWriterViewModel
 
. 
Services $
{ 
public 

	interface 
IPrintService "
{ 
bool 
? 

ShowDialog 
( 
) 
; 
} 
} 