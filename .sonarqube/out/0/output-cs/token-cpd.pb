Ï
MD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Entities\IDocumentViewer.cs
	namespace 	
EzWriterModel
 
. 
Entities  
{ 
public 

	interface 
IDocumentViewer $
{ 
int 
Columns 
{ 
get 
; 
set 
; 
}  !"
IRichEditPrintDocument 
PrintDocument ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
int 
	StartPage 
{ 
get 
; 
set  
;  !
}" #
double 
Zoom 
{ 
get 
; 
set 
; 
}  !
} 
} é

JD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Entities\IRichEditBox.cs
	namespace 	
EzWriterModel
 
. 
Entities  
{ 
public 

	interface 
IRichEditBox !
{ 
int 
BackgroundColor 
{ 
get !
;! "
set# &
;& '
}( )
int 
ContentLength 
{ 
get 
;  
set! $
;$ %
}& '
int 
ContentStart 
{ 
get 
; 
set  #
;# $
}% &
TextDocument 
Document 
{ 
get  #
;# $
}% &"
IRichEditPrintDocument   
PrintDocument   ,
{  - .
get  / 2
;  2 3
}  4 5
float%% 

ZoomFactor%% 
{%% 
get%% 
;%% 
set%%  #
;%%# $
}%%% &
void++ 
InsertImage++ 
(++ 
string++ 
filename++  (
)++( )
;++) *
void22 
InsertTable22 
(22 
int22 

numColumns22 '
,22' (
int22) ,
numRows22- 4
)224 5
;225 6
}33 
}44 „
TD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Entities\IRichEditPrintDocument.cs
	namespace 	
EzWriterModel
 
. 
Entities  
{ 
public 

	interface "
IRichEditPrintDocument +
{ 
void 
Print 
( 
) 
; 
} 
} Ç
LD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Entities\IWordProcessor.cs
	namespace 	
EzWriterModel
 
. 
Entities  
{ 
public 

	interface 
IWordProcessor #
{ 
IDocumentViewer 
DocumentViewer &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
IRichEditBox 
RichEdit 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} å.
JD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Entities\TextDocument.cs
	namespace 	
EzWriterModel
 
. 
Entities  
{ 
public

 

class

 
TextDocument

 
{ 
private 
readonly 
ITextDocument2 '
document( 0
;0 1
private 
readonly 
IRichEditBox %
richEdit& .
;. /
public 
TextDocument 
( 
IRichEditBox (
richEdit) 1
,1 2
ITextDocument23 A
documentB J
)J K
{ 	
this 
. 
richEdit 
= 
richEdit $
;$ %
this 
. 
document 
= 
document $
;$ %
} 	
public 
float 
DefaultTabStop #
{ 	
get 
=> 
document 
. 
DefaultTabStop *
;* +
set   
=>   
document   
.   
DefaultTabStop   *
=  + ,
value  - 2
;  2 3
}!! 	
public&& 
	TextRange&& 
EntireRange&& $
{'' 	
get(( 
{)) 
var** 
range** 
=** 
document** $
.**$ %
Range2**% +
(**+ ,
$num**, -
,**- .
$num**/ 0
)**0 1
;**1 2
range++ 
.++ 
MoveEnd++ 
(++ 
(++ 
int++ "
)++" #
TextRangeUnit++# 0
.++0 1
Story++1 6
,++6 7
$num++8 9
)++9 :
;++: ;
return,, 
new,, 
	TextRange,, $
(,,$ %
range,,% *
),,* +
;,,+ ,
}-- 
}.. 	
public33 
string33 
Name33 
=>33 
document33 &
.33& '
Name33' +
;33+ ,
public88 
bool88 
Saved88 
{99 	
get:: 
=>:: 
document:: 
.:: 
Saved:: !
==::" $
(::% &
int::& )
)::) *
tomConstants::* 6
.::6 7
tomTrue::7 >
;::> ?
set;; 
=>;; 
document;; 
.;; 
Saved;; !
=;;" #
value;;$ )
?;;* +
(;;, -
int;;- 0
);;0 1
tomConstants;;1 =
.;;= >
tomTrue;;> E
:;;F G
(;;H I
int;;I L
);;L M
tomConstants;;M Y
.;;Y Z
tomFalse;;Z b
;;;b c
}<< 	
publicAA 
TextSelectionAA 
	SelectionAA &
=>BB 
newBB 
TextSelectionBB  
(BB  !
documentBB! )
.BB) *
Range2BB* 0
(BB0 1
richEditBB1 9
.BB9 :
ContentStartBB: F
,BBF G
richEditBBH P
.BBP Q
ContentStartBBQ ]
+BB^ _
richEditBB` h
.BBh i
ContentLengthBBi v
)BBv w
,BBw x
document	BBy 
.
BB ‚

Selection2
BB‚ Œ
)
BBŒ 
;
BB Ž
publicHH 
intHH 
BeginUpdateHH 
(HH 
)HH  
=>HH! #
documentHH$ ,
.HH, -
FreezeHH- 3
(HH3 4
)HH4 5
;HH5 6
publicNN 
intNN 
	EndUpdateNN 
(NN 
)NN 
=>NN !
documentNN" *
.NN* +
UnfreezeNN+ 3
(NN3 4
)NN4 5
;NN5 6
publicVV 
	TextRangeVV 
GetRangeVV !
(VV! "
intVV" %
startVV& +
,VV+ ,
intVV- 0
endVV1 4
)VV4 5
=>VV6 8
newVV9 <
	TextRangeVV= F
(VVF G
documentVVG O
.VVO P
Range2VVP V
(VVV W
startVVW \
,VV\ ]
endVV^ a
)VVa b
)VVb c
;VVc d
public[[ 
void[[ 
New[[ 
([[ 
)[[ 
=>[[ 
document[[ %
.[[% &
New[[& )
([[) *
)[[* +
;[[+ ,
publicee 
voidee 
OpenFileee 
(ee 
stringee #
filenameee$ ,
,ee, -
TextOpenSaveOptionsee. A
modeeeB F
,eeF G
TextOpenOptionseeH W
flagseeX ]
=ee^ _
TextOpenOptionsee` o
.eeo p
Noneeep t
,eet u
inteev y
codePage	eez ‚
=
eeƒ „
$num
ee… †
)
ee† ‡
=>ff 
documentff 
.ff 
Openff 
(ff 
filenameff %
,ff% &
(ff' (
intff( +
)ff+ ,
modeff, 0
|ff1 2
(ff3 4
intff4 7
)ff7 8
flagsff8 =
,ff= >
codePageff? G
)ffG H
;ffH I
publicpp 
voidpp 
SaveFilepp 
(pp 
stringpp #
filenamepp$ ,
,pp, -
TextOpenSaveOptionspp. A
modeppB F
,ppF G
TextSaveOptionsppH W
flagsppX ]
=pp^ _
TextSaveOptionspp` o
.ppo p
Noneppp t
,ppt u
intppv y
codePage	ppz ‚
=
ppƒ „
$num
pp… †
)
pp† ‡
=>qq 
documentqq 
.qq 
Saveqq 
(qq 
filenameqq %
,qq% &
(qq' (
intqq( +
)qq+ ,
modeqq, 0
|qq1 2
(qq3 4
intqq4 7
)qq7 8
flagsqq8 =
,qq= >
codePageqq? G
)qqG H
;qqH I
}rr 
}ss ä.
FD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Entities\TextFont.cs
	namespace 	
EzWriterModel
 
. 
Entities  
{ 
public

 

class

 
TextFont

 
{ 
private 
readonly 

ITextFont2 #
font$ (
;( )
internal 
TextFont 
( 

ITextFont2 $
font% )
)) *
=>+ -
this. 2
.2 3
font3 7
=8 9
font: >
;> ?
public 
int 
	BackColor 
{ 	
get 
=> 
font 
. 
	BackColor !
;! "
set 
=> 
font 
. 
	BackColor !
=" #
value$ )
;) *
} 	
public   
FormatEffect   
Bold    
{!! 	
get"" 
=>"" 
("" 
FormatEffect"" 
)""  
font""  $
.""$ %
Bold""% )
;"") *
set## 
=>## 
font## 
.## 
Bold## 
=## 
(##  
int##  #
)### $
value##$ )
;##) *
}$$ 	
public)) 
int)) 
	ForeColor)) 
{** 	
get++ 
=>++ 
font++ 
.++ 
	ForeColor++ !
;++! "
set,, 
=>,, 
font,, 
.,, 
	ForeColor,, !
=,," #
value,,$ )
;,,) *
}-- 	
public22 
FormatEffect22 
Italic22 "
{33 	
get44 
=>44 
(44 
FormatEffect44  
)44  !
font44! %
.44% &
Italic44& ,
;44, -
set55 
=>55 
font55 
.55 
Italic55 
=55  
(55! "
int55" %
)55% &
value55& +
;55+ ,
}66 	
public;; 
string;; 
Name;; 
{<< 	
get== 
=>== 
font== 
.== 
Name== 
;== 
set>> 
=>>> 
font>> 
.>> 
Name>> 
=>> 
value>> $
;>>$ %
}?? 	
publicDD 
FormatEffectDD 
ShadowDD "
{EE 	
getFF 
=>FF 
(FF 
FormatEffectFF  
)FF  !
fontFF! %
.FF% &
ShadowFF& ,
;FF, -
setGG 
=>GG 
fontGG 
.GG 
ShadowGG 
=GG  
(GG! "
intGG" %
)GG% &
valueGG& +
;GG+ ,
}HH 	
publicMM 
floatMM 
SizeMM 
{NN 	
getOO 
=>OO 
fontOO 
.OO 
SizeOO 
;OO 
setPP 
=>PP 
fontPP 
.PP 
SizePP 
=PP 
valuePP $
;PP$ %
}QQ 	
publicVV 
FormatEffectVV 
	SmallCapsVV %
{WW 	
getXX 
=>XX 
(XX 
FormatEffectXX  
)XX  !
fontXX! %
.XX% &
	SmallCapsXX& /
;XX/ 0
setYY 
=>YY 
fontYY 
.YY 
	SmallCapsYY !
=YY" #
(YY$ %
intYY% (
)YY( )
valueYY) .
;YY. /
}ZZ 	
public__ 
float__ 
Spacing__ 
{`` 	
getaa 
=>aa 
fontaa 
.aa 
Spacingaa 
;aa  
setbb 
=>bb 
fontbb 
.bb 
Spacingbb 
=bb  !
valuebb" '
;bb' (
}cc 	
publichh 
FormatEffecthh 
Strikethroughhh )
{ii 	
getjj 
=>jj 
(jj 
FormatEffectjj  
)jj  !
fontjj! %
.jj% &
StrikeThroughjj& 3
;jj3 4
setkk 
=>kk 
fontkk 
.kk 
StrikeThroughkk %
=kk& '
(kk( )
intkk) ,
)kk, -
valuekk- 2
;kk2 3
}ll 	
publicqq 
FormatEffectqq 
	Subscriptqq %
{rr 	
getss 
=>ss 
(ss 
FormatEffectss  
)ss  !
fontss! %
.ss% &
	Subscriptss& /
;ss/ 0
settt 
=>tt 
fonttt 
.tt 
	Subscripttt !
=tt" #
(tt$ %
inttt% (
)tt( )
valuett) .
;tt. /
}uu 	
publiczz 
FormatEffectzz 
Superscriptzz '
{{{ 	
get|| 
=>|| 
(|| 
FormatEffect||  
)||  !
font||! %
.||% &
Superscript||& 1
;||1 2
set}} 
=>}} 
font}} 
.}} 
Superscript}} #
=}}$ %
(}}& '
int}}' *
)}}* +
value}}+ 0
;}}0 1
}~~ 	
public
ƒƒ 
int
ƒƒ 
	Underline
ƒƒ 
{
„„ 	
get
…… 
=>
…… 
font
…… 
.
…… 
	Underline
…… !
;
……! "
set
†† 
=>
†† 
font
†† 
.
†† 
	Underline
†† !
=
††" #
value
††$ )
;
††) *
}
‡‡ 	
public
 
void
 
Reset
 
(
 
int
 
value
 #
)
# $
=>
% '
font
( ,
.
, -
Reset
- 2
(
2 3
value
3 8
)
8 9
;
9 :
}
ŽŽ 
} Ï
KD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Entities\TextParagraph.cs
	namespace 	
EzWriterModel
 
. 
Entities  
{ 
public

 

class

 
TextParagraph

 
{ 
private 
readonly 

ITextPara2 #
	paragraph$ -
;- .
internal 
TextParagraph 
( 

ITextPara2 )
	paragraph* 3
)3 4
=>5 7
this8 <
.< =
	paragraph= F
=G H
	paragraphI R
;R S
public 
ParagraphAlignment !
	Alignment" +
{ 	
get 
=> 
( 
ParagraphAlignment &
)& '
	paragraph' 0
.0 1
	Alignment1 :
;: ;
set 
=> 
	paragraph 
. 
	Alignment &
=' (
() *
int* -
)- .
value. 3
;3 4
} 	
public   
float   
LineSpacing    
=>  ! #
	paragraph  $ -
.  - .
LineSpacing  . 9
;  9 :
public%% 
LineSpacingRule%% 
LineSpacingRule%% .
=>%%/ 1
(%%2 3
LineSpacingRule%%3 B
)%%B C
	paragraph%%C L
.%%L M
LineSpacingRule%%M \
;%%\ ]
public** 
int** 
ListLevelIndex** !
{++ 	
get,, 
=>,, 
	paragraph,, 
.,, 
ListLevelIndex,, +
;,,+ ,
set-- 
=>-- 
	paragraph-- 
.-- 
ListLevelIndex-- +
=--, -
value--. 3
;--3 4
}.. 	
public33 
	ListStyle33 
	ListStyle33 "
{33# $
get33% (
;33( )
set33* -
;33- .
}33/ 0
public88 
ListType88 
ListType88  
{99 	
get:: 
=>:: 
(:: 
ListType:: 
):: 
	paragraph:: &
.::& '
ListType::' /
;::/ 0
set;; 
=>;; 
	paragraph;; 
.;; 
ListType;; %
=;;& '
(;;( )
int;;) ,
);;, -
value;;- 2
;;;2 3
}<< 	
publicAA 
floatAA 

SpaceAfterAA 
{BB 	
getCC 
=>CC 
	paragraphCC 
.CC 

SpaceAfterCC '
;CC' (
setDD 
=>DD 
	paragraphDD 
.DD 

SpaceAfterDD '
=DD( )
valueDD* /
;DD/ 0
}EE 	
publicJJ 
floatJJ 
SpaceBeforeJJ  
{KK 	
getLL 
=>LL 
	paragraphLL 
.LL 
SpaceBeforeLL (
;LL( )
setMM 
=>MM 
	paragraphMM 
.MM 
SpaceBeforeMM (
=MM) *
valueMM+ 0
;MM0 1
}NN 	
publicWW 
voidWW 
SetLineSpacingWW "
(WW" #
floatWW# (
spacingWW) 0
,WW0 1
LineSpacingRuleWW2 A
ruleWWB F
=WWG H
LineSpacingRuleWWI X
.WWX Y
MultipleWWY a
)WWa b
=>XX 
	paragraphXX 
.XX 
SetLineSpacingXX '
(XX' (
(XX( )
intXX) ,
)XX, -
ruleXX- 1
,XX1 2
spacingXX3 :
)XX: ;
;XX; <
}YY 
}ZZ ê-
GD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Entities\TextRange.cs
	namespace 	
EzWriterModel
 
. 
Entities  
{ 
public

 

class

 
	TextRange

 
{ 
private 
readonly 
ITextRange2 $
range% *
;* +
private 
TextParagraph 
	paragraph '
;' (
private 
TextFont 
font 
; 
internal 
	TextRange 
( 
ITextRange2 &
range' ,
), -
=>. 0
this1 5
.5 6
range6 ;
=< =
range> C
;C D
public 
int 
EndPosition 
{ 	
get 
=> 
range 
. 
End 
; 
set 
=> 
range 
. 
End 
= 
value $
;$ %
} 	
public"" 
TextFont"" 
Font"" 
{## 	
get$$ 
{%% 
font&& 
=&& 
new&& 
TextFont&& #
(&&# $
range&&$ )
.&&) *
Font2&&* /
)&&/ 0
;&&0 1
return'' 
font'' 
;'' 
}(( 
set)) 
=>)) 
font)) 
=)) 
value)) 
;))  
}** 	
public// 
TextParagraph// 
	Paragraph// &
{00 	
get11 
{22 
	paragraph33 
=33 
new33 
TextParagraph33  -
(33- .
range33. 3
.333 4
Para2334 9
)339 :
;33: ;
return44 
	paragraph44  
;44  !
}55 
set66 
=>66 
	paragraph66 
=66 
value66 $
;66$ %
}77 	
public<< 
int<< 
StartPosition<<  
{== 	
get>> 
=>>> 
range>> 
.>> 
Start>> 
;>> 
set?? 
=>?? 
range?? 
.?? 
Start?? 
=??  
value??! &
;??& '
}@@ 	
publicEE 
stringEE 
TextEE 
{FF 	
getGG 
=>GG 
rangeGG 
.GG 
TextGG 
;GG 
setHH 
=>HH 
rangeHH 
.HH 
TextHH 
=HH 
valueHH  %
;HH% &
}II 	
publicNN 
stringNN 
UrlNN 
{OO 	
getPP 
=>PP 
rangePP 
.PP 
URLPP 
;PP 
setQQ 
=>QQ 
rangeQQ 
.QQ 
URLQQ 
=QQ 
valueQQ $
;QQ$ %
}RR 	
public[[ 
bool[[ 
CanPaste[[ 
([[ 
int[[  
format[[! '
=[[( )
$num[[* +
)[[+ ,
=>[[- /
range[[0 5
.[[5 6
CanPaste[[6 >
([[> ?
null[[? C
,[[C D
format[[E K
)[[K L
!=[[M O
$num[[P Q
;[[Q R
publicaa 
voidaa 

ChangeCaseaa 
(aa 

LetterCaseaa )
valueaa* /
)aa/ 0
=>aa1 3
rangeaa4 9
.aa9 :

ChangeCaseaa: D
(aaD E
(aaE F
intaaF I
)aaI J
valueaaJ O
)aaO P
;aaP Q
publicff 
voidff 
Copyff 
(ff 
)ff 
=>ff 
rangeff #
.ff# $
Copyff$ (
(ff( )
outff) ,
objectff- 3
pVarff4 8
)ff8 9
;ff9 :
publickk 
voidkk 
Cutkk 
(kk 
)kk 
=>kk 
rangekk "
.kk" #
Cutkk# &
(kk& '
outkk' *
objectkk+ 1
pVarkk2 6
)kk6 7
;kk7 8
publicrr 
intrr 
Expandrr 
(rr 
TextRangeUnitrr '
unitrr( ,
)rr, -
=>rr. 0
rangerr1 6
.rr6 7
Expandrr7 =
(rr= >
(rr> ?
intrr? B
)rrB C
unitrrC G
)rrG H
;rrH I
publiczz 
intzz 
FindTextzz 
(zz 
stringzz "
textzz# '
,zz' (
FindOptionszz) 4
optionszz5 <
)zz< =
=>zz> @
rangezzA F
.zzF G
FindTextzzG O
(zzO P
textzzP T
,zzT U
(zzV W
intzzW Z
)zzZ [
tomConstantszz[ g
.zzg h

tomForwardzzh r
,zzr s
(zzt u
intzzu x
)zzx y
options	zzy €
)
zz€ 
;
zz ‚
public
‚‚ 
int
‚‚ 
Move
‚‚ 
(
‚‚ 
TextRangeUnit
‚‚ %
unit
‚‚& *
,
‚‚* +
int
‚‚, /
count
‚‚0 5
)
‚‚5 6
=>
‚‚7 9
range
‚‚: ?
.
‚‚? @
Move
‚‚@ D
(
‚‚D E
(
‚‚E F
int
‚‚F I
)
‚‚I J
unit
‚‚J N
,
‚‚N O
count
‚‚P U
)
‚‚U V
;
‚‚V W
public
ŠŠ 
void
ŠŠ 
Paste
ŠŠ 
(
ŠŠ 
int
ŠŠ 
format
ŠŠ $
=
ŠŠ% &
$num
ŠŠ' (
)
ŠŠ( )
=>
ŠŠ* ,
range
ŠŠ- 2
.
ŠŠ2 3
Paste
ŠŠ3 8
(
ŠŠ8 9
null
ŠŠ9 =
,
ŠŠ= >
format
ŠŠ? E
)
ŠŠE F
;
ŠŠF G
}
‹‹ 
}ŒŒ È
KD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Entities\TextSelection.cs
	namespace 	
EzWriterModel
 
. 
Entities  
{ 
public 

class 
TextSelection 
:  
	TextRange! *
{		 
private

 
readonly

 
ITextSelection2

 (
	selection

) 2
;

2 3
internal 
TextSelection 
( 
ITextRange2 *
range+ 0
,0 1
ITextSelection22 A
	selectionB K
)K L
:M N
baseO S
(S T
rangeT Y
)Y Z
=>[ ]
this^ b
.b c
	selectionc l
=m n
	selectiono x
;x y
public 
void 
TypeText 
( 
string #
text$ (
)( )
=>* ,
	selection- 6
.6 7
TypeText7 ?
(? @
text@ D
)D E
;E F
} 
} Ô
ED:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Entities\TextRow.cs
	namespace 	
EzWriterModel
 
. 
Entities  
{ 
public		 

class		 
TextRow		 
{

 
private 
readonly 
ITextRow !
row" %
;% &
public 
TextRow 
( 
ITextRow 
row  #
)# $
=>% '
this( ,
., -
row- 0
=1 2
row3 6
;6 7
public 
void 
Insert 
( 
int 
numRows &
)& '
=>( *
row+ .
.. /
Insert/ 5
(5 6
numRows6 =
)= >
;> ?
} 
} Þ
FD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Enums\FindOptions.cs
	namespace 	
EzWriterModel
 
. 
Enums 
{ 
public 

enum 
FindOptions 
{		 
Case 
= 
tomConstants 
. 
tomMatchCase (
,( )
None 
= 
tomConstants 
. 
tomNone #
,# $
Pattern 
= 
tomConstants 
. 
tomMatchPattern .
,. /
Word 
= 
tomConstants 
. 
tomMatchWord (
,( )
} 
} È
GD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Enums\FormatEffect.cs
	namespace 	
EzWriterModel
 
. 
Enums 
{ 
public 

enum 
FormatEffect 
{		 
Off 
= 
tomConstants 
. 
tomFalse #
,# $
On 

= 
tomConstants 
. 
tomTrue !
,! "
Toggle 
= 
tomConstants 
. 
	tomToggle '
,' (
	Undefined 
= 
tomConstants  
.  !
tomUndefined! -
} 
} Û
ED:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Enums\LetterCase.cs
	namespace 	
EzWriterModel
 
. 
Enums 
{ 
public 

enum 

LetterCase 
{		 
Lower 
= 
tomConstants 
. 
tomLowerCase )
,) *
Sentence 
= 
tomConstants 
.  
tomSentenceCase  /
,/ 0
Title 
= 
tomConstants 
. 
tomTitleCase )
,) *
Toggle 
= 
tomConstants 
. 
tomToggleCase +
,+ ,
Upper!! 
=!! 
tomConstants!! 
.!! 
tomUpperCase!! )
,!!) *
}"" 
}## ö
JD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Enums\LineSpacingRule.cs
	namespace 	
EzWriterModel
 
. 
Enums 
{ 
public 

enum 
LineSpacingRule 
{		 
AtLeast 
= 
tomConstants 
. 
tomLineSpaceAtLeast 2
,2 3
Double 
= 
tomConstants 
. 
tomLineSpaceDouble 0
,0 1
Exactly 
= 
tomConstants 
. 
tomLineSpaceExactly 2
,2 3
Multiple 
= 
tomConstants 
.   
tomLineSpaceMultiple  4
,4 5

OneAndHalf## 
=## 
tomConstants## !
.##! "
tomLineSpace1pt5##" 2
,##2 3
Single(( 
=(( 
tomConstants(( 
.(( 
tomLineSpaceSingle(( 0
})) 
}** ®
DD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Enums\ListStyle.cs
	namespace 	
EzWriterModel
 
. 
Enums 
{ 
public 

enum 
	ListStyle 
{		 
Minus 
= 
tomConstants 
. 
tomListMinus )
,) *
NoNumber 
= 
tomConstants 
.  
tomListNoNumber  /
,/ 0
Parentheses 
= 
tomConstants "
." #
tomListParentheses# 5
,5 6
Parenthesis 
= 
$num 
, 
Period!! 
=!! 
tomConstants!! 
.!! 
tomListPeriod!! +
,!!+ ,
Plain&& 
=&& 
tomConstants&& 
.&& 
tomListPlain&& )
,&&) *
}'' 
}(( Ÿ
CD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Enums\ListType.cs
	namespace 	
EzWriterModel
 
. 
Enums 
{ 
public 

enum 
ListType 
{		 
Arabic 
= 
tomConstants 
. !
tomListNumberAsArabic 3
,3 4
Bullet 
= 
tomConstants 
. 
tomListBullet +
,+ ,
LowercaseLetter 
= 
tomConstants &
.& '#
tomListNumberAsLCLetter' >
,> ?
LowercaseRoman 
= 
tomConstants %
.% &"
tomListNumberAsLCRoman& <
,< =
UppercaseLetter!! 
=!! 
tomConstants!! &
.!!& '#
tomListNumberAsUCLetter!!' >
,!!> ?
UppercaseRoman&& 
=&& 
tomConstants&& %
.&&% &"
tomListNumberAsUCRoman&&& <
,&&< =
}'' 
}(( è
MD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Enums\ParagraphAlignment.cs
	namespace 	
EzWriterModel
 
. 
Enums 
{ 
public 

enum 
ParagraphAlignment "
{		 
Left 
= 
tomConstants 
. 
tomAlignLeft (
,( )
Center 
= 
tomConstants 
. 
tomAlignCenter ,
,, -
Right 
= 
tomConstants 
. 
tomAlignRight *
,* +
Justify 
= 
tomConstants 
. 
tomAlignJustify .
} 
} ü
JD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Enums\TextOpenOptions.cs
	namespace 	
EzWriterModel
 
. 
Enums 
{ 
[		 
Flags		 

]		
 
public

 

enum

 
TextOpenOptions

 
{ 
None 
= 
$num 
, 
ReadOnly 
= 
tomConstants 
.  
tomReadOnly  +
,+ ,
ShareDenyRead 
= 
tomConstants $
.$ %
tomShareDenyRead% 5
,5 6
ShareDenyWrite 
= 
tomConstants %
.% &
tomShareDenyWrite& 7
,7 8
	PasteFile## 
=## 
tomConstants##  
.##  !
tomPasteFile##! -
,##- .
}$$ 
}%% Ð

ND:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Enums\TextOpenSaveOptions.cs
	namespace 	
EzWriterModel
 
. 
Enums 
{ 
[		 
Flags		 

]		
 
public

 

enum

 
TextOpenSaveOptions

 #
{ 
	CreateNew 
= 
tomConstants  
.  !
tomCreateNew! -
,- .
CreateAlways 
= 
tomConstants #
.# $
tomCreateAlways$ 3
,3 4
Default 
= 
$num 
, 
HTML   
=   
tomConstants   
.   
tomHTML   #
,  # $
OpenExisting%% 
=%% 
tomConstants%% #
.%%# $
tomOpenExisting%%$ 3
,%%3 4

OpenAlways** 
=** 
tomConstants** !
.**! "
tomOpenAlways**" /
,**/ 0
	PlainText// 
=// 
tomConstants//  
.//  !
tomText//! (
,//( )
RTF44 
=44 
tomConstants44 
.44 
tomRTF44 !
,44! "
WordDocument99 
=99 
tomConstants99 #
.99# $
tomWordDocument99$ 3
,993 4
}:: 
};; È
HD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Enums\TextRangeUnit.cs
	namespace 	
EzWriterModel
 
. 
Enums 
{ 
public 

enum 
TextRangeUnit 
{		 
	Character 
= 
tomConstants  
.  !
tomCharacter! -
,- .

CharFormat 
= 
tomConstants !
.! "
tomCharFormat" /
,/ 0
Line 
= 
tomConstants 
. 
tomLine #
,# $
Link 
= 
tomConstants 
. 
tomLink #
,# $
LinkProtected## 
=## 
tomConstants## $
.##$ %
tomLinkProtected##% 5
,##5 6
Object(( 
=(( 
tomConstants(( 
.(( 
	tomObject(( '
,((' (
	Paragraph.. 
=.. 
tomConstants..  
...  !
tomParagraph..! -
,..- .
ParagraphFormat33 
=33 
tomConstants33 &
.33& '
tomParaFormat33' 4
,334 5
Screen88 
=88 
tomConstants88 
.88 
	tomScreen88 '
,88' (
Section== 
=== 
tomConstants== 
.== 

tomSection== )
,==) *
SentenceCC 
=CC 
tomConstantsCC 
.CC  
tomSentenceCC  +
,CC+ ,
StoryHH 
=HH 
tomConstantsHH 
.HH 
tomStoryHH %
,HH% &
TableMM 
=MM 
tomConstantsMM 
.MM 
tomTableMM %
,MM% &
	TableCellRR 
=RR 
tomConstantsRR  
.RR  !
tomCellRR! (
,RR( )
TableColumnWW 
=WW 
tomConstantsWW "
.WW" #
tomTableColumnWW# 1
,WW1 2
TableRow\\ 
=\\ 
tomConstants\\ 
.\\  
tomRow\\  &
,\\& '
Windowaa 
=aa 
tomConstantsaa 
.aa 
	tomWindowaa '
,aa' (
Wordff 
=ff 
tomConstantsff 
.ff 
tomWordff #
,ff# $
}gg 
}hh Ž
JD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Enums\TextSaveOptions.cs
	namespace 	
EzWriterModel
 
. 
Enums 
{ 
[		 
Flags		 

]		
 
public

 

enum

 
TextSaveOptions

 
{ 
None 
= 
$num 
, 
ShareDenyRead 
= 
tomConstants $
.$ %
tomShareDenyRead% 5
,5 6
ShareDenyWrite 
= 
tomConstants %
.% &
tomShareDenyWrite& 7
,7 8
} 
} ·

ID:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Enums\UnderlineColor.cs
	namespace 	
EzWriterModel
 
. 
Enums 
{ 
public 

enum 
UnderlineColor 
{ 
Auto 
= 
$num 
, 
Black 
= 
$num 
, 
Blue 
= 
$num 
, 
Cyan 
= 
$num 
, 
Green 
= 
$num 
, 
Fuchsia$$ 
=$$ 
$num$$ 
,$$ 
Red)) 
=)) 
$num)) 
,)) 
Yellow.. 
=.. 
$num.. 
,.. 
White33 
=33 
$num33 
,33 
DarkBlue88 
=88 
$num88 
,88 
Teal== 
=== 
$num== 
,== 
LimeBB 
=BB 
$numBB 
,BB 
PurpleGG 
=GG 
$numGG 
,GG 
BrownLL 
=LL 
$numLL 
,LL 
OliveQQ 
=QQ 
$numQQ 
,QQ 
GrayVV 
=VV 
$numVV 
}WW 
}XX ý
ID:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Enums\UnderlineStyle.cs
	namespace 	
EzWriterModel
 
. 
Enums 
{ 
public 

enum 
UnderlineStyle 
{		 
None 
= 
tomConstants 
. 
tomNone #
,# $
Dash 
= 
tomConstants 
. 
tomDash #
,# $
DashDot 
= 
tomConstants 
. 

tomDashDot )
,) *

DashDotDot 
= 
tomConstants !
.! "
tomDashDotDot" /
,/ 0
Dotted!! 
=!! 
tomConstants!! 
.!! 
	tomDotted!! '
,!!' (
Double&& 
=&& 
tomConstants&& 
.&& 
	tomDouble&& '
,&&' (
Single++ 
=++ 
tomConstants++ 
.++ 
	tomSingle++ '
,++' (
Thick00 
=00 
tomConstants00 
.00 
tomThick00 %
,00% &
	Undefined55 
=55 
tomConstants55  
.55  !
tomUndefined55! -
,55- .
Wave:: 
=:: 
tomConstants:: 
.:: 
tomWave:: #
,::# $
Words?? 
=?? 
tomConstants?? 
.?? 
tomWords?? %
,??% &
}@@ 
}AA ú
UD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Enums\VerticalCharacterAlignment.cs
	namespace 	
EzWriterModel
 
. 
Enums 
{ 
public 

enum &
VerticalCharacterAlignment *
{ 
Baseline 
= 
$num 
, 
Bottom 
= 
$num 
, 
Top 
= 
$num 
, 
} 
} ÷
LD:\Programacion\CSharp\WPF\EzWriter\EzWriterModel\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str (
)( )
]) *
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
$str *
)* +
]+ ,
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
]##) *