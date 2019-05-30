�&
_D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Beams\BeamDocument.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Beams #
{ 
public 

class 
BeamDocument 
: 

<- .
BeamDocument. :
,: ;

>I J
{		 
public

 
string

 
Number

 
{

 
get

 "
;

" #
private

$ +
set

, /
;

/ 0
}

1 2
public 
string 
Type 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
double 
EmptyWeight !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
BeamDocument 
( 
Guid  
identity! )
,) *
string "

beamNumber# -
,- .
string "
beamType# +
,+ ,
double "
emptyWeight# .
). /
:0 1
base2 6
(6 7
identity7 ?
)? @
{ 	
Identity 
= 
identity 
;  
Number 
= 

beamNumber 
;  
Type 
= 
beamType 
; 
EmptyWeight 
= 
emptyWeight %
;% &
	ReadModel 
= 
new 

() *
Identity* 2
)2 3
{ 
Number 
= 
Number 
,  
Type 
= 
Type 
, 
EmtpyWeight 
= 
EmptyWeight )
} 
;

( 
) 
; 
	ReadModel!! 
.!! 
AddDomainEvent!! $
(!!$ %
new!!% (
	OnAddBeam!!) 2
(!!2 3
Identity!!3 ;
)!!; <
)!!< =
;!!= >
}"" 	
public$$ 
BeamDocument$$ 
($$ 

	readModel$$* 3
)$$3 4
:$$5 6
base$$7 ;
($$; <
	readModel$$< E
)$$E F
{%% 	
this&& 
.&& 
Number&& 
=&& 
	readModel&& #
.&&# $
Number&&$ *
;&&* +
this'' 
.'' 
Type'' 
='' 
	readModel'' !
.''! "
Type''" &
;''& '
this(( 
.(( 
EmptyWeight(( 
=(( 
	readModel(( (
.((( )
EmtpyWeight(() 4
;((4 5
})) 	
public++ 
void++ 

(++! "
string++" (
value++) .
)++. /
{,, 	
if-- 
(-- 
Number-- 
!=-- 
value-- 
)--  
{.. 
Number// 
=// 
value// 
;// 
	ReadModel00 
.00 
Number00  
=00! "
Number00# )
;00) *
MarkModified22 
(22 
)22 
;22 
}33 
}44 	
public66 
void66 
SetBeamType66 
(66  
string66  &
value66' ,
)66, -
{77 	
if88 
(88 
Type88 
!=88 
value88 
)88 
{99 
Number:: 
=:: 
value:: 
;:: 
	ReadModel;; 
.;; 
Number;;  
=;;! "
Number;;# )
;;;) *
MarkModified== 
(== 
)== 
;== 
}>> 
}?? 	
publicAA 
voidAA 
SetEmptyWeightAA "
(AA" #
doubleAA# )
valueAA* /
)AA/ 0
{BB 	
ifCC 
(CC 
EmptyWeightCC 
!=CC 
valueCC $
)CC$ %
{DD 
EmptyWeightEE 
=EE 
valueEE #
;EE# $
	ReadModelFF 
.FF 
EmtpyWeightFF %
=FF& '
EmptyWeightFF( 3
;FF3 4
MarkModifiedHH 
(HH 
)HH 
;HH 
}II 
}JJ 	
	protectedLL 
overrideLL 
BeamDocumentLL '
	GetEntityLL( 1
(LL1 2
)LL2 3
{MM 	
returnNN 
thisNN 
;NN 
}OO 	
}PP 
}QQ �
jD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Beams\Commands\AddBeamCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Beams #
.# $
Commands$ ,
{ 
public 

class 
AddBeamCommand 
:  !
ICommand" *
<* +
BeamDocument+ 7
>7 8
{ 
[		 	
JsonProperty			 
(		 
propertyName		 "
:		" #
$str		$ ,
)		, -
]		- .
public

 
string

 
Number

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ *
)* +
]+ ,
public
string
Type
{
get
;
set
;
}
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ 1
)1 2
]2 3
public 
double 
EmptyWeight !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
public 

class #
AddBeamCommandValidator (
:) *
AbstractValidator+ <
<< =
AddBeamCommand= K
>K L
{ 
public #
AddBeamCommandValidator &
(& '
)' (
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
Number' -
)- .
.. /
NotEmpty/ 7
(7 8
)8 9
;9 :
RuleFor 
( 
command 
=> 
command &
.& '
Type' +
)+ ,
., -
NotEmpty- 5
(5 6
)6 7
;7 8
RuleFor 
( 
command 
=> 
command &
.& '
EmptyWeight' 2
)2 3
.3 4
NotEmpty4 <
(< =
)= >
;> ?
} 	
} 
} �
mD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Beams\Commands\RemoveBeamCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Beams #
.# $
Commands$ ,
{ 
public 

class 
RemoveBeamCommand "
:# $
ICommand% -
<- .
BeamDocument. :
>: ;
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% )
)		) *
]		* +
public

 
Guid

 
Id

 
{

 
get

 
;

 
private

 %
set

& )
;

) *
}

+ ,
public 
void 
SetId 
( 
Guid 
Id !
)! "
{
this 
. 
Id 
= 
Id 
; 
} 	
} 
} �
mD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Beams\Commands\UpdateBeamCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Beams #
.# $
Commands$ ,
{ 
public 

class 
UpdateBeamCommand "
:# $
ICommand% -
<- .
BeamDocument. :
>: ;
{		 
[

 	
JsonProperty

	 
(

 
PropertyName

 "
=

# $
$str

% )
)

) *
]

* +
public 
Guid 
Id 
{ 
get 
; 
private %
set& )
;) *
}+ ,
[
JsonProperty
(
propertyName
:
$str
)
]
public 
string 
Number 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ *
)* +
]+ ,
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ 1
)1 2
]2 3
public 
double 
EmptyWeight !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
void 
SetId 
( 
Guid 
Id !
)! "
{ 	
this 
. 
Id 
= 
Id 
; 
} 	
} 
public 

class &
UpdateBeamCommandValidator +
:, -
AbstractValidator. ?
<? @
UpdateBeamCommand@ Q
>Q R
{ 
public &
UpdateBeamCommandValidator )
() *
)* +
{ 	
RuleFor   
(   
command   
=>   
command   &
.  & '
Id  ' )
)  ) *
.  * +
NotNull  + 2
(  2 3
)  3 4
;  4 5
RuleFor!! 
(!! 
command!! 
=>!! 
command!! &
.!!& '
Number!!' -
)!!- .
.!!. /
NotEmpty!!/ 7
(!!7 8
)!!8 9
;!!9 :
RuleFor"" 
("" 
command"" 
=>"" 
command"" &
.""& '
Type""' +
)""+ ,
."", -
NotEmpty""- 5
(""5 6
)""6 7
;""7 8
RuleFor## 
(## 
command## 
=>## 
command## &
.##& '
EmptyWeight##' 2
)##2 3
.##3 4
NotEmpty##4 <
(##< =
)##= >
;##> ?
}$$ 	
}%% 
}&& �	
kD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Beams\ReadModels\BeamReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Beams #
.# $

ReadModels$ .
{ 
public 

class 

:  

{ 
public 

( 
Guid !
identity" *
)* +
:, -
base. 2
(2 3
identity3 ;
); <
{= >
}? @
public

 
string

 
Number

 
{

 
get

 "
;

" #
internal

$ ,
set

- 0
;

0 1
}

2 3
public 
string 
Type 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
public 
double 
EmtpyWeight !
{" #
get$ '
;' (
internal) 1
set2 5
;5 6
}7 8
}
} �
oD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Beams\Repositories\IBeamRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Beams #
.# $
Repositories$ 0
{ 
public 

	interface 
IBeamRepository $
:% & 
IAggregateRepository' ;
<; <
BeamDocument< H
,H I

>W X
{ 
} 
}		 �6
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Loom\Commands\AddNewDailyOperationLoomCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Loom. 2
.2 3
Commands3 ;
{ 
public		 

class		 +
AddNewDailyOperationLoomCommand		 0
:

 	
ICommand


 
<

 &
DailyOperationLoomDocument

 -
>

- .
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public
UnitId
UnitId
{
get
;
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 0
)0 1
]1 2
public 
	MachineId 
	MachineId "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public 
BeamId 
BeamId 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% .
). /
]/ 0
public 
OrderId 
OrderId 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 6
)6 7
]7 8
public 
DateTimeOffset 
PreparationDate -
{. /
get0 3
;3 4
private5 <
set= @
;@ A
}B C
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 6
)6 7
]7 8
public 
string 
PreparationTime %
{& '
get( +
;+ ,
private- 4
set5 8
;8 9
}: ;
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 

OperatorId 

OperatorId $
{% &
get' *
;* +
private, 3
set4 7
;7 8
}9 :
[!! 	
JsonProperty!!	 
(!! 
PropertyName!! "
=!!# $
$str!!% .
)!!. /
]!!/ 0
public"" 
ShiftId"" 
ShiftId"" 
{""  
get""! $
;""$ %
private""& -
set"". 1
;""1 2
}""3 4
[$$ 	
JsonProperty$$	 
($$ 
PropertyName$$ "
=$$# $
$str$$% A
)$$A B
]$$B C
public%% &
DailyOperationMonitoringId%% )&
DailyOperationMonitoringId%%* D
{%%E F
get%%G J
;%%J K
private%%L S
set%%T W
;%%W X
}%%Y Z
['' 	
JsonProperty''	 
('' 
PropertyName'' "
=''# $
$str''% 1
)''1 2
]''2 3
public(( 
string(( 

WarpOrigin((  
{((! "
get((# &
;((& '
private((( /
set((0 3
;((3 4
}((5 6
[** 	
JsonProperty**	 
(** 
PropertyName** "
=**# $
$str**% 1
)**1 2
]**2 3
public++ 
string++ 

WeftOrigin++  
{++! "
get++# &
;++& '
private++( /
set++0 3
;++3 4
}++5 6
},, 
public.. 

class.. 9
-AddNewDailyOperationalMachineCommandValidator.. >
:// 	
AbstractValidator//
 
<// +
AddNewDailyOperationLoomCommand// ;
>//; <
{00 
public11 9
-AddNewDailyOperationalMachineCommandValidator11 <
(11< =
)11= >
{22 	
RuleFor33 
(33 
command33 
=>33 
command33 &
.33& '
UnitId33' -
)33- .
.33. /
NotEmpty33/ 7
(337 8
)338 9
;339 :
RuleFor44 
(44 
command44 
=>44 
command44 &
.44& '
	MachineId44' 0
.440 1
Value441 6
)446 7
.447 8
NotEmpty448 @
(44@ A
)44A B
;44B C
RuleFor55 
(55 
command55 
=>55 
command55 &
.55& '
BeamId55' -
.55- .
Value55. 3
)553 4
.554 5
NotEmpty555 =
(55= >
)55> ?
;55? @
RuleFor66 
(66 
command66 
=>66 
command66 &
.66& '
OrderId66' .
.66. /
Value66/ 4
)664 5
.665 6
NotEmpty666 >
(66> ?
)66? @
;66@ A
RuleFor77 
(77 
command77 
=>77 
command77 &
.77& '
PreparationDate77' 6
)776 7
.777 8
NotEmpty778 @
(77@ A
)77A B
;77B C
RuleFor88 
(88 
command88 
=>88 
command88 &
.88& '
PreparationTime88' 6
)886 7
.887 8
NotEmpty888 @
(88@ A
)88A B
;88B C
RuleFor99 
(99 
command99 
=>99 
command99 &
.99& '

OperatorId99' 1
.991 2
Value992 7
)997 8
.998 9
NotEmpty999 A
(99A B
)99B C
;99C D
RuleFor:: 
(:: 
command:: 
=>:: 
command:: &
.::& '
ShiftId::' .
.::. /
Value::/ 4
)::4 5
.::5 6
NotEmpty::6 >
(::> ?
)::? @
;::@ A
RuleFor;; 
(;; 
command;; 
=>;; 
command;; &
.;;& '

WarpOrigin;;' 1
);;1 2
.;;2 3
NotEmpty;;3 ;
(;;; <
);;< =
;;;= >
RuleFor<< 
(<< 
command<< 
=><< 
command<< &
.<<& '

WeftOrigin<<' 1
)<<1 2
.<<2 3
NotEmpty<<3 ;
(<<; <
)<<< =
;<<= >
}== 	
}>> 
}?? � 
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Loom\Commands\ResumeDailyOperationLoomCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Loom. 2
.2 3
Commands3 ;
{ 
public		 

class		 +
ResumeDailyOperationLoomCommand		 0
:

 	
ICommand


 
<

 &
DailyOperationLoomDocument

 -
>

- .
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% )
)) *
]* +
public
Guid
Id
{
get
;
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 
DateTimeOffset 

ResumeDate (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 
string 

ResumeTime  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% .
). /
]/ 0
public 
ShiftId 
ShiftId 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 

OperatorId 

OperatorId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public 
bool 
SelectUp 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 2
)2 3
]3 4
public 
bool 
SelectBegin 
{  !
get" %
;% &
set' *
;* +
}, -
}   
public"" 

class"" 4
(ResumeDailyOperationLoomCommandValidator"" 9
:## 	
AbstractValidator##
 
<## +
ResumeDailyOperationLoomCommand## ;
>##; <
{$$ 
public%% 4
(ResumeDailyOperationLoomCommandValidator%% 7
(%%7 8
)%%8 9
{&& 	
RuleFor'' 
('' 
command'' 
=>'' 
command'' &
.''& '
Id''' )
)'') *
.''* +
NotEmpty''+ 3
(''3 4
)''4 5
;''5 6
RuleFor(( 
((( 
command(( 
=>(( 
command(( &
.((& '

ResumeDate((' 1
)((1 2
.((2 3
NotEmpty((3 ;
(((; <
)((< =
;((= >
RuleFor)) 
()) 
command)) 
=>)) 
command)) &
.))& '

ResumeTime))' 1
)))1 2
.))2 3
NotEmpty))3 ;
()); <
)))< =
;))= >
RuleFor** 
(** 
command** 
=>** 
command** &
.**& '
ShiftId**' .
)**. /
.**/ 0
NotEmpty**0 8
(**8 9
)**9 :
;**: ;
RuleFor++ 
(++ 
command++ 
=>++ 
command++ &
.++& '

OperatorId++' 1
)++1 2
.++2 3
NotEmpty++3 ;
(++; <
)++< =
;++= >
},, 	
}-- 
}.. � 
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Loom\Commands\StartDailyOperationLoomCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Loom. 2
.2 3
Commands3 ;
{ 
public		 

class		 *
StartDailyOperationLoomCommand		 /
:

 	
ICommand


 
<

 &
DailyOperationLoomDocument

 -
>

- .
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% )
)) *
]* +
public
Guid
Id
{
get
;
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public 
BeamId 
BeamId 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 0
)0 1
]1 2
public 
DateTimeOffset 
	StartDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 0
)0 1
]1 2
public 
string 
	StartTime 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% .
). /
]/ 0
public 
ShiftId 
ShiftId 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 

OperatorId 

OperatorId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
public 

class 3
'StartDailyOperationLoomCommandValidator 8
:   	
AbstractValidator  
 
<   *
StartDailyOperationLoomCommand   :
>  : ;
{!! 
public"" 3
'StartDailyOperationLoomCommandValidator"" 6
(""6 7
)""7 8
{## 	
RuleFor$$ 
($$ 
command$$ 
=>$$ 
command$$ &
.$$& '
Id$$' )
)$$) *
.$$* +
NotEmpty$$+ 3
($$3 4
)$$4 5
;$$5 6
RuleFor%% 
(%% 
command%% 
=>%% 
command%% &
.%%& '
BeamId%%' -
)%%- .
.%%. /
NotEmpty%%/ 7
(%%7 8
)%%8 9
;%%9 :
RuleFor&& 
(&& 
command&& 
=>&& 
command&& &
.&&& '
	StartDate&&' 0
)&&0 1
.&&1 2
NotEmpty&&2 :
(&&: ;
)&&; <
;&&< =
RuleFor'' 
('' 
command'' 
=>'' 
command'' &
.''& '
	StartTime''' 0
)''0 1
.''1 2
NotEmpty''2 :
('': ;
)''; <
;''< =
RuleFor(( 
((( 
command(( 
=>(( 
command(( &
.((& '
ShiftId((' .
)((. /
.((/ 0
NotEmpty((0 8
(((8 9
)((9 :
;((: ;
RuleFor)) 
()) 
command)) 
=>)) 
command)) &
.))& '

OperatorId))' 1
)))1 2
.))2 3
NotEmpty))3 ;
()); <
)))< =
;))= >
}** 	
}++ 
},, �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Loom\Commands\StopDailyOperationLoomCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Loom. 2
.2 3
Commands3 ;
{ 
public		 

class		 )
StopDailyOperationLoomCommand		 .
:

 	
ICommand


 
<

 &
DailyOperationLoomDocument

 -
>

- .
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% )
)) *
]* +
public
Guid
Id
{
get
;
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public 
DateTimeOffset 
StopDate &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public 
string 
StopTime 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% .
). /
]/ 0
public 
ShiftId 
ShiftId 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 

OperatorId 

OperatorId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
public 

class 2
&StopDailyOperationLoomCommandValidator 7
: 	
AbstractValidator
 
< )
StopDailyOperationLoomCommand 9
>9 :
{ 
public 2
&StopDailyOperationLoomCommandValidator 5
(5 6
)6 7
{   	
RuleFor!! 
(!! 
command!! 
=>!! 
command!! &
.!!& '
Id!!' )
)!!) *
.!!* +
NotEmpty!!+ 3
(!!3 4
)!!4 5
;!!5 6
RuleFor"" 
("" 
command"" 
=>"" 
command"" &
.""& '
StopDate""' /
)""/ 0
.""0 1
NotEmpty""1 9
(""9 :
)"": ;
;""; <
RuleFor## 
(## 
command## 
=>## 
command## &
.##& '
StopTime##' /
)##/ 0
.##0 1
NotEmpty##1 9
(##9 :
)##: ;
;##; <
RuleFor$$ 
($$ 
command$$ 
=>$$ 
command$$ &
.$$& '
ShiftId$$' .
)$$. /
.$$/ 0
NotEmpty$$0 8
($$8 9
)$$9 :
;$$: ;
RuleFor%% 
(%% 
command%% 
=>%% 
command%% &
.%%& '

OperatorId%%' 1
)%%1 2
.%%2 3
NotEmpty%%3 ;
(%%; <
)%%< =
;%%= >
}&& 	
}'' 
}(( �C
|D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Loom\DailyOperationLoomDocument.cs
	namespace

 	
Manufactures


 
.

 
Domain

 
.

 
DailyOperations

 -
.

- .
Loom

. 2
{ 
public 

class &
DailyOperationLoomDocument +
:

 
<
DailyOperationLoomDocument
,
DailyOperationLoomReadModel
>
{ 
public 
UnitId 
UnitId 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 
	MachineId 
	MachineId "
{# $
get% (
;( )
private* 1
set2 5
;5 6
}7 8
public 
BeamId 
BeamId 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 
OrderId 
OrderId 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
public 
string  
DailyOperationStatus *
{+ ,
get- 0
;0 1
private2 9
set: =
;= >
}? @
public &
DailyOperationMonitoringId )&
DailyOperationMonitoringId* D
{E F
getG J
;J K
privateL S
setT W
;W X
}Y Z
public 
IReadOnlyCollection "
<" #$
DailyOperationLoomDetail# ;
>; <(
DailyOperationMachineDetails= Y
{Z [
get\ _
;_ `
privatea h
seti l
;l m
}n o
public &
DailyOperationLoomDocument )
() *
Guid* .
id/ 1
,1 2
UnitId* 0
unitId1 7
,7 8
	MachineId* 3
	machineId4 =
,= >
BeamId* 0
beamId1 7
,7 8
OrderId* 1
orderId2 9
,9 :&
DailyOperationMonitoringId* D&
dailyOperationMonitoringIdE _
,_ `
string* 0 
dailyOperationStatus1 E
)E F
:G H
baseI M
(M N
idN P
)P Q
{ 	
Identity 
= 
id 
; 
UnitId   
=   
unitId   
;   
	MachineId!! 
=!! 
	machineId!! !
;!!! "
BeamId"" 
="" 
beamId"" 
;"" 
OrderId## 
=## 
orderId## 
;##  
DailyOperationStatus$$  
=$$! " 
dailyOperationStatus$$# 7
;$$7 8&
DailyOperationMonitoringId%% &
=%%' (&
dailyOperationMonitoringId%%) C
;%%C D(
DailyOperationMachineDetails&& (
=&&) *
new&&+ .
List&&/ 3
<&&3 4$
DailyOperationLoomDetail&&4 L
>&&L M
(&&M N
)&&N O
;&&O P
this(( 
.(( 

((( 
)((  
;((  !
	ReadModel** 
=** 
new** '
DailyOperationLoomReadModel** 7
(**7 8
Identity**8 @
)**@ A
{++ 
UnitId,, 
=,, 
this,, 
.,, 
UnitId,, $
.,,$ %
Value,,% *
,,,* +
	MachineId-- 
=-- 
this--  
.--  !
	MachineId--! *
.--* +
Value--+ 0
,--0 1
BeamId.. 
=.. 
this.. 
... 
BeamId.. $
...$ %
Value..% *
,..* +
OrderId// 
=// 
this// 
.// 
OrderId// &
.//& '
Value//' ,
,//, - 
DailyOperationStatus00 $
=00% &
this00' +
.00+ , 
DailyOperationStatus00, @
,00@ A&
DailyOperationMonitoringId11 *
=11+ ,
this11- 1
.111 2&
DailyOperationMonitoringId112 L
.11L M
Value11M R
,11R S%
DailyOperationLoomDetails22 )
=22* +
this22, 0
.220 1(
DailyOperationMachineDetails221 M
.22M N
ToList22N T
(22T U
)22U V
}33 
;33
	ReadModel55 
.55 
AddDomainEvent55 $
(55$ %
new55% (#
OnAddDailyOperationLoom55) @
(55@ A
Identity55A I
)55I J
)55J K
;55K L
}66 	
public88 &
DailyOperationLoomDocument88 )
(88) *'
DailyOperationLoomReadModel88* E
	readModel88F O
)88O P
:99 
base99 
(99 
	readModel99 
)99 
{:: 	
this;; 
.;; 
UnitId;; 
=;; 
new;; 
UnitId;; $
(;;$ %
	readModel;;% .
.;;. /
UnitId;;/ 5
);;5 6
;;;6 7
this<< 
.<< 
	MachineId<< 
=<< 
new<<  
	MachineId<<! *
(<<* +
	readModel<<+ 4
.<<4 5
	MachineId<<5 >
)<<> ?
;<<? @
this== 
.== 
BeamId== 
=== 
new== 
BeamId== $
(==$ %
	readModel==% .
.==. /
BeamId==/ 5
)==5 6
;==6 7
this>> 
.>> 
OrderId>> 
=>> 
new>> 
OrderId>> &
(>>& '
	readModel>>' 0
.>>0 1
OrderId>>1 8
)>>8 9
;>>9 :
this?? 
.??  
DailyOperationStatus?? %
=??& '
	readModel??( 1
.??1 2 
DailyOperationStatus??2 F
;??F G
this@@ 
.@@ &
DailyOperationMonitoringId@@ +
=@@, -
	readModelAA 
.AA &
DailyOperationMonitoringIdAA 4
.AA4 5
HasValueAA5 =
?AA> ?
newBB &
DailyOperationMonitoringIdBB 2
(BB2 3
	readModelBB3 <
.BB< =&
DailyOperationMonitoringIdBB= W
.BBW X
ValueBBX ]
)BB] ^
:BB_ `
nullBBa e
;BBe f
thisCC 
.CC (
DailyOperationMachineDetailsCC -
=CC. /
	readModelDD 
.DD %
DailyOperationLoomDetailsDD 3
;DD3 4
}EE 	
publicGG 
voidGG *
AddDailyOperationMachineDetailGG 2
(GG2 3$
DailyOperationLoomDetailGG3 K'
dailyOperationMachineDetailGGL g
)GGg h
{HH 	
varII 
listII 
=II (
DailyOperationMachineDetailsII 3
.II3 4
ToListII4 :
(II: ;
)II; <
;II< =
listJJ 
.JJ 
AddJJ 
(JJ '
dailyOperationMachineDetailJJ 0
)JJ0 1
;JJ1 2(
DailyOperationMachineDetailsKK (
=KK) *
listKK+ /
;KK/ 0
	ReadModelLL 
.LL %
DailyOperationLoomDetailsLL /
=LL0 1(
DailyOperationMachineDetailsLL2 N
.LLN O
ToListLLO U
(LLU V
)LLV W
;LLW X
MarkModifiedNN 
(NN 
)NN 
;NN 
}OO 	
publicQQ 
voidQQ #
SetDailyOperationStatusQQ +
(QQ+ ,
stringQQ, 2
valueQQ3 8
)QQ8 9
{RR 	
ifSS 
(SS  
DailyOperationStatusSS #
!=SS$ &
valueSS' ,
)SS, -
{TT 
DailyOperationStatusUU $
=UU% &
valueUU' ,
;UU, -
	ReadModelVV 
.VV  
DailyOperationStatusVV .
=VV/ 0 
DailyOperationStatusVV1 E
;VVE F
MarkModifiedXX 
(XX 
)XX 
;XX 
}YY 
}ZZ 	
	protected\\ 
override\\ &
DailyOperationLoomDocument\\ 5
	GetEntity\\6 ?
(\\? @
)\\@ A
{]] 	
return^^ 
this^^ 
;^^ 
}__ 	
}`` 
}aa �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Loom\Entities\DailyOperationLoomDetail.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Loom. 2
.2 3
Entities3 ;
{ 
public		 

class		 $
DailyOperationLoomDetail		 )
:

 	

EntityBase


 
<

 $
DailyOperationLoomDetail

 -
>

- .
{ 
public 
Guid 
ShiftId 
{ 
get !
;! "
private# *
set+ .
;. /
}0 1
public
Guid
BeamOperatorId
{
get
;
private
set
;
}
public 
string 

WarpOrigin  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
string 

WeftOrigin  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
string %
DailyOperationLoomHistory /
{0 1
get2 5
;5 6
private7 >
set? B
;B C
}D E
public 
Guid (
DailyOperationLoomDocumentId 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public '
DailyOperationLoomReadModel *&
DailyOperationLoomDocument+ E
{F G
getH K
;K L
setM P
;P Q
}R S
public $
DailyOperationLoomDetail '
(' (
Guid( ,
identity- 5
)5 6
:7 8
base9 =
(= >
identity> F
)F G
{ 	
} 	
public $
DailyOperationLoomDetail '
(' (
Guid( ,
identity- 5
,5 6
ShiftId( /
shiftId0 7
,7 8

OperatorId( 2
beamOperatorId3 A
,A B
string( .

warpOrigin/ 9
,9 :
string( .

weftOrigin/ 9
,9 :%
DailyOperationLoomHistory( A%
dailyOperationLoomHistoryB [
)[ \
: 
base 
( 
identity 
) 
{ 	
Identity   
=   
identity   
;    
ShiftId!! 
=!! 
shiftId!! 
.!! 
Value!! #
;!!# $
BeamOperatorId"" 
="" 
beamOperatorId"" +
.""+ ,
Value"", 1
;""1 2

WarpOrigin## 
=## 

warpOrigin## #
;### $

WeftOrigin$$ 
=$$ 

weftOrigin$$ #
;$$# $%
DailyOperationLoomHistory%% %
=%%& '%
dailyOperationLoomHistory%%( A
.%%A B
	Serialize%%B K
(%%K L
)%%L M
;%%M N
}&& 	
	protected(( 
override(( $
DailyOperationLoomDetail(( 3
	GetEntity((4 =
(((= >
)((> ?
{)) 	
return** 
this** 
;** 
}++ 	
},, 
}-- �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Loom\ReadModels\DailyOperationLoomReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Loom. 2
.2 3

ReadModels3 =
{ 
public 

class '
DailyOperationLoomReadModel ,
:- .

{		 
public

 
int

 
UnitId

 
{

 
get

 
;

  
internal

! )
set

* -
;

- .
}

/ 0
public 
Guid 
	MachineId 
{ 
get  #
;# $
internal% -
set. 1
;1 2
}3 4
public 
Guid 
BeamId 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
public
Guid
OrderId
{
get
;
internal
set
;
}
public 
string  
DailyOperationStatus *
{+ ,
get- 0
;0 1
internal2 :
set; >
;> ?
}@ A
public 
Guid 
? &
DailyOperationMonitoringId /
{0 1
get2 5
;5 6
internal7 ?
set@ C
;C D
}E F
public 
List 
< $
DailyOperationLoomDetail ,
>, -%
DailyOperationLoomDetails. G
{H I
getJ M
;M N
internalO W
setX [
;[ \
}] ^
public '
DailyOperationLoomReadModel *
(* +
Guid+ /
identity0 8
)8 9
:: ;
base< @
(@ A
identityA I
)I J
{ 	
} 	
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Loom\Repositories\IDailyOperationLoomRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Loom. 2
.2 3
Repositories3 ?
{ 
public 

	interface )
IDailyOperationLoomRepository 2
:3 4 
IAggregateRepository5 I
<I J&
DailyOperationLoomDocumentJ d
,d e(
DailyOperationLoomReadModel	f �
>
� �
{ 
} 
}		 �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Loom\ValueObjects\DailyOperationLoomHistory.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Loom. 2
.2 3
ValueObjects3 ?
{ 
public 

class %
DailyOperationLoomHistory *
:+ ,
ValueObject- 8
{ 
public		 
DateTimeOffset		 
MachineDate		 )
{		* +
get		, /
;		/ 0
private		1 8
set		9 <
;		< =
}		> ?
public

 
TimeSpan

 
MachineTime

 #
{

$ %
get

& )
;

) *
private

+ 2
set

3 6
;

6 7
}

8 9
public 
string 

{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
public 
bool 
IsUp 
{ 
get 
; 
private  '
set( +
;+ ,
}- .
public
bool
IsDown
{
get
;
private
set
;
}
public %
DailyOperationLoomHistory (
(( )
)) *
{+ ,
}- .
public %
DailyOperationLoomHistory (
(( )
DateTimeOffset) 7
machineDate8 C
,C D
TimeSpan) 1
machineTime2 =
,= >
string) /

,= >
bool) -
isUp. 2
,2 3
bool) -
isDown. 4
)4 5
{ 	
MachineDate 
= 
machineDate %
;% &
MachineTime 
= 
machineTime %
;% &

= 

;) *
IsUp 
= 
IsUp 
; 
IsDown 
= 
IsDown 
; 
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield   
return   
MachineDate   $
;  $ %
yield!! 
return!! 

;!!& '
yield"" 
return"" 
IsUp"" 
;"" 
yield## 
return## 
IsDown## 
;##  
}$$ 	
}%% 
}&& �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\Commands\DailyOperationSizingCausesCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Sizing. 4
.4 5
Commands5 =
{ 
public		 

class		 -
!DailyOperationSizingCausesCommand		 2
{

 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 
string 

BrokenBeam  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 6
)6 7
]7 8
public 
string 
MachineTroubled %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
public 

class 6
*DailyOperationSizingCausesCommandValidator ;
: 
AbstractValidator 
< -
!DailyOperationSizingCausesCommand ;
>; <
{ 
public 6
*DailyOperationSizingCausesCommandValidator 9
(9 :
): ;
{ 	
RuleFor 
( 
command 
=> 
command &
.& '

BrokenBeam' 1
)1 2
.2 3
NotEmpty3 ;
(; <
)< =
.= >
Unless> D
(D E
commandE L
=>M O
stringP V
.V W

(d e
commande l
.l m
MachineTroubledm |
)| }
)} ~
;~ 
RuleFor 
( 
command 
=> 
command &
.& '
MachineTroubled' 6
)6 7
.7 8
NotEmpty8 @
(@ A
)A B
.B C
UnlessC I
(I J
commandJ Q
=>R T
stringU [
.[ \

(i j
commandj q
.q r

BrokenBeamr |
)| }
)} ~
;~ 
} 	
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\Commands\DailyOperationSizingCounterCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Sizing. 4
.4 5
Commands5 =
{ 
public 

class .
"DailyOperationSizingCounterCommand 3
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% ,
), -
]- .
public		 
string		 
Start		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public 
string 
Finish 
{ 
get "
;" #
set$ '
;' (
}) *
}
public 

class 7
+DailyOperationSizingCounterCommandValidator <
: 
AbstractValidator 
< .
"DailyOperationSizingCounterCommand <
>< =
{ 
public 7
+DailyOperationSizingCounterCommandValidator :
(: ;
); <
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
Start' ,
), -
.- .
NotEmpty. 6
(6 7
)7 8
;8 9
RuleFor 
( 
command 
=> 
command &
.& '
Finish' -
)- .
.. /
NotEmpty/ 7
(7 8
)8 9
.9 :
Unless: @
(@ A
commandA H
=>I K
stringL R
.R S

(` a
commanda h
.h i
Starti n
)n o
)o p
;p q
} 	
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\Commands\DailyOperationSizingHistoryCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Sizing. 4
.4 5
Commands5 =
{ 
public		 

class		 .
"DailyOperationSizingHistoryCommand		 3
{

 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 4
)4 5
]5 6
public 
DateTimeOffset 

{, -
get. 1
;1 2
set3 6
;6 7
}8 9
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 4
)4 5
]5 6
public 
string 

{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public 
bool 
IsUp 
{ 
get 
; 
private  '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public 
bool 
IsDown 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 2
)2 3
]3 4
public 
string 
Information !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
} 
public 

class 7
+DailyOperationSizingHistoryCommandValidator <
: 
AbstractValidator	 
< .
"DailyOperationSizingHistoryCommand =
>= >
{ 
public 7
+DailyOperationSizingHistoryCommandValidator :
(: ;
); <
{ 	
RuleFor   
(   
command   
=>   
command   &
.  & '

)  4 5
.  5 6
NotNull  6 =
(  = >
)  > ?
;  ? @
RuleFor!! 
(!! 
command!! 
=>!! 
command!! &
.!!& '

)!!4 5
.!!5 6
NotEmpty!!6 >
(!!> ?
)!!? @
;!!@ A
}"" 	
}## 
}$$ �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\Commands\DailyOperationSizingWeightCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Sizing. 4
.4 5
Commands5 =
{ 
public 

class -
!DailyOperationSizingWeightCommand 2
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% ,
), -
]- .
public		 
string		 
Netto		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% ,
), -
]- .
public 
string 
Bruto 
{ 
get !
;! "
set# &
;& '
}( )
}
public 

class 6
*DailyOperationSizingWeightCommandValidator ;
: 
AbstractValidator 
< -
!DailyOperationSizingWeightCommand ;
>; <
{ 
public 6
*DailyOperationSizingWeightCommandValidator 9
(9 :
): ;
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
Netto' ,
), -
.- .
NotEmpty. 6
(6 7
)7 8
;8 9
RuleFor 
( 
command 
=> 
command &
.& '
Bruto' ,
), -
.- .
NotEmpty. 6
(6 7
)7 8
.8 9
Unless9 ?
(? @
command@ G
=>H J
stringK Q
.Q R

(_ `
command` g
.g h
Nettoh m
)m n
)n o
;o p
} 	
} 
} �,
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\Commands\NewEntryDailyOperationSizingCommand.cs
	namespace		 	
Manufactures		
 
.		 
Domain		 
.		 
DailyOperations		 -
.		- .
Sizing		. 4
.		4 5
Commands		5 =
{

 
public 

class /
#NewEntryDailyOperationSizingCommand 4
:5 6
ICommand7 ?
<? @(
DailyOperationSizingDocument@ \
>\ ]
{ 
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
	MachineId 
MachineDocumentId *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 4
)4 5
]5 6
public 
UnitId 

{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% =
)= >
]> ?
public 
ConstructionId "
ConstructionDocumentId 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 
string 

RecipeCode  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% .
). /
]/ 0
public .
"DailyOperationSizingCounterCommand 1
Counter2 9
{: ;
get< ?
;? @
setA D
;D E
}F G
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public -
!DailyOperationSizingWeightCommand 0
Weight1 7
{8 9
get: =
;= >
set? B
;B C
}D E
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% F
)F G
]G H
public   
List   
<   
BeamId   
>   +
WarpingBeamCollectionDocumentId   ;
{  < =
get  > A
;  A B
set  C F
;  F G
}  H I
["" 	
JsonProperty""	 
("" 
PropertyName"" "
=""# $
$str""% .
)"". /
]""/ 0
public## 5
)NewEntryDailyOperationSizingDetailCommand## 8
Details##9 @
{##A B
get##C F
;##F G
set##H K
;##K L
}##M N
}$$ 
public&& 

class&& 8
,NewEntryDailyOperationSizingCommandValidator&& =
:&&> ?
AbstractValidator&&@ Q
<&&Q R/
#NewEntryDailyOperationSizingCommand&&R u
>&&u v
{'' 
public(( 8
,NewEntryDailyOperationSizingCommandValidator(( ;
(((; <
)((< =
{)) 	
RuleFor** 
(** 
command** 
=>** 
command** &
.**& '
MachineDocumentId**' 8
.**8 9
Value**9 >
)**> ?
.**? @
NotEmpty**@ H
(**H I
)**I J
;**J K
RuleFor++ 
(++ 
command++ 
=>++ 
command++ &
.++& '

.++4 5
Value++5 :
)++: ;
.++; <
NotEmpty++< D
(++D E
)++E F
;++F G
RuleFor,, 
(,, 
command,, 
=>,, 
command,, &
.,,& '"
ConstructionDocumentId,,' =
.,,= >
Value,,> C
),,C D
.,,D E
NotEmpty,,E M
(,,M N
),,N O
;,,O P
RuleFor-- 
(-- 
command-- 
=>-- 
command-- &
.--& '
Counter--' .
)--. /
.--/ 0
SetValidator--0 <
(--< =
new--= @7
+DailyOperationSizingCounterCommandValidator--A l
(--l m
)--m n
)--n o
;--o p
RuleFor.. 
(.. 
command.. 
=>.. 
command.. &
...& '
Weight..' -
)..- .
.... /
SetValidator../ ;
(..; <
new..< ?6
*DailyOperationSizingWeightCommandValidator..@ j
(..j k
)..k l
)..l m
;..m n
RuleFor// 
(// 
command// 
=>// 
command// &
.//& '+
WarpingBeamCollectionDocumentId//' F
.//F G
Count//G L
)//L M
.//M N
NotEqual//N V
(//V W
$num//W X
)//X Y
;//Y Z
RuleFor00 
(00 
command00 
=>00 
command00 &
.00& '
Details00' .
)00. /
.00/ 0
SetValidator000 <
(00< =
new00= @>
2NewEntryDailyOperationSizingDetailCommandValidator00A s
(00s t
)00t u
)00u v
;00v w
}11 	
}22 
}33 �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\Commands\NewEntryDailyOperationSizingDetailCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Sizing. 4
.4 5
Commands5 =
{		 
public

 

class

 5
)NewEntryDailyOperationSizingDetailCommand

 :
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 9
)9 :
]: ;
public

OperatorId
OperatorDocumentId
{
get
;
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 6
)6 7
]7 8
public 
ShiftId 
ShiftId 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% .
). /
]/ 0
public .
"DailyOperationSizingHistoryCommand 1
History2 9
{: ;
get< ?
;? @
setA D
;D E
}F G
} 
public 

class >
2NewEntryDailyOperationSizingDetailCommandValidator C
:D E
AbstractValidatorF W
<W X6
)NewEntryDailyOperationSizingDetailCommand	X �
>
� �
{ 
public >
2NewEntryDailyOperationSizingDetailCommandValidator A
(A B
)B C
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
OperatorDocumentId' 9
.9 :
Value: ?
)? @
.@ A
NotEmptyA I
(I J
)J K
;K L
RuleFor 
( 
command 
=> 
command &
.& '
ShiftId' .
.. /
Value/ 4
)4 5
.5 6
NotEmpty6 >
(> ?
)? @
;@ A
RuleFor 
( 
command 
=> 
command &
.& '
History' .
). /
./ 0
SetValidator0 <
(< =
new= @7
+DailyOperationSizingHistoryCommandValidatorA l
(l m
)m n
)n o
;o p
} 	
} 
} �4
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\Commands\UpdateDoffFinishDailyOperationSizingCommand.cs
	namespace		 	
Manufactures		
 
.		 
Domain		 
.		 
DailyOperations		 -
.		- .
Sizing		. 4
.		4 5
Commands		5 =
{

 
public 

class 7
+UpdateDoffFinishDailyOperationSizingCommand <
:= >
ICommand? G
<G H(
DailyOperationSizingDocumentH d
>d e
{ 
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% .
). /
]/ 0
public .
"DailyOperationSizingCounterCommand 1
Counter2 9
{: ;
get< ?
;? @
setA D
;D E
}F G
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public -
!DailyOperationSizingWeightCommand 0
Weight1 7
{8 9
get: =
;= >
set? B
;B C
}D E
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 3
)3 4
]4 5
public 
int 
MachineSpeed 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% ,
), -
]- .
public 
double 
TexSQ 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% ,
), -
]- .
public 
double 
Visco 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% *
)* +
]+ ,
public   
int   
PIS   
{   
get   
;   
set   !
;  ! "
}  # $
["" 	
JsonProperty""	 
("" 
PropertyName"" "
=""# $
$str""% *
)""* +
]""+ ,
public## 
double## 
SPU## 
{## 
get## 
;##  
set##! $
;##$ %
}##& '
[%% 	
JsonProperty%%	 
(%% 
PropertyName%% "
=%%# $
$str%%% ;
)%%; <
]%%< =
public&& 
BeamId&&  
SizingBeamDocumentId&& *
{&&+ ,
get&&- 0
;&&0 1
set&&2 5
;&&5 6
}&&7 8
[)) 	
JsonProperty))	 
()) 
PropertyName)) "
=))# $
$str))% .
))). /
]))/ 0
public** =
1UpdateDoffFinishDailyOperationSizingDetailCommand** @
Details**A H
{**I J
get**K N
;**N O
set**P S
;**S T
}**U V
public,, 
void,, 
SetId,, 
(,, 
Guid,, 
Id,, !
),,! "
{-- 	
this.. 
... 
Id.. 
=.. 
Id.. 
;.. 
}// 	
}00 
public11 

class11 @
4UpdateDoffFinishDailyOperationSizingCommandValidator11 E
:11F G
AbstractValidator11H Y
<11Y Z8
+UpdateDoffFinishDailyOperationSizingCommand	11Z �
>
11� �
{22 
public33 @
4UpdateDoffFinishDailyOperationSizingCommandValidator33 C
(33C D
)33D E
{44 	
RuleFor55 
(55 
command55 
=>55 
command55 &
.55& '
Counter55' .
)55. /
.55/ 0
SetValidator550 <
(55< =
new55= @7
+DailyOperationSizingCounterCommandValidator55A l
(55l m
)55m n
)55n o
;55o p
RuleFor66 
(66 
command66 
=>66 
command66 &
.66& '
Weight66' -
)66- .
.66. /
SetValidator66/ ;
(66; <
new66< ?6
*DailyOperationSizingWeightCommandValidator66@ j
(66j k
)66k l
)66l m
;66m n
RuleFor77 
(77 
command77 
=>77 
command77 &
.77& '
MachineSpeed77' 3
)773 4
.774 5
NotEmpty775 =
(77= >
)77> ?
;77? @
RuleFor88 
(88 
command88 
=>88 
command88 &
.88& '
TexSQ88' ,
)88, -
.88- .
NotEmpty88. 6
(886 7
)887 8
;888 9
RuleFor99 
(99 
command99 
=>99 
command99 &
.99& '
Visco99' ,
)99, -
.99- .
NotEmpty99. 6
(996 7
)997 8
;998 9
RuleFor:: 
(:: 
command:: 
=>:: 
command:: &
.::& '
PIS::' *
)::* +
.::+ ,
NotEmpty::, 4
(::4 5
)::5 6
;::6 7
RuleFor;; 
(;; 
command;; 
=>;; 
command;; &
.;;& '
SPU;;' *
);;* +
.;;+ ,
NotEmpty;;, 4
(;;4 5
);;5 6
;;;6 7
RuleFor<< 
(<< 
command<< 
=><< 
command<< &
.<<& ' 
SizingBeamDocumentId<<' ;
)<<; <
.<<< =
NotEmpty<<= E
(<<E F
)<<F G
;<<G H
RuleFor== 
(== 
command== 
=>== 
command== &
.==& '
Details==' .
)==. /
.==/ 0
SetValidator==0 <
(==< =
new=== @@
4UpdateDoffDailyOperationSizingDetailCommandValidator==A u
(==u v
)==v w
)==w x
;==x y
}>> 	
}?? 
}@@ �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\Commands\UpdateDoffFinishDailyOperationSizingDetailCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Sizing. 4
.4 5
Commands5 =
{		 
public

 

class

 =
1UpdateDoffFinishDailyOperationSizingDetailCommand

 B
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% .
). /
]/ 0
public
"DailyOperationSizingHistoryCommand
History
{
get
;
set
;
}
} 
public 

class @
4UpdateDoffDailyOperationSizingDetailCommandValidator E
:F G
AbstractValidatorH Y
<Y Z>
1UpdateDoffFinishDailyOperationSizingDetailCommand	Z �
>
� �
{ 
public @
4UpdateDoffDailyOperationSizingDetailCommandValidator C
(C D
)D E
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
History' .
). /
./ 0
SetValidator0 <
(< =
new= @7
+DailyOperationSizingHistoryCommandValidatorA l
(l m
)m n
)n o
;o p
} 	
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\Commands\UpdatePauseDailyOperationSizingCommand.cs
	namespace		 	
Manufactures		
 
.		 
Domain		 
.		 
DailyOperations		 -
.		- .
Sizing		. 4
.		4 5
Commands		5 =
{

 
public 

class 2
&UpdatePauseDailyOperationSizingCommand 7
:8 9
ICommand: B
<B C(
DailyOperationSizingDocumentC _
>_ `
{ 
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
Guid 
Id 
{ 
get 
; 
private %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% .
). /
]/ 0
public 8
,UpdatePauseDailyOperationSizingDetailCommand ;
Details< C
{D E
getF I
;I J
setK N
;N O
}P Q
public 
void 
SetId 
( 
Guid 
Id !
)! "
{ 	
this 
. 
Id 
= 
Id 
; 
} 	
} 
public 

class ;
/UpdatePauseDailyOperationSizingCommandValidator @
:A B
AbstractValidatorC T
<T U2
&UpdatePauseDailyOperationSizingCommandU {
>{ |
{ 
public ;
/UpdatePauseDailyOperationSizingCommandValidator >
(> ?
)? @
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
Details' .
). /
./ 0
SetValidator0 <
(< =
new= @A
5UpdatePauseDailyOperationSizingDetailCommandValidatorA v
(v w
)w x
)x y
;y z
} 	
} 
}   �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\Commands\UpdatePauseDailyOperationSizingDetailCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Sizing. 4
.4 5
Commands5 =
{		 
public

 

class

 8
,UpdatePauseDailyOperationSizingDetailCommand

 =
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% .
). /
]/ 0
public
"DailyOperationSizingHistoryCommand
History
{
get
;
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public -
!DailyOperationSizingCausesCommand 0
Causes1 7
{8 9
get: =
;= >
set? B
;B C
}D E
} 
public 

class A
5UpdatePauseDailyOperationSizingDetailCommandValidator F
:G H
AbstractValidatorI Z
<Z [9
,UpdatePauseDailyOperationSizingDetailCommand	[ �
>
� �
{ 
public A
5UpdatePauseDailyOperationSizingDetailCommandValidator D
(D E
)E F
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
History' .
). /
./ 0
SetValidator0 <
(< =
new= @7
+DailyOperationSizingHistoryCommandValidatorA l
(l m
)m n
)n o
;o p
RuleFor 
( 
command 
=> 
command &
.& '
Causes' -
)- .
.. /
SetValidator/ ;
(; <
new< ?6
*DailyOperationSizingCausesCommandValidator@ j
(j k
)k l
)l m
;m n
} 	
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\Commands\UpdateResumeDailyOperationSizingCommand.cs
	namespace		 	
Manufactures		
 
.		 
Domain		 
.		 
DailyOperations		 -
.		- .
Sizing		. 4
.		4 5
Commands		5 =
{

 
public 

class 3
'UpdateResumeDailyOperationSizingCommand 8
:9 :
ICommand; C
<C D(
DailyOperationSizingDocumentD `
>` a
{ 
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% .
). /
]/ 0
public 9
-UpdateResumeDailyOperationSizingDetailCommand <
Details= D
{E F
getG J
;J K
setL O
;O P
}Q R
public 
void 
SetId 
( 
Guid 
Id !
)! "
{ 	
this 
. 
Id 
= 
Id 
; 
} 	
} 
public 

class <
0UpdateResumeDailyOperationSizingCommandValidator A
:B C
AbstractValidatorD U
<U V3
'UpdateResumeDailyOperationSizingCommandV }
>} ~
{ 
public <
0UpdateResumeDailyOperationSizingCommandValidator ?
(? @
)@ A
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
Details' .
). /
./ 0
SetValidator0 <
(< =
new= @B
6UpdateResumeDailyOperationSizingDetailCommandValidatorA w
(w x
)x y
)y z
;z {
} 	
} 
}   �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\Commands\UpdateResumeDailyOperationSizingDetailCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Sizing. 4
.4 5
Commands5 =
{		 
public

 

class

 9
-UpdateResumeDailyOperationSizingDetailCommand

 >
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 9
)9 :
]: ;
public

OperatorId
OperatorDocumentId
{
get
;
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% .
). /
]/ 0
public .
"DailyOperationSizingHistoryCommand 1
History2 9
{: ;
get< ?
;? @
setA D
;D E
}F G
} 
public 

class B
6UpdateResumeDailyOperationSizingDetailCommandValidator G
:H I
AbstractValidatorJ [
<[ \:
-UpdateResumeDailyOperationSizingDetailCommand	\ �
>
� �
{ 
public B
6UpdateResumeDailyOperationSizingDetailCommandValidator E
(E F
)F G
{ 	
RuleFor 
( 
	validator 
=>  
	validator! *
.* +
OperatorDocumentId+ =
.= >
Value> C
)C D
.D E
NotEmptyE M
(M N
)N O
;O P
RuleFor 
( 
command 
=> 
command &
.& '
History' .
). /
./ 0
SetValidator0 <
(< =
new= @7
+DailyOperationSizingHistoryCommandValidatorA l
(l m
)m n
)n o
;o p
} 	
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\Commands\UpdateStartDailyOperationSizingCommand.cs
	namespace		 	
Manufactures		
 
.		 
Domain		 
.		 
DailyOperations		 -
.		- .
Sizing		. 4
.		4 5
Commands		5 =
{

 
public 

class 2
&UpdateStartDailyOperationSizingCommand 7
:8 9
ICommand: B
<B C(
DailyOperationSizingDocumentC _
>_ `
{ 
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% .
). /
]/ 0
public 8
,UpdateStartDailyOperationSizingDetailCommand ;
Details< C
{D E
getF I
;I J
setK N
;N O
}P Q
public 
void 
SetId 
( 
Guid 
Id !
)! "
{ 	
this 
. 
Id 
= 
Id 
; 
} 	
} 
public 

class 6
*AddNewDailyOperationSizingCommandValidator ;
:< =
AbstractValidator> O
<O P2
&UpdateStartDailyOperationSizingCommandP v
>v w
{ 
public 6
*AddNewDailyOperationSizingCommandValidator 9
(9 :
): ;
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
Details' .
). /
./ 0
SetValidator0 <
(< =
new= @A
5UpdateStartDailyOperationSizingDetailCommandValidatorA v
(v w
)w x
)x y
;y z
} 	
} 
}   �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\Commands\UpdateStartDailyOperationSizingDetailCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Sizing. 4
.4 5
Commands5 =
{		 
public

 

class

 8
,UpdateStartDailyOperationSizingDetailCommand

 =
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 6
)6 7
]7 8
public
ShiftId
ShiftDocumentId
{
get
;
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% .
). /
]/ 0
public .
"DailyOperationSizingHistoryCommand 1
History2 9
{: ;
get< ?
;? @
setA D
;D E
}F G
} 
public 

class A
5UpdateStartDailyOperationSizingDetailCommandValidator F
:G H
AbstractValidatorI Z
<Z [9
,UpdateStartDailyOperationSizingDetailCommand	[ �
>
� �
{ 
public A
5UpdateStartDailyOperationSizingDetailCommandValidator D
(D E
)E F
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
ShiftDocumentId' 6
.6 7
Value7 <
)< =
.= >
NotEmpty> F
(F G
)G H
;H I
RuleFor 
( 
command 
=> 
command &
.& '
History' .
). /
./ 0
SetValidator0 <
(< =
new= @7
+DailyOperationSizingHistoryCommandValidatorA l
(l m
)m n
)n o
;o p
} 	
} 
} �u
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\DailyOperationSizingDocument.cs
	namespace

 	
Manufactures


 
.

 
Domain

 
.

 
DailyOperations

 -
.

- .
Sizing

. 4
{ 
public 

class (
DailyOperationSizingDocument -
:. /

<= >(
DailyOperationSizingDocument> Z
,Z [)
DailyOperationSizingReadModel\ y
>y z
{
public 
	MachineId 
MachineDocumentId *
{+ ,
get- 0
;0 1
private2 9
set: =
;= >
}? @
public 
UnitId 

{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
public 
ConstructionId "
ConstructionDocumentId 4
{5 6
get7 :
;: ;
private< C
setD G
;G H
}I J
public 
string 

RecipeCode  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
string 
Counter 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
public 
string 
Weight 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 
string +
WarpingBeamCollectionDocumentId 5
{6 7
get8 ;
;; <
private= D
setE H
;H I
}J K
public 
int 
MachineSpeed 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
public 
double 
TexSQ 
{ 
get !
;! "
private# *
set+ .
;. /
}0 1
public 
double 
Visco 
{ 
get !
;! "
private# *
set+ .
;. /
}0 1
public 
int 
PIS 
{ 
get 
; 
private %
set& )
;) *
}+ ,
public 
double 
SPU 
{ 
get 
;  
private! (
set) ,
;, -
}. /
public 
BeamId  
SizingBeamDocumentId *
{+ ,
get- 0
;0 1
private2 9
set: =
;= >
}? @
public 
IReadOnlyCollection "
<" #&
DailyOperationSizingDetail# =
>= >'
DailyOperationSizingDetails? Z
{[ \
get] `
;` a
privateb i
setj m
;m n
}o p
public (
DailyOperationSizingDocument +
(+ ,
Guid, 0
id1 3
,3 4
	MachineId5 >
machineDocumentId? P
,P Q
UnitIdR X

,f g
ConstructionIdh v#
constructionDocumentId	w �
,
� �
string
� �

recipeCode
� �
,
� �4
&DailyOperationSizingCounterValueObject
� �
counter
� �
,
� �3
%DailyOperationSizingWeightValueObject
� �
weight
� �
,
� �
List
� �
<
� �
BeamId
� �
>
� �$
warpingBeamsDocumentId
� �
,
� �
int
� �
machineSpeed
� �
,
� �
double
� �
texSQ
� �
,
� �
double
� �
visco
� �
,
� �
int
� �
pis
� �
,
� �
double
� �
spu
� �
,
� �
BeamId
� �"
sizingBeamDocumentId
� �
)
� �
:
� �
base
� �
(
� �
id
� �
)
� �
{ 	
Identity 
= 
id 
; 
MachineDocumentId   
=   
machineDocumentId    1
;  1 2

=!! 

;!!) *"
ConstructionDocumentId"" "
=""# $"
constructionDocumentId""% ;
;""; <

RecipeCode## 
=## 

recipeCode## #
;### $
Counter$$ 
=$$ 
counter$$ 
.$$ 
	Serialize$$ '
($$' (
)$$( )
;$$) *
Weight%% 
=%% 
weight%% 
.%% 
	Serialize%% %
(%%% &
)%%& '
;%%' (+
WarpingBeamCollectionDocumentId&& +
=&&, -"
warpingBeamsDocumentId&&. D
.&&D E
	Serialize&&E N
(&&N O
)&&O P
;&&P Q
MachineSpeed'' 
='' 
machineSpeed'' '
;''' (
TexSQ(( 
=(( 
texSQ(( 
;(( 
Visco)) 
=)) 
visco)) 
;)) 
PIS** 
=** 
pis** 
;** 
SPU++ 
=++ 
spu++ 
;++  
SizingBeamDocumentId,,  
=,,! " 
sizingBeamDocumentId,,# 7
;,,7 8'
DailyOperationSizingDetails-- '
=--( )
new--* -
List--. 2
<--2 3&
DailyOperationSizingDetail--3 M
>--M N
(--N O
)--O P
;--P Q
this// 
.// 

(// 
)//  
;//  !
	ReadModel11 
=11 
new11 )
DailyOperationSizingReadModel11 9
(119 :
Identity11: B
)11B C
{22 
MachineDocumentId33 !
=33" #
this33$ (
.33( )
MachineDocumentId33) :
.33: ;
Value33; @
,33@ A

=44 
this44  $
.44$ %

.442 3
Value443 8
,448 9"
ConstructionDocumentId55 &
=55' (
this55) -
.55- ."
ConstructionDocumentId55. D
.55D E
Value55E J
,55J K

RecipeCode66 
=66 
this66 !
.66! "

RecipeCode66" ,
,66, -
Counter77 
=77 
this77 
.77 
Counter77 &
,77& '
Weight88 
=88 
this88 
.88 
Weight88 $
,88$ %+
WarpingBeamCollectionDocumentId99 /
=990 1
this992 6
.996 7+
WarpingBeamCollectionDocumentId997 V
,99V W
MachineSpeed:: 
=:: 
this:: #
.::# $
MachineSpeed::$ 0
,::0 1
TexSQ;; 
=;; 
this;; 
.;; 
TexSQ;; "
,;;" #
Visco<< 
=<< 
this<< 
.<< 
Visco<< "
,<<" #
PIS== 
=== 
this== 
.== 
PIS== 
,== 
SPU>> 
=>> 
this>> 
.>> 
SPU>> 
,>>  
SizingBeamDocumentId?? $
=??% &
this??' +
.??+ , 
SizingBeamDocumentId??, @
.??@ A
Value??A F
,??F G'
DailyOperationSizingDetails@@ +
=@@, -
this@@. 2
.@@2 3'
DailyOperationSizingDetails@@3 N
.@@N O
ToList@@O U
(@@U V
)@@V W
}AA 
;AA
}BB 	
publicCC (
DailyOperationSizingDocumentCC +
(CC+ ,)
DailyOperationSizingReadModelCC, I
	readModelCCJ S
)CCS T
:CCU V
baseCCW [
(CC[ \
	readModelCC\ e
)CCe f
{DD 	
thisEE 
.EE 
MachineDocumentIdEE "
=EE# $
	readModelEE% .
.EE. /
MachineDocumentIdEE/ @
.EE@ A
HasValueEEA I
?EEJ K
newEEL O
	MachineIdEEP Y
(EEY Z
	readModelEEZ c
.EEc d
MachineDocumentIdEEd u
.EEu v
ValueEEv {
)EE{ |
:EE} ~
null	EE �
;
EE� �
thisFF 
.FF 

=FF  
	readModelFF! *
.FF* +

.FF8 9
HasValueFF9 A
?FFB C
newFFD G
UnitIdFFH N
(FFN O
	readModelFFO X
.FFX Y

.FFf g
ValueFFg l
)FFl m
:FFn o
nullFFp t
;FFt u
thisGG 
.GG "
ConstructionDocumentIdGG '
=GG( )
	readModelGG* 3
.GG3 4"
ConstructionDocumentIdGG4 J
.GGJ K
HasValueGGK S
?GGT U
newGGV Y
ConstructionIdGGZ h
(GGh i
	readModelGGi r
.GGr s#
ConstructionDocumentId	GGs �
.
GG� �
Value
GG� �
)
GG� �
:
GG� �
null
GG� �
;
GG� �
thisHH 
.HH 

RecipeCodeHH 
=HH 
	readModelHH '
.HH' (

RecipeCodeHH( 2
;HH2 3
thisII 
.II 
CounterII 
=II 
	readModelII $
.II$ %
CounterII% ,
.II, -
	SerializeII- 6
(II6 7
)II7 8
;II8 9
thisJJ 
.JJ 
WeightJJ 
=JJ 
	readModelJJ #
.JJ# $
WeightJJ$ *
.JJ* +
	SerializeJJ+ 4
(JJ4 5
)JJ5 6
;JJ6 7
thisKK 
.KK +
WarpingBeamCollectionDocumentIdKK 0
=KK1 2
	readModelKK3 <
.KK< =+
WarpingBeamCollectionDocumentIdKK= \
.KK\ ]
	SerializeKK] f
(KKf g
)KKg h
;KKh i
thisLL 
.LL 
MachineSpeedLL 
=LL 
	readModelLL  )
.LL) *
MachineSpeedLL* 6
.LL6 7
HasValueLL7 ?
?LL@ A
	readModelLLB K
.LLK L
MachineSpeedLLL X
.LLX Y
ValueLLY ^
:LL_ `
$numLLa b
;LLb c
thisMM 
.MM 
TexSQMM 
=MM 
	readModelMM "
.MM" #
TexSQMM# (
.MM( )
HasValueMM) 1
?MM2 3
	readModelMM4 =
.MM= >
TexSQMM> C
.MMC D
ValueMMD I
:MMJ K
$numMML M
;MMM N
thisNN 
.NN 
ViscoNN 
=NN 
	readModelNN "
.NN" #
ViscoNN# (
.NN( )
HasValueNN) 1
?NN2 3
	readModelNN4 =
.NN= >
ViscoNN> C
.NNC D
ValueNND I
:NNJ K
$numNNL M
;NNM N
thisOO 
.OO 
PISOO 
=OO 
	readModelOO  
.OO  !
PISOO! $
.OO$ %
HasValueOO% -
?OO. /
	readModelOO0 9
.OO9 :
PISOO: =
.OO= >
ValueOO> C
:OOD E
$numOOF G
;OOG H
thisPP 
.PP 
SPUPP 
=PP 
	readModelPP  
.PP  !
SPUPP! $
.PP$ %
HasValuePP% -
?PP. /
	readModelPP0 9
.PP9 :
SPUPP: =
.PP= >
ValuePP> C
:PPD E
$numPPF G
;PPG H
thisQQ 
.QQ  
SizingBeamDocumentIdQQ %
=QQ& '
	readModelQQ( 1
.QQ1 2 
SizingBeamDocumentIdQQ2 F
.QQF G
HasValueQQG O
?QQP Q
newQQR U
BeamIdQQV \
(QQ\ ]
	readModelQQ] f
.QQf g 
SizingBeamDocumentIdQQg {
.QQ{ |
Value	QQ| �
)
QQ� �
:
QQ� �
null
QQ� �
;
QQ� �
thisRR 
.RR '
DailyOperationSizingDetailsRR ,
=RR- .
	readModelRR/ 8
.RR8 9'
DailyOperationSizingDetailsRR9 T
;RRT U
}SS 	
publicUU 
voidUU )
AddDailyOperationSizingDetailUU 1
(UU1 2&
DailyOperationSizingDetailUU2 L&
dailyOperationSizingDetailUUM g
)UUg h
{VV 	
varWW 
listWW 
=WW '
DailyOperationSizingDetailsWW 2
.WW2 3
ToListWW3 9
(WW9 :
)WW: ;
;WW; <
listXX 
.XX 
AddXX 
(XX &
dailyOperationSizingDetailXX /
)XX/ 0
;XX0 1'
DailyOperationSizingDetailsYY '
=YY( )
listYY* .
;YY. /
	ReadModelZZ 
.ZZ '
DailyOperationSizingDetailsZZ 1
=ZZ2 3'
DailyOperationSizingDetailsZZ4 O
.ZZO P
ToListZZP V
(ZZV W
)ZZW X
;ZZX Y
MarkModified\\ 
(\\ 
)\\ 
;\\ 
}]] 	
public__ 
void__ -
!RemoveDailyOperationMachineDetail__ 5
(__5 6
Guid__6 :
identity__; C
)__C D
{`` 	
varaa 
detailaa 
=aa '
DailyOperationSizingDetailsaa 4
.aa4 5
Whereaa5 :
(aa: ;
oaa; <
=>aa= ?
oaa@ A
.aaA B
IdentityaaB J
==aaK M
identityaaN V
)aaV W
.aaW X
FirstOrDefaultaaX f
(aaf g
)aag h
;aah i
varbb 
listbb 
=bb '
DailyOperationSizingDetailsbb 2
.bb2 3
ToListbb3 9
(bb9 :
)bb: ;
;bb; <
listdd 
.dd 
Removedd 
(dd 
detaildd 
)dd 
;dd  '
DailyOperationSizingDetailsee '
=ee( )
listee* .
;ee. /
	ReadModelff 
.ff '
DailyOperationSizingDetailsff 1
=ff2 3'
DailyOperationSizingDetailsff4 O
.ffO P
ToListffP V
(ffV W
)ffW X
;ffX Y
MarkModifiedhh 
(hh 
)hh 
;hh 
}ii 	
	protectedkk 
overridekk (
DailyOperationSizingDocumentkk 7
	GetEntitykk8 A
(kkA B
)kkB C
{ll 	
returnmm 
thismm 
;mm 
}nn 	
}oo 
}pp �'
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\Entities\DailyOperationSizingDetail.cs
	namespace		 	
Manufactures		
 
.		 
Domain		 
.		 
DailyOperations		 -
.		- .
Sizing		. 4
.		4 5
Entities		5 =
{

 
public 

class &
DailyOperationSizingDetail +
:, -

EntityBase. 8
<8 9&
DailyOperationSizingDetail9 S
>S T
{ 
public
Guid
ShiftDocumentId
{
get
;
private
set
;
}
public 
Guid 
OperatorDocumentId &
{' (
get) ,
;, -
private. 5
set6 9
;9 :
}; <
public 
string 
History 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
public 
string 
Causes 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 
Guid *
DailyOperationSizingDocumentId 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public )
DailyOperationSizingReadModel ,(
DailyOperationSizingDocument- I
{J K
getL O
;O P
setQ T
;T U
}V W
public &
DailyOperationSizingDetail )
() *
Guid* .
identity/ 7
)7 8
:9 :
base; ?
(? @
identity@ H
)H I
{ 	
} 	
public &
DailyOperationSizingDetail )
() *
Guid* .
identity/ 7
,7 8
ShiftId9 @
shiftDocumentIdA P
,P Q

OperatorIdR \
operatorDocumentId] o
,o p3
&DailyOperationSizingHistoryValueObject	q �
history
� �
,
� �3
%DailyOperationSizingCausesValueObject
� �
causes
� �
)
� �
:
� �
base
� �
(
� �
identity
� �
)
� �
{ 	
ShiftDocumentId 
= 
shiftDocumentId -
.- .
Value. 3
;3 4
OperatorDocumentId 
=  
operatorDocumentId! 3
.3 4
Value4 9
;9 :
History 
= 
history 
. 
	Serialize '
(' (
)( )
;) *
Causes 
= 
causes 
. 
	Serialize %
(% &
)& '
;' (
} 	
public!! 
void!! 

SetShiftId!! 
(!! 
ShiftId!! &
shiftDocumentId!!' 6
)!!6 7
{"" 	
ShiftDocumentId## 
=##  !
shiftDocumentId##" 1
.##1 2
Value##2 7
;##7 8
MarkModified$$ 
($$ 
)$$ 
;$$ 
}%% 	
public'' 
void'' !
SetOperatorDocumentId'' )
('') *

OperatorId''* 4
operatorDocumentId''5 G
)''G H
{(( 	
if)) 
()) 
!)) 
OperatorDocumentId)) #
.))# $
Equals))$ *
())* +
operatorDocumentId))+ =
.))= >
Value))> C
)))C D
)))D E
{** 
OperatorDocumentId++ "
=++# $
operatorDocumentId++% 7
.++7 8
Value++8 =
;++= >
MarkModified,, 
(,, 
),, 
;,, 
}-- 
}.. 	
public00 
void00 *
SetDailyOperationSizingHistory00 2
(002 32
&DailyOperationSizingHistoryValueObject003 Y'
dailyOperationSizingHistory00Z u
)00u v
{11 	
History22 
=22 '
dailyOperationSizingHistory22 1
.221 2
	Serialize222 ;
(22; <
)22< =
;22= >
MarkModified33 
(33 
)33 
;33 
}44 	
public66 
void66 
	SetCauses66 
(66 1
%DailyOperationSizingCausesValueObject66 C
causes66D J
)66J K
{77 	
Causes88 
=88 
causes88 
.88 
	Serialize88 %
(88% &
)88& '
;88' (
MarkModified99 
(99 
)99 
;99 
}:: 	
	protected<< 
override<< &
DailyOperationSizingDetail<< 5
	GetEntity<<6 ?
(<<? @
)<<@ A
{== 	
return>> 
this>> 
;>> 
}?? 	
}@@ 
}AA �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\ReadModels\DailyOperationSizingReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Sizing. 4
.4 5

ReadModels5 ?
{		 
public

 

class

 )
DailyOperationSizingReadModel

 .
:

/ 0


1 >
{ 
public )
DailyOperationSizingReadModel ,
(, -
Guid- 1
identity2 :
): ;
:< =
base> B
(B C
identityC K
)K L
{
} 	
public 
DateTimeOffset 
ProductionDate ,
{- .
get/ 2
;2 3
internal4 <
set= @
;@ A
}B C
public 
Guid 
? 
MachineDocumentId &
{' (
get) ,
;, -
internal. 6
set7 :
;: ;
}< =
public 
int 
? 

{" #
get$ '
;' (
internal) 1
set2 5
;5 6
}7 8
public 
Guid 
? "
ConstructionDocumentId +
{, -
get. 1
;1 2
internal3 ;
set< ?
;? @
}A B
public 
string 

RecipeCode  
{! "
get# &
;& '
internal( 0
set1 4
;4 5
}6 7
public 
string 
Counter 
{ 
get  #
;# $
internal% -
set. 1
;1 2
}3 4
public 
string 
Weight 
{ 
get "
;" #
internal$ ,
set- 0
;0 1
}2 3
public 
string +
WarpingBeamCollectionDocumentId 5
{6 7
get8 ;
;; <
internal= E
setF I
;I J
}K L
public 
int 
? 
MachineSpeed  
{! "
get# &
;& '
internal( 0
set1 4
;4 5
}6 7
public 
double 
? 
TexSQ 
{ 
get "
;" #
internal$ ,
set- 0
;0 1
}2 3
public 
double 
? 
Visco 
{ 
get "
;" #
internal$ ,
set- 0
;0 1
}2 3
public 
int 
? 
PIS 
{ 
get 
; 
internal '
set( +
;+ ,
}- .
public 
double 
? 
SPU 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
public 
Guid 
?  
SizingBeamDocumentId )
{* +
get, /
;/ 0
internal1 9
set: =
;= >
}? @
public 
List 
< &
DailyOperationSizingDetail .
>. /'
DailyOperationSizingDetails0 K
{L M
getN Q
;Q R
internalS [
set\ _
;_ `
}a b
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\Repositories\IDailyOperationSizingRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Sizing. 4
.4 5
Repositories5 A
{ 
public 

	interface +
IDailyOperationSizingRepository 4
:5 6 
IAggregateRepository7 K
<K L(
DailyOperationSizingDocumentL h
,h i*
DailyOperationSizingReadModel	j �
>
� �
{ 
} 
}		 �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\ValueObjects\DailyOperationSizingCausesValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Sizing. 4
.4 5
ValueObjects5 A
{		 
public

 

class

 1
%DailyOperationSizingCausesValueObject

 6
:

7 8
ValueObject

9 D
{ 
public 
string 

BrokenBeam  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
MachineTroubled %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 1
%DailyOperationSizingCausesValueObject 4
(4 5
string5 ;

brokenBeam< F
,F G
stringH N
machineTroubledO ^
)^ _
{ 	

BrokenBeam 
= 

brokenBeam #
;# $
MachineTroubled 
= 
machineTroubled -
;- .
} 	
public 1
%DailyOperationSizingCausesValueObject 4
(4 5-
!DailyOperationSizingCausesCommand5 V0
$dailyOperationSizingCausesProductionW {
){ |
{ 	

BrokenBeam 
= 0
$dailyOperationSizingCausesProduction =
.= >

BrokenBeam> H
;H I
MachineTroubled 
= 0
$dailyOperationSizingCausesProduction B
.B C
MachineTroubledC R
;R S
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 

BrokenBeam #
;# $
yield 
return 
MachineTroubled (
;( )
}   	
}!! 
}"" �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\ValueObjects\DailyOperationSizingCounterValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Sizing. 4
.4 5
ValueObjects5 A
{ 
public 

class 2
&DailyOperationSizingCounterValueObject 7
:8 9
ValueObject: E
{ 
public		 
string		 
Start		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
string

 
Finish

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 2
&DailyOperationSizingCounterValueObject 5
(5 6
string6 <
start= B
,B C
stringD J
finishK Q
)Q R
{
Start 
= 
start 
; 
Finish 
= 
finish 
; 
} 	
public 2
&DailyOperationSizingCounterValueObject 5
(5 6.
"DailyOperationSizingCounterCommand6 X1
%dailyOperationSizingCounterProductionY ~
)~ 
{ 	
Start 
= 1
%dailyOperationSizingCounterProduction 9
.9 :
Start: ?
;? @
Finish 
= 1
%dailyOperationSizingCounterProduction :
.: ;
Finish; A
;A B
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
Start 
; 
yield 
return 
Finish 
;  
} 	
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\ValueObjects\DailyOperationSizingHistoryValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Sizing. 4
.4 5
ValueObjects5 A
{ 
public 

class 2
&DailyOperationSizingHistoryValueObject 7
:8 9
ValueObject: E
{		 
public

 
DateTimeOffset

 


 +
{

, -
get

. 1
;

1 2
private

3 :
set

; >
;

> ?
}

@ A
public 
string 

{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
public 
string 
Information !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 2
&DailyOperationSizingHistoryValueObject 5
(5 6
)6 7
{8 9
}: ;
public 2
&DailyOperationSizingHistoryValueObject 5
(5 6
DateTimeOffset6 D

,R S
string) /

,= >
string) /
information0 ;
); <
{ 	

= 

;) *

= 

;) *
Information 
= 
information %
;% &
} 	
public 
void 
SetTimeOnMachine $
($ %
DateTimeOffset% 3
value4 9
)9 :
{ 	

= 
value !
;! "
} 	
public 
void 
SetMachineStatus $
($ %
string% +
value, 1
)1 2
{ 	

=   
value   !
;  ! "
}!! 	
public## 
void## 
SetInformation## "
(##" #
string### )
value##* /
)##/ 0
{$$ 	
Information%% 
=%% 
value%% 
;%%  
}&& 	
	protected(( 
override(( 
IEnumerable(( &
<((& '
object((' -
>((- .
GetAtomicValues((/ >
(((> ?
)((? @
{)) 	
yield** 
return** 

;**& '
yield++ 
return++ 

;++& '
yield,, 
return,, 
Information,, $
;,,$ %
}-- 	
}.. 
}// �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\DailyOperations\Sizing\ValueObjects\DailyOperationSizingWeightValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
DailyOperations -
.- .
Sizing. 4
.4 5
ValueObjects5 A
{ 
public 

class 1
%DailyOperationSizingWeightValueObject 6
:7 8
ValueObject9 D
{ 
public		 
string		 
Netto		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public 
string 
Bruto 
{ 
get !
;! "
set# &
;& '
}( )
public
%DailyOperationSizingWeightValueObject
(
string
netto
,
string
bruto
)
{ 	
Netto 
= 
netto 
; 
Bruto 
= 
bruto 
; 
} 	
public 1
%DailyOperationSizingWeightValueObject 4
(4 5-
!DailyOperationSizingWeightCommand5 V0
$dailyOperationSizingWeightProductionW {
){ |
{ 	
Netto 
= 0
$dailyOperationSizingWeightProduction 8
.8 9
Netto9 >
;> ?
Bruto 
= 0
$dailyOperationSizingWeightProduction 8
.8 9
Bruto9 >
;> ?
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
Netto 
; 
yield 
return 
Bruto 
; 
} 	
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Estimations\Productions\Commands\AddNewEstimationCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Estimations )
.) *
Productions* 5
.5 6
Commands6 >
{		 
public

 

class

 #
AddNewEstimationCommand

 (
:

) *
ICommand

+ 3
<

3 4'
EstimatedProductionDocument

4 O
>

O P
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public
Period
Period
{
get
;
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public 
WeavingUnit 
Unit 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 9
)9 :
]: ;
public 
List 
< (
EstimationProductValueObject 0
>0 1
EstimationProducts2 D
{E F
getG J
;J K
setL O
;O P
}Q R
} 
public 

class ,
 AddNewEstimationCommandValidator 1
:2 3
AbstractValidator4 E
<E F#
AddNewEstimationCommandF ]
>] ^
{ 
public ,
 AddNewEstimationCommandValidator /
(/ 0
)0 1
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
Period' -
)- .
.. /
NotEmpty/ 7
(7 8
)8 9
;9 :
RuleFor 
( 
command 
=> 
command &
.& '
Unit' +
)+ ,
., -
NotEmpty- 5
(5 6
)6 7
;7 8
} 	
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Estimations\Productions\Commands\RemoveEstimationProductCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Estimations )
.) *
Productions* 5
.5 6
Commands6 >
{ 
public 

class *
RemoveEstimationProductCommand /
:0 1
ICommand2 :
<: ;'
EstimatedProductionDocument; V
>V W
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% )
)		) *
]		* +
public

 
Guid

 
Id

 
{

 
get

 
;

 
private

 %
set

& )
;

) *
}

+ ,
public 
void 
SetId 
( 
Guid 
Id !
)! "
{
this 
. 
Id 
= 
Id 
; 
} 	
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Estimations\Productions\Commands\UpdateEstimationProductCommand.cs
	namespace		 	
Manufactures		
 
.		 
Domain		 
.		 
Estimations		 )
.		) *
Productions		* 5
.		5 6
Commands		6 >
{

 
public 

class *
UpdateEstimationProductCommand /
:0 1
ICommand2 :
<: ;'
EstimatedProductionDocument; V
>V W
{ 
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
Guid 
Id 
{ 
get 
; 
private %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public 
Period 
Period 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public 
WeavingUnit 
Unit 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 9
)9 :
]: ;
public 
List 
< (
EstimationProductValueObject 0
>0 1
EstimationProducts2 D
{E F
getG J
;J K
setL O
;O P
}Q R
public 
void 
SetId 
( 
Guid 
Id !
)! "
{ 	
this 
. 
Id 
= 
Id 
; 
} 	
} 
public 

class 3
'UpdateEstimationProductCommandValidator 8
:9 :
AbstractValidator; L
<L M*
UpdateEstimationProductCommandM k
>k l
{   
public!! 3
'UpdateEstimationProductCommandValidator!! 6
(!!6 7
)!!7 8
{"" 	
RuleFor## 
(## 
command## 
=>## 
command## &
.##& '
Period##' -
)##- .
.##. /
NotEmpty##/ 7
(##7 8
)##8 9
;##9 :
RuleFor$$ 
($$ 
command$$ 
=>$$ 
command$$ &
.$$& '
Unit$$' +
)$$+ ,
.$$, -
NotEmpty$$- 5
($$5 6
)$$6 7
;$$7 8
}%% 	
}&& 
}'' �
D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Estimations\Productions\Entities\EstimationProduct.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Estimations )
.) *
Productions* 5
.5 6
Entities6 >
{ 
public		 

class		 
EstimationProduct		 "
:		# $

EntityBase		% /
<		/ 0
EstimationProduct		0 A
>		A B
{

 
public 
string 

{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
public 
double 
TotalGramEstimation )
{* +
get, /
;/ 0
private1 8
set9 <
;< =
}> ?
public
string
ProductGrade
{
get
;
private
set
;
}
public 
Guid )
EstimatedProductionDocumentId 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 0
$EstimatedProductionDocumentReadModel 3'
EstimatedProductionDocument4 O
{P Q
getR U
;U V
setW Z
;Z [
}\ ]
public 
EstimationProduct  
(  !
Guid! %
identity& .
). /
:0 1
base2 6
(6 7
identity7 ?
)? @
{ 	
} 	
public 
EstimationProduct  
(  !
Guid! %
identity& .
,. /$
OrderDocumentValueObject! 9

,G H
ProductGrade! -
productGrade. :
,: ;
double! '
totalGramEstimation( ;
); <
:= >
base? C
(C D
identityD L
)L M
{ 	
Identity 
= 
identity 
;  

= 

.) *
	Serialize* 3
(3 4
)4 5
;5 6
ProductGrade 
= 
productGrade '
.' (
	Serialize( 1
(1 2
)2 3
;3 4
TotalGramEstimation 
=  !
totalGramEstimation" 5
;5 6
} 	
public!! 
void!! 
SetProductGrade!! #
(!!# $
ProductGrade!!$ 0
productGrade!!1 =
)!!= >
{"" 	
	Validator## 
.## 
ThrowIfNull## !
(##! "
(##" #
)### $
=>##% '
productGrade##( 4
)##4 5
;##5 6
ProductGrade%% 
=%% 
productGrade%% '
.%%' (
	Serialize%%( 1
(%%1 2
)%%2 3
;%%3 4
MarkModified'' 
('' 
)'' 
;'' 
}(( 	
public)) 
void)) "
SetTotalGramEstimation)) *
())* +
double))+ 1
value))2 7
)))7 8
{** 	
if++ 
(++ 
TotalGramEstimation++ #
!=++$ &
value++' ,
)++, -
{,, 
TotalGramEstimation-- #
=--$ %
value--& +
;--+ ,
MarkModified// 
(// 
)// 
;// 
}00 
}11 	
	protected33 
override33 
EstimationProduct33 ,
	GetEntity33- 6
(336 7
)337 8
{44 	
return55 
this55 
;55 
}66 	
}77 
}88 �9
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Estimations\Productions\EstimatedProductionDocument.cs
	namespace
Manufactures
 
.
Domain
.
Estimations
.
Productions
{ 
public 

class '
EstimatedProductionDocument ,
:- .

<< ='
EstimatedProductionDocument= X
,X Y0
$EstimatedProductionDocumentReadModelZ ~
>~ 
{ 
public 
string 
EstimatedNumber %
{& '
get( +
;+ ,
private- 4
set5 8
;8 9
}: ;
public 
Period 
Period 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 
UnitId 
UnitId 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 
DateTimeOffset 
Date "
{# $
get% (
;( )
private* 1
set2 5
;5 6
}7 8
public 
IReadOnlyCollection "
<" #
EstimationProduct# 4
>4 5
EstimationProducts6 H
{I J
getK N
;N O
privateP W
setX [
;[ \
}] ^
public '
EstimatedProductionDocument *
(* +
Guid+ /
id0 2
,2 3
string+ 1
estimatedNumber2 A
,A B
Period+ 1
period2 8
,8 9
UnitId+ 1
unitId2 8
)8 9
:: ;
base< @
(@ A
idA C
)C D
{ 	
Identity 
= 
id 
; 
EstimatedNumber 
= 
estimatedNumber -
;- .
Period 
= 
period 
; 
UnitId 
= 
unitId 
; 
EstimationProducts   
=    
new  ! $
List  % )
<  ) *
EstimationProduct  * ;
>  ; <
(  < =
)  = >
;  > ?
this"" 
."" 

("" 
)""  
;""  !
	ReadModel$$ 
=$$ 
new$$ 0
$EstimatedProductionDocumentReadModel$$ @
($$@ A
Identity$$A I
)$$I J
{%% 
EstimatedNumber&& 
=&&  !
this&&" &
.&&& '
EstimatedNumber&&' 6
,&&6 7
Period'' 
='' 
this'' 
.'' 
Period'' $
.''$ %
	Serialize''% .
(''. /
)''/ 0
,''0 1
UnitId(( 
=(( 
this(( 
.(( 
UnitId(( $
.(($ %
Value((% *
,((* +
EstimationProducts)) "
=))# $
this))% )
.))) *
EstimationProducts))* <
.))< =
ToList))= C
())C D
)))D E
}** 
;**
	ReadModel,, 
.,, 
AddDomainEvent,, $
(,,$ %
new,,% (
OnAddEstimation,,) 8
(,,8 9
Identity,,9 A
),,A B
),,B C
;,,C D
}-- 	
public// '
EstimatedProductionDocument// *
(//* +0
$EstimatedProductionDocumentReadModel//+ O
	readModel//P Y
)//Y Z
://[ \
base//] a
(//a b
	readModel//b k
)//k l
{00 	
this11 
.11 
EstimatedNumber11  
=11! "
	readModel11# ,
.11, -
EstimatedNumber11- <
;11< =
this22 
.22 
Period22 
=22 
	readModel22 #
.22# $
Period22$ *
.22* +
Deserialize22+ 6
<226 7
Period227 =
>22= >
(22> ?
)22? @
;22@ A
this33 
.33 
UnitId33 
=33 
	readModel33 #
.33# $
UnitId33$ *
.33* +
HasValue33+ 3
?334 5
new336 9
UnitId33: @
(33@ A
	readModel33A J
.33J K
UnitId33K Q
.33Q R
Value33R W
)33W X
:33Y Z
null33[ _
;33_ `
this44 
.44 
EstimationProducts44 #
=44$ %
	readModel44& /
.44/ 0
EstimationProducts440 B
;44B C
this55 
.55 
Date55 
=55 
	readModel55 !
.55! "
CreatedDate55" -
;55- .
}66 	
public88 
void88  
AddEstimationProduct88 (
(88( )
EstimationProduct88) :
estimationProduct88; L
)88L M
{99 	
if:: 
(:: 
!:: 
EstimationProducts:: #
.::# $
Any::$ '
(::' (
product::( /
=>::0 2
product::3 :
.::: ;

.::H I
Deserialize::I T
<::T U$
OrderDocumentValueObject::U m
>::m n
(::n o
)::o p
.::p q
OrderNumber::q |
.;;: ;
Equals;;; A
(;;A B
estimationProduct;;B S
.;;S T

.<<S T
Deserialize<<T _
<<<_ `$
OrderDocumentValueObject<<` x
><<x y
(<<y z
)<<z {
.==S T
OrderNumber==T _
)==_ `
)==` a
)==a b
{>> 
var?? 
list?? 
=?? 
EstimationProducts?? -
.??- .
ToList??. 4
(??4 5
)??5 6
;??6 7
list@@ 
.@@ 
Add@@ 
(@@ 
estimationProduct@@ *
)@@* +
;@@+ ,
EstimationProductsAA "
=AA# $
listAA% )
;AA) *
	ReadModelBB 
.BB 
EstimationProductsBB ,
=BB- .
EstimationProductsBB/ A
.BBA B
ToListBBB H
(BBH I
)BBI J
;BBJ K
MarkModifiedDD 
(DD 
)DD 
;DD 
}EE 
elseFF 
{GG 
	ValidatorHH 
.HH 
ErrorValidationHH )
(HH) *
(HH* +
$strHH+ S
,HHS T
estimationProductHHU f
.HHf g

.IIf g
DeserializeIIg r
<IIr s%
OrderDocumentValueObject	IIs �
>
II� �
(
II� �
)
II� �
.JJf g
OrderNumberJJg r
+JJs t
$str	JJu �
)
JJ� �
)
JJ� �
;
JJ� �
}KK 
}LL 	
	protectedNN 
overrideNN '
EstimatedProductionDocumentNN 6
	GetEntityNN7 @
(NN@ A
)NNA B
{OO 	
returnPP 
thisPP 
;PP 
}QQ 	
}RR 
}SS �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Estimations\Productions\ReadModels\EstimatedProductionDocumentReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Estimations )
.) *
Productions* 5
.5 6

ReadModels6 @
{ 
public 

class 0
$EstimatedProductionDocumentReadModel 5
:6 7

{		 
public

 0
$EstimatedProductionDocumentReadModel

 3
(

3 4
Guid

4 8
identity

9 A
)

A B
:

C D
base

E I
(

I J
identity

J R
)

R S
{ 	
} 	
public
string
EstimatedNumber
{
get
;
internal
set
;
}
public 
string 
Period 
{ 
get "
;" #
internal$ ,
set- 0
;0 1
}2 3
public 
int 
? 
UnitId 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
public 
List 
< 
EstimationProduct %
>% &
EstimationProducts' 9
{: ;
get< ?
;? @
internalA I
setJ M
;M N
}O P
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Estimations\Productions\Repositories\IEstimationProductRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Estimations )
.) *
Productions* 5
.5 6
Repositories6 B
{ 
public 

	interface (
IEstimationProductRepository 1
:2 3 
IAggregateRepository4 H
<H I'
EstimatedProductionDocumentI d
,d e1
$EstimatedProductionDocumentReadModel	f �
>
� �
{ 
Task		 
<		 
string		
>		 
GetEstimationNumber		 (
(		( )
)		) *
;		* +
}

 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Estimations\Productions\ValueObjects\ConstructionDocument.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Estimations )
.) *
Productions* 5
.5 6
ValueObjects6 B
{ 
public 

class  
ConstructionDocument %
:& '
ValueObject( 3
{ 
public		 
Guid		 
Identity		 
{		 
get		 "
;		" #
private		$ +
set		, /
;		/ 0
}		1 2
public

 
string

 
ConstructionNumber

 (
{

) *
get

+ .
;

. /
private

0 7
set

8 ;
;

; <
}

= >
public 
double 
	TotalYarn 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
public
ConstructionDocument
(
Guid
identity
,
string$ *
constructionNumber+ =
,= >
double$ *
	totalYarn+ 4
)4 5
{ 	
Identity 
= 
identity 
;  
ConstructionNumber 
=  
constructionNumber! 3
;3 4
	TotalYarn 
= 
	totalYarn !
;! "
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
Identity !
;! "
yield 
return 
ConstructionNumber +
;+ ,
yield 
return 
	TotalYarn "
;" #
} 	
} 
} �0
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Estimations\Productions\ValueObjects\EstimationProductValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Estimations )
.) *
Productions* 5
.5 6
ValueObjects6 B
{ 
public 

class (
EstimationProductValueObject -
:. /
ValueObject0 ;
{		 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 9
)9 :
]: ;
public 
string 
ConstructionNumber (
{) *
get+ .
;. /
private0 7
set8 ;
;; <
}= >
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 0
)0 1
]1 2
public 
double 
	TotalYarn 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 2
)2 3
]3 4
public 
DateTimeOffset 
DateOrdered )
{* +
get, /
;/ 0
private1 8
set9 <
;< =
}> ?
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 2
)2 3
]3 4
public 
string 
OrderNumber !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 
int 

WholeGrade 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% :
): ;
]; <
public 
double 
TotalGramEstimation )
{* +
get, /
;/ 0
private1 8
set9 <
;< =
}> ?
[   	
JsonProperty  	 
(   
PropertyName   "
=  # $
$str  % -
)  - .
]  . /
public!! 
int!! 
GradeA!! 
{!! 
get!! 
;!!  
private!!! (
set!!) ,
;!!, -
}!!. /
[## 	
JsonProperty##	 
(## 
PropertyName## "
=### $
$str##% -
)##- .
]##. /
public$$ 
int$$ 
GradeB$$ 
{$$ 
get$$ 
;$$  
private$$! (
set$$) ,
;$$, -
}$$. /
[&& 	
JsonProperty&&	 
(&& 
PropertyName&& "
=&&# $
$str&&% -
)&&- .
]&&. /
public'' 
int'' 
GradeC'' 
{'' 
get'' 
;''  
private''! (
set'') ,
;'', -
}''. /
[)) 	
JsonProperty))	 
()) 
PropertyName)) "
=))# $
$str))% -
)))- .
])). /
public** 
int** 
GradeD** 
{** 
get** 
;**  
private**! (
set**) ,
;**, -
}**. /
public,, (
EstimationProductValueObject,, +
(,,+ ,
string,,, 2
constructionNumber,,3 E
,,,E F
double--, 2
	totalYarn--3 <
,--< =
DateTimeOffset.., :
dateOrdered..; F
,..F G
string//, 2
orderNumber//3 >
,//> ?
int00, /

wholeGrade000 :
,00: ;
double11, 2
totalGramEstimation113 F
,11F G
int22, /
gradeA220 6
,226 7
int33, /
gradeB330 6
,336 7
int44, /
gradeC440 6
,446 7
int55, /
gradeD550 6
)556 7
{66 	
ConstructionNumber77 
=77  
constructionNumber77! 3
;773 4
	TotalYarn88 
=88 
	totalYarn88 !
;88! "
DateOrdered99 
=99 
dateOrdered99 %
;99% &
OrderNumber:: 
=:: 
orderNumber:: %
;::% &

WholeGrade;; 
=;; 

wholeGrade;; #
;;;# $
TotalGramEstimation<< 
=<<  !
totalGramEstimation<<" 5
;<<5 6
GradeA== 
=== 
gradeA== 
;== 
GradeB>> 
=>> 
gradeB>> 
;>> 
GradeC?? 
=?? 
gradeC?? 
;?? 
GradeD@@ 
=@@ 
gradeD@@ 
;@@ 
}AA 	
	protectedCC 
overrideCC 
IEnumerableCC &
<CC& '
objectCC' -
>CC- .
GetAtomicValuesCC/ >
(CC> ?
)CC? @
{DD 	
yieldEE 
returnEE 
DateOrderedEE $
;EE$ %
yieldFF 
returnFF 
OrderNumberFF $
;FF$ %
yieldGG 
returnGG 
ConstructionNumberGG +
;GG+ ,
yieldHH 
returnHH 
TotalGramEstimationHH ,
;HH, -
yieldII 
returnII 
	TotalYarnII "
;II" #
yieldJJ 
returnJJ 

WholeGradeJJ #
;JJ# $
yieldKK 
returnKK 
GradeAKK 
;KK  
yieldLL 
returnLL 
GradeBLL 
;LL  
yieldMM 
returnMM 
GradeCMM 
;MM  
yieldNN 
returnNN 
GradeDNN 
;NN  
}OO 	
}PP 
}QQ �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Estimations\Productions\ValueObjects\OrderDocumentValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Estimations )
.) *
Productions* 5
.5 6
ValueObjects6 B
{ 
public 

class $
OrderDocumentValueObject )
:* +
ValueObject, 7
{ 
public		 $
OrderDocumentValueObject		 '
(		' (
Guid		( ,
identity		- 5
,		5 6
string

 #
orderNumber

$ /
,

/ 0
int  
allGrade! )
,) * 
ConstructionDocument 1
construction2 >
,> ?
DateTimeOffset
dateOrdered
)
{ 	
Identity 
= 
identity 
;  
OrderNumber 
= 
orderNumber %
;% &
AllGrade 
= 
allGrade 
;  
Construction 
= 
construction '
;' (
DateOrdered 
= 
dateOrdered %
;% &
} 	
public 
Guid 
Identity 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 
string 
OrderNumber !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
int 
AllGrade 
{ 
get !
;! "
private# *
set+ .
;. /
}0 1
public  
ConstructionDocument #
Construction$ 0
{1 2
get3 6
;6 7
private8 ?
set@ C
;C D
}E F
public 
DateTimeOffset 
DateOrdered )
{* +
get, /
;/ 0
private1 8
set9 <
;< =
}> ?
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
Identity !
;! "
yield 
return 
OrderNumber $
;$ %
yield   
return   
AllGrade   !
;  ! "
yield!! 
return!! 
Construction!! %
;!!% &
yield"" 
return"" 
DateOrdered"" $
;""$ %
}## 	
}$$ 
}%% �
~D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Estimations\Productions\ValueObjects\ProductGrade.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Estimations )
.) *
Productions* 5
.5 6
ValueObjects6 B
{ 
public 

class 
ProductGrade 
: 
ValueObject  +
{		 
public

 
ProductGrade

 
(

 
int

 
gradeA

  &
,

& '
int

( +
gradeB

, 2
,

2 3
int

4 7
gradeC

8 >
,

> ?
int

@ C
gradeD

D J
)

J K
{ 	
GradeA 
= 
gradeA 
; 
GradeB
=
gradeB
;
GradeC 
= 
gradeC 
; 
GradeD 
= 
GradeD 
; 
} 	
public 
int 
GradeA 
{ 
get 
;  
private! (
set) ,
;, -
}. /
public 
int 
GradeB 
{ 
get 
;  
private! (
set) ,
;, -
}. /
public 
int 
GradeC 
{ 
get 
;  
private! (
set) ,
;, -
}. /
public 
int 
GradeD 
{ 
get 
;  
private! (
set) ,
;, -
}. /
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
GradeA 
;  
yield 
return 
GradeB 
;  
yield 
return 
GradeC 
;  
yield 
return 
GradeD 
;  
} 	
} 
} �0
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\FabricConstructions\Commands\AddFabricConstructionCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
FabricConstructions 1
.1 2
Commands2 :
{ 
public		 

class		 (
AddFabricConstructionCommand		 -
:		. /
ICommand		0 8
<		8 9&
FabricConstructionDocument		9 S
>		S T
{

 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 9
)9 :
]: ;
public 
string 
ConstructionNumber (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 3
)3 4
]4 5
public 
int 
AmountOfWarp 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 3
)3 4
]4 5
public 
int 
AmountOfWeft 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% ,
), -
]- .
public 
int 
Width 
{ 
get 
; 
set  #
;# $
}% &
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 0
)0 1
]1 2
public 
string 
	WovenType 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 3
)3 4
]4 5
public 
string 
WarpTypeForm "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 3
)3 4
]4 5
public 
string 
WeftTypeForm "
{# $
get% (
;( )
set* -
;- .
}/ 0
[   	
JsonProperty  	 
(   
PropertyName   "
=  # $
$str  % 0
)  0 1
]  1 2
public!! 
double!! 
	TotalYarn!! 
{!!  !
get!!" %
;!!% &
set!!' *
;!!* +
}!!, -
[## 	
JsonProperty##	 
(## 
PropertyName## "
=### $
$str##% 7
)##7 8
]##8 9
public$$ 
string$$ 
MaterialTypeName$$ &
{$$' (
get$$) ,
;$$, -
set$$. 1
;$$1 2
}$$3 4
[&& 	
JsonProperty&&	 
(&& 
PropertyName&& "
=&&# $
$str&&% 0
)&&0 1
]&&1 2
public'' 
List'' 
<'' 
ConstructionDetail'' &
>''& '
	ItemsWarp''( 1
{''2 3
get''4 7
;''7 8
set''9 <
;''< =
}''> ?
[)) 	
JsonProperty))	 
()) 
PropertyName)) "
=))# $
$str))% 0
)))0 1
]))1 2
public** 
List** 
<** 
ConstructionDetail** &
>**& '
	ItemsWeft**( 1
{**2 3
get**4 7
;**7 8
set**9 <
;**< =
}**> ?
}++ 
public-- 

class-- -
!PlaceConstructionCommandValidator-- 2
:--3 4
AbstractValidator--5 F
<--F G(
AddFabricConstructionCommand--G c
>--c d
{.. 
public// -
!PlaceConstructionCommandValidator// 0
(//0 1
)//1 2
{00 	
RuleFor11 
(11 
command11 
=>11 
command11 &
.11& '
ConstructionNumber11' 9
)119 :
.11: ;
NotEmpty11; C
(11C D
)11D E
;11E F
RuleFor22 
(22 
command22 
=>22 
command22 &
.22& '
AmountOfWarp22' 3
)223 4
.224 5
NotEmpty225 =
(22= >
)22> ?
;22? @
RuleFor33 
(33 
command33 
=>33 
command33 &
.33& '
AmountOfWeft33' 3
)333 4
.334 5
NotEmpty335 =
(33= >
)33> ?
;33? @
RuleFor44 
(44 
command44 
=>44 
command44 &
.44& '
Width44' ,
)44, -
.44- .
NotEmpty44. 6
(446 7
)447 8
;448 9
RuleFor55 
(55 
command55 
=>55 
command55 &
.55& '
WarpTypeForm55' 3
)553 4
.554 5
NotEmpty555 =
(55= >
)55> ?
;55? @
RuleFor66 
(66 
command66 
=>66 
command66 &
.66& '
WeftTypeForm66' 3
)663 4
.664 5
NotEmpty665 =
(66= >
)66> ?
;66? @
RuleFor77 
(77 
command77 
=>77 
command77 &
.77& '
	TotalYarn77' 0
)770 1
.771 2
NotEmpty772 :
(77: ;
)77; <
;77< =
RuleFor88 
(88 
command88 
=>88 
command88 &
.88& '
MaterialTypeName88' 7
)887 8
.888 9
NotEmpty889 A
(88A B
)88B C
;88C D
}99 	
}:: 
};; �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\FabricConstructions\Commands\RemoveFabricConstructionCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
FabricConstructions 1
.1 2
Commands2 :
{ 
public 

class +
RemoveFabricConstructionCommand 0
:1 2
ICommand3 ;
<; <&
FabricConstructionDocument< V
>V W
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% )
)		) *
]		* +
public

 
Guid

 
Id

 
{

 
get

 
;

 
private

 %
set

& )
;

) *
}

+ ,
public 
void 
SetId 
( 
Guid 
Id !
)! "
{
this 
. 
Id 
= 
Id 
; 
} 	
} 
} �5
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\FabricConstructions\Commands\UpdateFabricConstructionCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
FabricConstructions 1
.1 2
Commands2 :
{		 
public

 

class

 +
UpdateFabricConstructionCommand

 0
:

1 2
ICommand

3 ;
<

; <&
FabricConstructionDocument

< V
>

V W
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% )
)) *
]* +
public
Guid
Id
{
get
;
private
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 9
)9 :
]: ;
public 
string 
ConstructionNumber (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 3
)3 4
]4 5
public 
int 
AmountOfWarp 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 3
)3 4
]4 5
public 
int 
AmountOfWeft 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% ,
), -
]- .
public 
int 
Width 
{ 
get 
; 
set  #
;# $
}% &
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 0
)0 1
]1 2
public 
string 
	WovenType 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 3
)3 4
]4 5
public 
string 
WarpTypeForm "
{# $
get% (
;( )
set* -
;- .
}/ 0
[!! 	
JsonProperty!!	 
(!! 
PropertyName!! "
=!!# $
$str!!% 3
)!!3 4
]!!4 5
public"" 
string"" 
WeftTypeForm"" "
{""# $
get""% (
;""( )
set""* -
;""- .
}""/ 0
[$$ 	
JsonProperty$$	 
($$ 
PropertyName$$ "
=$$# $
$str$$% 0
)$$0 1
]$$1 2
public%% 
double%% 
	TotalYarn%% 
{%%  !
get%%" %
;%%% &
set%%' *
;%%* +
}%%, -
['' 	
JsonProperty''	 
('' 
PropertyName'' "
=''# $
$str''% 7
)''7 8
]''8 9
public(( 
string(( 
MaterialTypeName(( &
{((' (
get(() ,
;((, -
set((. 1
;((1 2
}((3 4
[** 	
JsonProperty**	 
(** 
PropertyName** "
=**# $
$str**% 0
)**0 1
]**1 2
public++ 
List++ 
<++ 
ConstructionDetail++ &
>++& '
	ItemsWarp++( 1
{++2 3
get++4 7
;++7 8
set++9 <
;++< =
}++> ?
[-- 	
JsonProperty--	 
(-- 
PropertyName-- "
=--# $
$str--% 0
)--0 1
]--1 2
public.. 
List.. 
<.. 
ConstructionDetail.. &
>..& '
	ItemsWeft..( 1
{..2 3
get..4 7
;..7 8
set..9 <
;..< =
}..> ?
public00 
void00 
SetId00 
(00 
Guid00 
Id00 !
)00! "
{11 	
this22 
.22 
Id22 
=22 
Id22 
;22 
}33 	
}44 
public66 

class66 .
"UpdateConstructionCommandValidator66 3
:664 5
AbstractValidator666 G
<66G H+
UpdateFabricConstructionCommand66H g
>66g h
{77 
public88 .
"UpdateConstructionCommandValidator88 1
(881 2
)882 3
{99 	
RuleFor:: 
(:: 
command:: 
=>:: 
command:: &
.::& '
ConstructionNumber::' 9
)::9 :
.::: ;
NotEmpty::; C
(::C D
)::D E
;::E F
RuleFor;; 
(;; 
command;; 
=>;; 
command;; &
.;;& '
AmountOfWarp;;' 3
);;3 4
.;;4 5
NotEmpty;;5 =
(;;= >
);;> ?
;;;? @
RuleFor<< 
(<< 
command<< 
=><< 
command<< &
.<<& '
AmountOfWeft<<' 3
)<<3 4
.<<4 5
NotEmpty<<5 =
(<<= >
)<<> ?
;<<? @
RuleFor== 
(== 
command== 
=>== 
command== &
.==& '
Width==' ,
)==, -
.==- .
NotEmpty==. 6
(==6 7
)==7 8
;==8 9
RuleFor>> 
(>> 
command>> 
=>>> 
command>> &
.>>& '
WarpTypeForm>>' 3
)>>3 4
.>>4 5
NotEmpty>>5 =
(>>= >
)>>> ?
;>>? @
RuleFor?? 
(?? 
command?? 
=>?? 
command?? &
.??& '
WeftTypeForm??' 3
)??3 4
.??4 5
NotEmpty??5 =
(??= >
)??> ?
;??? @
RuleFor@@ 
(@@ 
command@@ 
=>@@ 
command@@ &
.@@& '
	TotalYarn@@' 0
)@@0 1
.@@1 2
NotEmpty@@2 :
(@@: ;
)@@; <
;@@< =
RuleForAA 
(AA 
commandAA 
=>AA 
commandAA &
.AA& '
MaterialTypeNameAA' 7
)AA7 8
.AA8 9
NotEmptyAA9 A
(AAA B
)AAB C
;AAC D
}BB 	
}CC 
}DD ��
{D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\FabricConstructions\FabricConstructionDocument.cs
	namespace

 	
Manufactures


 
.

 
Domain

 
.

 
FabricConstructions

 1
{ 
public 

class &
FabricConstructionDocument +
:, -

<; <&
FabricConstructionDocument< V
,V W'
FabricConstructionReadModelX s
>s t
{
public 
string 
ConstructionNumber (
{) *
get+ .
;. /
private0 7
set8 ;
;; <
}= >
public 
DateTimeOffset 
Date "
{# $
get% (
;( )
private* 1
set2 5
;5 6
}7 8
public 
int 
AmountOfWarp 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
public 
int 
AmountOfWeft 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
public 
int 
Width 
{ 
get 
; 
private  '
set( +
;+ ,
}- .
public 
string 
	WovenType 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
public 
string 
WarpType 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
public 
string 
WeftType 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
public 
double 
	TotalYarn 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
public 
string 
MaterialTypeName &
{' (
get) ,
;, -
private. 5
set6 9
;9 :
}; <
public 
IReadOnlyCollection "
<" #
ConstructionDetail# 5
>5 6

ListOfWarp7 A
{B C
getD G
;G H
privateI P
setQ T
;T U
}V W
public 
IReadOnlyCollection "
<" #
ConstructionDetail# 5
>5 6

ListOfWeft7 A
{B C
getD G
;G H
privateI P
setQ T
;T U
}V W
public &
FabricConstructionDocument )
() *
Guid* .
id/ 1
,1 2
string$ *
constructionNumber+ =
,= >
string$ *
	wofenType+ 4
,4 5
string$ *
warpType+ 3
,3 4
string$ *
weftType+ 3
,3 4
int  $ '
amountOfWarp  ( 4
,  4 5
int!!$ '
amountOfWeft!!( 4
,!!4 5
int""$ '
width""( -
,""- .
double##$ *
	totalYarn##+ 4
,##4 5
string$$$ *
materialTypeName$$+ ;
)$$; <
:$$= >
base$$? C
($$C D
id$$D F
)$$F G
{%% 	
Identity'' 
='' 
id'' 
;'' 
ConstructionNumber(( 
=((  
constructionNumber((! 3
;((3 4
AmountOfWarp)) 
=)) 
amountOfWarp)) '
;))' (
AmountOfWeft** 
=** 
amountOfWeft** '
;**' (
Width++ 
=++ 
width++ 
;++ 
	WovenType,, 
=,, 
	wofenType,, !
;,,! "
WarpType-- 
=-- 
warpType-- 
;--  
WeftType.. 
=.. 
weftType.. 
;..  
	TotalYarn// 
=// 
	totalYarn// !
;//! "
MaterialTypeName00 
=00 
materialTypeName00 /
;00/ 0

ListOfWarp11 
=11 
new11 
List11 !
<11! "
ConstructionDetail11" 4
>114 5
(115 6
)116 7
;117 8

ListOfWeft22 
=22 
new22 
List22 !
<22! "
ConstructionDetail22" 4
>224 5
(225 6
)226 7
;227 8
this44 
.44 

(44 
)44  
;44  !
	ReadModel66 
=66 
new66 '
FabricConstructionReadModel66 7
(667 8
Identity668 @
)66@ A
{77 
ConstructionNumber88 "
=88# $
ConstructionNumber88% 7
,887 8
AmountOfWarp99 
=99 
AmountOfWarp99 +
,99+ ,
AmountOfWeft:: 
=:: 
AmountOfWeft:: +
,::+ ,
Width;; 
=;; 
Width;; 
,;; 
	WovenType<< 
=<< 
	WovenType<< %
,<<% &
WarpType== 
=== 
WarpType== #
,==# $
WeftType>> 
=>> 
WeftType>> #
,>># $
	TotalYarn?? 
=?? 
	TotalYarn?? %
,??% &
MaterialTypeName@@  
=@@! "
materialTypeName@@# 3
,@@3 4

ListOfWarpAA 
=AA 

ListOfWarpAA '
.AA' (
	SerializeAA( 1
(AA1 2
)AA2 3
,AA3 4

ListOfWeftBB 
=BB 

ListOfWeftBB '
.BB' (
	SerializeBB( 1
(BB1 2
)BB2 3
}CC 
;CC
	ReadModelEE 
.EE 
AddDomainEventEE $
(EE$ %
newEE% (&
OnFabricConstructionPlacedEE) C
(EEC D
thisEED H
.EEH I
IdentityEEI Q
)EEQ R
)EER S
;EES T
}FF 	
publicHH &
FabricConstructionDocumentHH )
(HH) *'
FabricConstructionReadModelHH* E
	readModelHHF O
)HHO P
:HHQ R
baseHHS W
(HHW X
	readModelHHX a
)HHa b
{II 	
thisJJ 
.JJ 
ConstructionNumberJJ #
=JJ$ %
	readModelJJ& /
.JJ/ 0
ConstructionNumberJJ0 B
;JJB C
thisKK 
.KK 
AmountOfWarpKK 
=KK 
	readModelKK  )
.KK) *
AmountOfWarpKK* 6
;KK6 7
thisLL 
.LL 
AmountOfWeftLL 
=LL 
	readModelLL  )
.LL) *
AmountOfWeftLL* 6
;LL6 7
thisMM 
.MM 
WidthMM 
=MM 
	readModelMM "
.MM" #
WidthMM# (
;MM( )
thisNN 
.NN 
	WovenTypeNN 
=NN 
	readModelNN &
.NN& '
	WovenTypeNN' 0
;NN0 1
thisOO 
.OO 
WarpTypeOO 
=OO 
	readModelOO %
.OO% &
WarpTypeOO& .
;OO. /
thisPP 
.PP 
WeftTypePP 
=PP 
	readModelPP %
.PP% &
WeftTypePP& .
;PP. /
thisQQ 
.QQ 
	TotalYarnQQ 
=QQ 
	readModelQQ &
.QQ& '
	TotalYarnQQ' 0
;QQ0 1
thisRR 
.RR 
MaterialTypeNameRR !
=RR" #
	readModelRR$ -
.RR- .
MaterialTypeNameRR. >
;RR> ?
thisSS 
.SS 

ListOfWarpSS 
=SS 
!SS 
StringSS %
.SS% &

(SS3 4
	readModelSS4 =
.SS= >

ListOfWarpSS> H
)SSH I
?SSJ K
	readModelSSL U
.SSU V

ListOfWarpSSV `
.SS` a
DeserializeSSa l
<SSl m
ListSSm q
<SSq r
ConstructionDetail	SSr �
>
SS� �
>
SS� �
(
SS� �
)
SS� �
:
SS� �
null
SS� �
;
SS� �
thisTT 
.TT 

ListOfWeftTT 
=TT 
!TT 
StringTT %
.TT% &

(TT3 4
	readModelTT4 =
.TT= >

ListOfWeftTT> H
)TTH I
?TTJ K
	readModelTTL U
.TTU V

ListOfWeftTTV `
.TT` a
DeserializeTTa l
<TTl m
ListTTm q
<TTq r
ConstructionDetail	TTr �
>
TT� �
>
TT� �
(
TT� �
)
TT� �
:
TT� �
null
TT� �
;
TT� �
thisUU 
.UU 
DateUU 
=UU 
	readModelUU !
.UU! "
CreatedDateUU" -
;UU- .
}VV 	
publicXX 
voidXX 

UpdateWarpXX 
(XX 
ConstructionDetailXX 1
valueXX2 7
)XX7 8
{YY 	
foreachZZ 
(ZZ 
varZZ 
warpZZ 
inZZ  

ListOfWarpZZ! +
)ZZ+ ,
{[[ 
if\\ 
(\\ 
warp\\ 
.\\ 
YarnId\\ 
==\\  "
value\\# (
.\\( )
YarnId\\) /
)\\/ 0
{]] 
warp__ 
.__ 
SetQuantity__ $
(__$ %
value__% *
.__* +
Quantity__+ 3
)__3 4
;__4 5
warp`` 
.`` 
SetInformation`` '
(``' (
value``( -
.``- .
Information``. 9
)``9 :
;``: ;
MarkModifiedbb  
(bb  !
)bb! "
;bb" #
}cc 
}dd 
}ee 	
publicgg 
voidgg 

UpdateWeftgg 
(gg 
ConstructionDetailgg 1
valuegg2 7
)gg7 8
{hh 	
foreachii 
(ii 
varii 
weftii 
inii 

ListOfWeftii  *
)ii* +
{jj 
ifkk 
(kk 
weftkk 
.kk 
YarnIdkk 
==kk !
valuekk" '
.kk' (
YarnIdkk( .
)kk. /
{ll 
weftnn 
.nn 
SetQuantitynn $
(nn$ %
valuenn% *
.nn* +
Quantitynn+ 3
)nn3 4
;nn4 5
weftoo 
.oo 
SetInformationoo '
(oo' (
valueoo( -
.oo- .
Informationoo. 9
)oo9 :
;oo: ;
MarkModifiedqq  
(qq  !
)qq! "
;qq" #
}rr 
}ss 
}tt 	
publicvv 
voidvv 

RemoveWarpvv 
(vv 
ConstructionDetailvv 1
valuevv2 7
)vv7 8
{ww 	
varxx 
warpsxx 
=xx 

ListOfWarpxx "
.xx" #
ToListxx# )
(xx) *
)xx* +
;xx+ ,
warpsyy 
.yy 
Removeyy 
(yy 
valueyy 
)yy 
;yy  

ListOfWarpzz 
=zz 
warpszz 
;zz 
	ReadModel{{ 
.{{ 

ListOfWarp{{  
={{! "

ListOfWarp{{# -
.{{- .
	Serialize{{. 7
({{7 8
){{8 9
;{{9 :
MarkModified}} 
(}} 
)}} 
;}} 
}~~ 	
public
�� 
void
�� 

RemoveWeft
�� 
(
��  
ConstructionDetail
�� 1
value
��2 7
)
��7 8
{
�� 	
var
�� 
wefts
�� 
=
�� 

ListOfWeft
�� "
.
��" #
ToList
��# )
(
��) *
)
��* +
;
��+ ,
wefts
�� 
.
�� 
Remove
�� 
(
�� 
value
�� 
)
�� 
;
��  

ListOfWeft
�� 
=
�� 
wefts
�� 
;
�� 
	ReadModel
�� 
.
�� 

ListOfWeft
��  
=
��! "

ListOfWeft
��# -
.
��- .
	Serialize
��. 7
(
��7 8
)
��8 9
;
��9 :
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
AddWarp
�� 
(
��  
ConstructionDetail
�� .
value
��/ 4
)
��4 5
{
�� 	
if
�� 
(
�� 
!
�� 

ListOfWarp
�� 
.
�� 
Any
�� 
(
��  
o
��  !
=>
��" $
o
��% &
.
��& '
YarnId
��' -
==
��. 0
value
��1 6
.
��6 7
YarnId
��7 =
)
��= >
)
��> ?
{
�� 
var
�� 
warps
�� 
=
�� 

ListOfWarp
�� &
.
��& '
ToList
��' -
(
��- .
)
��. /
;
��/ 0
warps
�� 
.
�� 
Add
�� 
(
�� 
value
�� 
)
��  
;
��  !

ListOfWarp
�� 
=
�� 
warps
�� "
;
��" #
	ReadModel
�� 
.
�� 

ListOfWarp
�� $
=
��% &

ListOfWarp
��' 1
.
��1 2
	Serialize
��2 ;
(
��; <
)
��< =
;
��= >
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
AddWeft
�� 
(
��  
ConstructionDetail
�� .
value
��/ 4
)
��4 5
{
�� 	
if
�� 
(
�� 
!
�� 

ListOfWeft
�� 
.
�� 
Any
�� 
(
��  
o
��  !
=>
��" $
o
��% &
.
��& '
YarnId
��' -
==
��. 0
value
��1 6
.
��6 7
YarnId
��7 =
)
��= >
)
��> ?
{
�� 
var
�� 
wefts
�� 
=
�� 

ListOfWeft
�� &
.
��& '
ToList
��' -
(
��- .
)
��. /
;
��/ 0
wefts
�� 
.
�� 
Add
�� 
(
�� 
value
�� 
)
��  
;
��  !

ListOfWeft
�� 
=
�� 
wefts
�� "
;
��" #
	ReadModel
�� 
.
�� 

ListOfWeft
�� $
=
��% &

ListOfWeft
��' 1
.
��1 2
	Serialize
��2 ;
(
��; <
)
��< =
;
��= >
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� !
SetMaterialTypeName
�� '
(
��' (
string
��( .
value
��/ 4
)
��4 5
{
�� 	
if
�� 
(
�� 
MaterialTypeName
��  
!=
��! #
value
��$ )
)
��) *
{
�� 
MaterialTypeName
��  
=
��! "
value
��# (
;
��( )
	ReadModel
�� 
.
�� 
MaterialTypeName
�� *
=
��+ ,
MaterialTypeName
��- =
;
��= >
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� #
SetConstructionNumber
�� )
(
��) *
string
��* 0 
constructionNumber
��1 C
)
��C D
{
�� 	
if
�� 
(
��  
constructionNumber
�� "
!=
��# % 
ConstructionNumber
��& 8
)
��8 9
{
�� 
ConstructionNumber
�� "
=
��# $ 
constructionNumber
��% 7
;
��7 8
	ReadModel
�� 
.
��  
ConstructionNumber
�� ,
=
��- . 
ConstructionNumber
��/ A
;
��A B
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
SetAmountOfWarp
�� #
(
��# $
int
��$ '
amountOfWarp
��( 4
)
��4 5
{
�� 	
if
�� 
(
�� 
amountOfWarp
�� 
!=
�� 
AmountOfWarp
��  ,
)
��, -
{
�� 
AmountOfWarp
�� 
=
�� 
amountOfWarp
�� +
;
��+ ,
	ReadModel
�� 
.
�� 
AmountOfWarp
�� &
=
��' (
AmountOfWarp
��) 5
;
��5 6
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
SetAmountOfWeft
�� #
(
��# $
int
��$ '
amountOfWeft
��( 4
)
��4 5
{
�� 	
if
�� 
(
�� 
amountOfWeft
�� 
!=
�� 
AmountOfWeft
��  ,
)
��, -
{
�� 
AmountOfWeft
�� 
=
�� 
amountOfWeft
�� +
;
��+ ,
	ReadModel
�� 
.
�� 
AmountOfWeft
�� &
=
��' (
AmountOfWeft
��) 5
;
��5 6
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
SetWidth
�� 
(
�� 
int
��  
width
��! &
)
��& '
{
�� 	
if
�� 
(
�� 
width
�� 
!=
�� 
Width
�� 
)
�� 
{
�� 
Width
�� 
=
�� 
width
�� 
;
�� 
	ReadModel
�� 
.
�� 
Width
�� 
=
��  !
Width
��" '
;
��' (
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
SetWovenType
��  
(
��  !
string
��! '
	wovenType
��( 1
)
��1 2
{
�� 	
if
�� 
(
�� 
	wovenType
�� 
!=
�� 
	WovenType
�� &
)
��& '
{
�� 
	WovenType
�� 
=
�� 
	wovenType
�� %
;
��% &
	ReadModel
�� 
.
�� 
	WovenType
�� #
=
��$ %
	WovenType
��& /
;
��/ 0
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
SetWarpType
�� 
(
��  
string
��  &
warpType
��' /
)
��/ 0
{
�� 	
if
�� 
(
�� 
warpType
�� 
!=
�� 
WarpType
�� $
)
��$ %
{
�� 
WarpType
�� 
=
�� 
warpType
�� #
;
��# $
	ReadModel
�� 
.
�� 
WarpType
�� "
=
��# $
WarpType
��% -
;
��- .
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
SetWeftType
�� 
(
��  
string
��  &
weftType
��' /
)
��/ 0
{
�� 	
if
�� 
(
�� 
weftType
�� 
!=
�� 
WeftType
�� $
)
��$ %
{
�� 
WeftType
�� 
=
�� 
weftType
�� #
;
��# $
	ReadModel
�� 
.
�� 
WeftType
�� "
=
��# $
WeftType
��% -
;
��- .
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
SetTotalYarn
��  
(
��  !
double
��! '
	totalYarn
��( 1
)
��1 2
{
�� 	
if
�� 
(
�� 
	totalYarn
�� 
!=
�� 
	TotalYarn
�� &
)
��& '
{
�� 
	TotalYarn
�� 
=
�� 
	totalYarn
�� %
;
��% &
	ReadModel
�� 
.
�� 
	TotalYarn
�� #
=
��$ %
	TotalYarn
��& /
;
��/ 0
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
	protected
�� 
override
�� (
FabricConstructionDocument
�� 5
	GetEntity
��6 ?
(
��? @
)
��@ A
{
�� 	
return
�� 
this
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\FabricConstructions\ReadModels\FabricConstructionReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
FabricConstructions 1
.1 2

ReadModels2 <
{ 
public 

class '
FabricConstructionReadModel ,
:- .

{ 
public '
FabricConstructionReadModel *
(* +
Guid+ /
identity0 8
)8 9
:: ;
base< @
(@ A
identityA I
)I J
{K L
}M N
public

 
string

 
ConstructionNumber

 (
{

) *
get

+ .
;

. /
internal

0 8
set

9 <
;

< =
}

> ?
public 
int 
AmountOfWarp 
{  !
get" %
;% &
internal' /
set0 3
;3 4
}5 6
public 
int 
AmountOfWeft 
{  !
get" %
;% &
internal' /
set0 3
;3 4
}5 6
public
int
Width
{
get
;
internal
set
;
}
public 
string 
	WovenType 
{  !
get" %
;% &
internal' /
set0 3
;3 4
}5 6
public 
string 
WarpType 
{  
get! $
;$ %
internal& .
set/ 2
;2 3
}4 5
public 
string 
WeftType 
{  
get! $
;$ %
internal& .
set/ 2
;2 3
}4 5
public 
double 
	TotalYarn 
{  !
get" %
;% &
internal' /
set0 3
;3 4
}5 6
public 
string 
MaterialTypeName &
{' (
get) ,
;, -
internal. 6
set7 :
;: ;
}< =
public 
string 

ListOfWarp  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 

ListOfWeft  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\FabricConstructions\Repositories\IFabricConstructionRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
FabricConstructions 1
.1 2
Repositories2 >
{ 
public 

	interface )
IFabricConstructionRepository 2
:3 4 
IAggregateRepository5 I
<I J&
FabricConstructionDocumentJ d
,d e(
FabricConstructionReadModel	f �
>
� �
{ 
} 
}		 �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\FabricConstructions\ValueObjects\ConstructionDetail.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
FabricConstructions 1
.1 2
ValueObjects2 >
{ 
public 

class 
ConstructionDetail #
:$ %
ValueObject& 1
{		 
[

 	
JsonProperty

	 
(

 
PropertyName

 "
=

# $
$str

% -
)

- .
]

. /
public 
YarnId 
YarnId 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
double 
Quantity 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 2
)2 3
]3 4
public 
string 
Information !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
ConstructionDetail !
(! "
YarnId" (
yarnId) /
,/ 0
double" (
quantity) 1
,1 2
string" (
information) 4
)4 5
{ 	
Quantity 
= 
quantity 
;  
Information 
= 
information %
;% &
YarnId 
= 
yarnId 
; 
} 	
public 
void 
SetQuantity 
(  
double  &
quantity' /
)/ 0
{ 	
if 
( 
quantity 
!= 
Quantity $
)$ %
{   
Quantity!! 
=!! 
quantity!! #
;!!# $
}"" 
}## 	
public%% 
void%% 
SetInformation%% "
(%%" #
string%%# )
information%%* 5
)%%5 6
{&& 	
if'' 
('' 
information'' 
!='' 
Information'' *
)''* +
{(( 
Information)) 
=)) 
information)) )
;))) *
}** 
}++ 	
public-- 
void-- 
SetYarn-- 
(-- 
YarnId-- "
value--# (
)--( )
{.. 	
if// 
(// 
YarnId// 
!=// 
value// 
)//  
{00 
YarnId11 
=11 
value11 
;11 
}22 
}33 	
	protected55 
override55 
IEnumerable55 &
<55& '
object55' -
>55- .
GetAtomicValues55/ >
(55> ?
)55? @
{66 	
yield77 
return77 
YarnId77 
;77  
yield88 
return88 
Quantity88 !
;88! "
yield99 
return99 
Information99 $
;99$ %
}:: 	
};; 
}<< �
rD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\FabricConstructions\ValueObjects\Warp.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
FabricConstructions 1
.1 2
ValueObjects2 >
{ 
public		 

class		 
Warp		 
:		 
ValueObject		 #
{

 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public 
YarnValueObject 
Yarn #
{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public 
double 
Quantity 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 2
)2 3
]3 4
public 
string 
Information !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
Warp 
( 
double 
quantity #
,# $
string 
information &
,& '
YarnValueObject #
yarn$ (
)( )
{ 	
this 
. 
Quantity 
= 
quantity $
;$ %
this 
. 
Information 
= 
information *
;* +
this 
. 
Yarn 
= 
yarn 
; 
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
Quantity !
;! "
yield   
return   
Information   $
;  $ %
yield!! 
return!! 
Yarn!! 
;!! 
}"" 	
}## 
}$$ �
rD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\FabricConstructions\ValueObjects\Weft.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
FabricConstructions 1
.1 2
ValueObjects2 >
{ 
public		 

class		 
Weft		 
:		 
ValueObject		 #
{

 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public 
YarnValueObject 
Yarn #
{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public 
double 
Quantity 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 2
)2 3
]3 4
public 
string 
Information !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
Weft 
( 
double 
quantity #
,# $
string 
information &
,& '
YarnValueObject #
yarn$ (
)( )
{ 	
this 
. 
Quantity 
= 
quantity $
;$ %
this 
. 
Information 
= 
information *
;* +
this 
. 
Yarn 
= 
yarn 
; 
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
Quantity !
;! "
yield   
return   
Information   $
;  $ %
yield!! 
return!! 
Yarn!! 
;!! 
}"" 	
}## 
}$$ �
}D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\FabricConstructions\ValueObjects\YarnValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
FabricConstructions 1
.1 2
ValueObjects2 >
{ 
public 

class 
YarnValueObject  
:! "
ValueObject# .
{		 
[

 	
JsonProperty

	 
(

 
PropertyName

 "
=

# $
$str

% )
)

) *
]

* +
public 
Guid 
Id 
{ 
get 
; 
private %
set& )
;) *
}+ ,
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
string 
Code 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 3
)3 4
]4 5
public 
string 
MaterialCode "
{# $
get% (
;( )
private* 1
set2 5
;5 6
}7 8
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public 
string 
RingCode 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
public 
YarnValueObject 
( 
Guid #
id$ &
,& '
string %
code& *
,* +
string %
name& *
,* +
string %
materialCode& 2
,2 3
string %
ringCode& .
). /
{ 	
Id 
= 
id 
; 
Code   
=   
code   
;   
Name!! 
=!! 
name!! 
;!! 
MaterialCode"" 
="" 
materialCode"" '
;""' (
RingCode## 
=## 
ringCode## 
;##  
}$$ 	
	protected&& 
override&& 
IEnumerable&& &
<&&& '
object&&' -
>&&- .
GetAtomicValues&&/ >
(&&> ?
)&&? @
{'' 	
yield(( 
return(( 
Id(( 
;(( 
yield)) 
return)) 
Code)) 
;)) 
yield** 
return** 
Name** 
;** 
yield++ 
return++ 
MaterialCode++ %
;++% &
yield,, 
return,, 
RingCode,, !
;,,! "
}-- 	
}.. 
}// �
D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\GlobalValueObjects\ConstructionDocumentValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
GlobalValueObjects 0
{ 
public 

class +
ConstructionDocumentValueObject 0
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% )
)) *
]* +
public		 
Guid		 
Identity		 
{		 
get		 "
;		" #
}		$ %
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 9
)9 :
]: ;
public 
string 
ConstructionNumber (
{) *
get+ .
;. /
}0 1
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 3
)3 4
]4 5
public 
int 
AmountOfWarp 
{  !
get" %
;% &
}' (
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 3
)3 4
]4 5
public 
int 
AmountOfWeft 
{  !
get" %
;% &
}' (
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 0
)0 1
]1 2
public 
double 
	TotalYarn 
{  !
get" %
;% &
}' (
public +
ConstructionDocumentValueObject .
(. /
Guid/ 3
identity4 <
,< =
string/ 5
constructionNumber6 H
,H I
int/ 2
amountOfWarp3 ?
,? @
int/ 2
amountOfWeft3 ?
,? @
double/ 5
	totalYarn6 ?
)? @
{ 	
Identity 
= 
identity 
;  
ConstructionNumber 
=  
constructionNumber! 3
;3 4
AmountOfWarp 
= 
amountOfWarp '
;' (
AmountOfWeft   
=   
amountOfWeft   '
;  ' (
	TotalYarn!! 
=!! 
	totalYarn!! !
;!!! "
}"" 	
}## 
}$$ �

vD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\GlobalValueObjects\CoreAccountValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
GlobalValueObjects 0
{ 
public 

class "
CoreAccountValueObject '
:( )
ValueObject* 5
{		 
public

 
string

 
_id

 
{

 
get

 
;

  
}

! "
public 
string 
Name 
{ 
get  
;  !
}" #
public
CoreAccountValueObject
(
string
_id
,
string
name
)
{ 	
this 
. 
_id 
= 
_id 
; 
Name 
= 
name 
; 
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
_id 
; 
yield 
return 
Name 
; 
} 	
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\GlobalValueObjects\EstimatedProductionDocumentValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
GlobalValueObjects 0
{ 
public 

class 2
&EstimatedProductionDocumentValueObject 7
{		 
[

 	
JsonProperty

	 
(

 
PropertyName

 "
=

# $
$str

% -
)

- .
]

. /
public 
int 
GradeA 
{ 
get 
;  
}! "
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
int 
GradeB 
{ 
get 
;  
}! "
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public 
int 
GradeC 
{ 
get 
;  
}! "
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public 
int 
GradeD 
{ 
get 
;  
}! "
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 
int 

WholeGrade 
{ 
get  #
;# $
}% &
public 2
&EstimatedProductionDocumentValueObject 5
(5 6
int6 9
gradeA: @
,@ A
intB E
gradeBF L
,L M
intN Q
gradeCR X
,X Y
intZ ]
gradeD^ d
,d e
intf i

wholeGradej t
)t u
{ 	
GradeA 
= 
gradeA 
; 
GradeB 
= 
gradeB 
; 
GradeC 
= 
gradeC 
; 
GradeD 
= 
gradeD 
; 

WholeGrade 
= 

wholeGrade #
;# $
}   	
}!! 
}"" �
wD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\GlobalValueObjects\MaterialTypeValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
GlobalValueObjects 0
{ 
public 

class #
MaterialTypeValueObject (
:) *
ValueObject+ 6
{		 
[

 	
JsonProperty

	 
(

 
PropertyName

 "
=

# $
$str

% )
)

) *
]

* +
public 
Guid 
Id 
{ 
get 
; 
private %
set& )
;) *
}+ ,
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
string 
Code 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public #
MaterialTypeValueObject &
(& '
Guid' +
id, .
,. /
string' -
code. 2
,2 3
string' -
name. 2
)2 3
{ 	
Id 
= 
id 
; 
Code 
= 
code 
; 
Name 
= 
name 
; 
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
Id 
; 
yield 
return 
Code 
; 
yield   
return   
Name   
;   
}!! 	
}"" 
}## �
fD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\GlobalValueObjects\Period.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
GlobalValueObjects 0
{ 
public 

class 
Period 
: 
ValueObject %
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% ,
)		, -
]		- .
public

 
string

 
Month

 
{

 
get

 !
;

! "
private

# *
set

+ .
;

. /
}

0 1
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public
string
Year
{
get
;
private
set
;
}
public 
Period 
( 
string 
month "
," #
string$ *
year+ /
)/ 0
{ 	
Month 
= 
month 
; 
Year 
= 
year 
; 
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
Month 
; 
yield 
return 
Year 
; 
} 	
} 
} �
kD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\GlobalValueObjects\WeavingUnit.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
GlobalValueObjects 0
{ 
public 

class 
WeavingUnit 
: 
ValueObject *
{		 
[

 	
JsonProperty

	 
(

 
PropertyName

 "
=

# $
$str

% )
)

) *
]

* +
public 
int 
Id 
{ 
get 
; 
private $
set% (
;( )
}* +
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
string 
Code 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
WeavingUnit 
( 
int 
id !
,! "
string# )
code* .
,. /
string0 6
name7 ;
); <
{ 	
Id 
= 
id 
; 
Code 
= 
code 
; 
Name 
= 
name 
; 
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
Id 
; 
yield 
return 
Code 
; 
yield 
return 
Name 
; 
} 	
}   
}!! �
uD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\GlobalValueObjects\YarnNumberValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
GlobalValueObjects 0
{ 
public 

class !
YarnNumberValueObject &
:' (
ValueObject) 4
{		 
[

 	
JsonProperty

	 
(

 
PropertyName

 "
=

# $
$str

% )
)

) *
]

* +
public 
Guid 
Id 
{ 
get 
; 
private %
set& )
;) *
}+ ,
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
string 
Code 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public 
int 
Number 
{ 
get 
;  
private! (
set) ,
;, -
}. /
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public 
string 
RingType 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
public !
YarnNumberValueObject $
($ %
Guid% )
id* ,
,, -
string. 4
code5 9
,9 :
int; >
number? E
,E F
stringG M
ringTypeN V
)V W
{ 	
Id 
= 
id 
; 
Code 
= 
code 
; 
Number 
= 
number 
; 
RingType 
= 
ringType 
;  
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield   
return   
Id   
;   
yield!! 
return!! 
Code!! 
;!! 
yield"" 
return"" 
Number"" 
;""  
yield## 
return## 
RingType## !
;##! "
}$$ 	
}%% 
}&& �
lD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Goods\Entities\GoodsComposition.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Goods #
.# $
Entities$ ,
{ 
public		 

class		 
GoodsComposition		 !
:		" #

EntityBase		$ .
<		. /
GoodsComposition		/ ?
>		? @
{

 
public 
GoodsComposition 
(  
Guid  $
identity% -
)- .
:/ 0
base1 5
(5 6
identity6 >
)> ?
{ 	
}
public 
GoodsComposition 
(  
Guid  $
identity% -
,- .
MaterialIds/ :
materialIds; F
)F G
:H I
baseJ N
(N O
identityO W
)W X
{ 	
Identity 
= 
identity 
;  
MaterialIds 
= 
materialIds %
;% &
} 	
[ 	
	NotMapped	 
] 
public 
MaterialIds 
MaterialIds &
{' (
get) ,
;, -
private. 5
set6 9
;9 :
}; <
public 
void 
SetMaterialIds "
(" #
MaterialIds# .
newMaterialIds/ =
)= >
{ 	
if 
( 
newMaterialIds 
!= !
MaterialIds" -
)- .
{ 
this 
. 
MaterialIds  
=! "
newMaterialIds# 1
;1 2
this 
. 
MarkModified !
(! "
)" #
;# $
} 
}   	
public"" 
string"" 
MaterialIdsJson"" %
{## 	
get$$ 
=>$$ 
MaterialIds$$ 
.$$ 
	Serialize$$ (
($$( )
)$$) *
;$$* +
set%% 
=>%% 
MaterialIds%% 
=%%  
value%%! &
.%%& '
Deserialize%%' 2
<%%2 3
MaterialIds%%3 >
>%%> ?
(%%? @
)%%@ A
;%%A B
}&& 	
public(( !
ProductGoodsReadModel(( $
Goods((% *
{((+ ,
get((- 0
;((0 1
set((2 5
;((5 6
}((7 8
public** 
Guid** 
GoodsId** 
{** 
get** !
;**! "
set**# &
;**& '
}**( )
	protected,, 
override,, 
GoodsComposition,, +
	GetEntity,,, 5
(,,5 6
),,6 7
{-- 	
return.. 
this.. 
;.. 
}// 	
}00 
}11 �
_D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Goods\ProductGoods.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Goods #
{ 
public		 

class		 
ProductGoods		 
:		 

<		- .
ProductGoods		. :
,		: ;!
ProductGoodsReadModel		< Q
>		Q R
{

 
public 
ProductGoods 
( 
Guid  
identity! )
,) *
int+ .
	productId/ 8
)8 9
:: ;
base< @
(@ A
identityA I
)I J
{ 	
	ProductId
=
	productId
;
Compositions 
= 
new 
List #
<# $
GoodsComposition$ 4
>4 5
(5 6
)6 7
.7 8

AsReadOnly8 B
(B C
)C D
;D E
} 	
public 
ProductGoods 
( !
ProductGoodsReadModel 1
	readModel2 ;
); <
:= >
base? C
(C D
	readModelD M
)M N
{ 	
	ProductId 
= 
	readModel !
.! "
	ProductId" +
;+ ,
Compositions 
= 
	readModel $
.$ %
Compositions% 1
.1 2

AsReadOnly2 <
(< =
)= >
;> ?
} 	
public 
int 
	ProductId 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 
IReadOnlyCollection "
<" #
GoodsComposition# 3
>3 4
Compositions5 A
{B C
getD G
;G H
privateI P
setQ T
;T U
}V W
	protected 
override 
ProductGoods '
	GetEntity( 1
(1 2
)2 3
{ 	
return 
this 
; 
} 	
}   
}!! �	
sD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Goods\ReadModels\ProductGoodsReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Products &
.& '

ReadModels' 1
{ 
public 

class !
ProductGoodsReadModel &
:' (

{		 
public

 !
ProductGoodsReadModel

 $
(

$ %
Guid

% )
identity

* 2
)

2 3
:

4 5
base

6 :
(

: ;
identity

; C
)

C D
{ 	
Compositions 
= 
new 
List #
<# $
GoodsComposition$ 4
>4 5
(5 6
)6 7
;7 8
}
public 
int 
	ProductId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
List 
< 
GoodsComposition $
>$ %
Compositions& 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
} 
} �
wD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Goods\Repositories\IProductGoodsRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Goods #
.# $
Repositories$ 0
{ 
public 

	interface #
IProductGoodsRepository ,
:- . 
IAggregateRepository/ C
<C D
ProductGoodsD P
,P Q!
ProductGoodsReadModelR g
>g h
{ 
} 
}		 �
hD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Goods\ValueObjects\Material.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
ValueObjects% 1
{ 
public 

class 
Material 
: 
ValueObject '
{ 
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{		 	
throw

 
new

 
System

 
.

 #
NotImplementedException

 4
(

4 5
)

5 6
;

6 7
} 	
} 
}
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\MachinesPlanning\Commands\AddNewEnginePlanningCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
MachinesPlanning .
.. /
Commands/ 7
{ 
public 

class '
AddNewEnginePlanningCommand ,
:- .
ICommand/ 7
<7 8$
MachinesPlanningDocument8 P
>P Q
{		 
[

 	
JsonProperty

	 
(

 
PropertyName

 "
=

# $
$str

% +
)

+ ,
]

, -
public 
string 
Area 
{ 
get  
;  !
set" %
;% &
}' (
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
string 
Blok 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 
string 

BlokKaizen  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 8
)8 9
]9 :
public 
int 
UnitDepartementId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 0
)0 1
]1 2
public 
Guid 
	MachineId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 8
)8 9
]9 :
public 
string 
UserMaintenanceId '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 5
)5 6
]6 7
public 
string 
UserOperatorId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
public   

class   0
$AddNewEnginePlanningCommandValidator   5
:  6 7
AbstractValidator  8 I
<  I J'
AddNewEnginePlanningCommand  J e
>  e f
{!! 
public"" 0
$AddNewEnginePlanningCommandValidator"" 3
(""3 4
)""4 5
{## 	
RuleFor$$ 
($$ 
command$$ 
=>$$ 
command$$ &
.$$& '
Area$$' +
)$$+ ,
.$$, -
NotEmpty$$- 5
($$5 6
)$$6 7
;$$7 8
RuleFor%% 
(%% 
command%% 
=>%% 
command%% &
.%%& '
Blok%%' +
)%%+ ,
.%%, -
NotEmpty%%- 5
(%%5 6
)%%6 7
;%%7 8
RuleFor&& 
(&& 
command&& 
=>&& 
command&& &
.&&& '

BlokKaizen&&' 1
)&&1 2
.&&2 3
NotEmpty&&3 ;
(&&; <
)&&< =
;&&= >
RuleFor'' 
('' 
command'' 
=>'' 
command'' &
.''& '
UnitDepartementId''' 8
)''8 9
.''9 :
NotEmpty'': B
(''B C
)''C D
;''D E
RuleFor(( 
((( 
command(( 
=>(( 
command(( &
.((& '
	MachineId((' 0
)((0 1
.((1 2
NotEmpty((2 :
(((: ;
)((; <
;((< =
RuleFor)) 
()) 
command)) 
=>)) 
command)) &
.))& '
UserMaintenanceId))' 8
)))8 9
.))9 :
NotEmpty)): B
())B C
)))C D
;))D E
RuleFor** 
(** 
command** 
=>** 
command** &
.**& '
UserOperatorId**' 5
)**5 6
.**6 7
NotEmpty**7 ?
(**? @
)**@ A
;**A B
}++ 	
},, 
}-- �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\MachinesPlanning\Commands\RemoveEnginePlanningCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
MachinesPlanning .
.. /
Commands/ 7
{ 
public 

class '
RemoveEnginePlanningCommand ,
:- .
ICommand/ 7
<7 8$
MachinesPlanningDocument8 P
>P Q
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% )
)		) *
]		* +
public

 
Guid

 
Id

 
{

 
get

 
;

 
private

 %
set

& )
;

) *
}

+ ,
public 
void 
SetId 
( 
Guid 
Id !
)! "
{# $
this% )
.) *
Id* ,
=- .
Id/ 1
;1 2
}3 4
}
} �*
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\MachinesPlanning\Commands\UpdateEnginePlanningCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
MachinesPlanning .
.. /
Commands/ 7
{ 
public		 

class		 '
UpdateEnginePlanningCommand		 ,
:		- .
ICommand		/ 7
<		7 8$
MachinesPlanningDocument		8 P
>		P Q
{

 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% )
)) *
]* +
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public 
string 
Area 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public 
string 
Blok 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 
string 

BlokKaizen  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 8
)8 9
]9 :
public 
int 
UnitDepartementId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 0
)0 1
]1 2
public 
Guid 
	MachineId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 8
)8 9
]9 :
public 
string 
UserMaintenanceId '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[   	
JsonProperty  	 
(   
PropertyName   "
=  # $
$str  % 5
)  5 6
]  6 7
public!! 
string!! 
UserOperatorId!! $
{!!% &
get!!' *
;!!* +
set!!, /
;!!/ 0
}!!1 2
public## 
void## 
SetId## 
(## 
Guid## 
identity## '
)##' (
{$$ 	
Id%% 
=%% 
identity%% 
;%% 
}&& 	
}'' 
public)) 

class)) 0
$UpdateEnginePlanningCommandValidator)) 5
:))6 7
AbstractValidator))8 I
<))I J'
UpdateEnginePlanningCommand))J e
>))e f
{** 
public++ 0
$UpdateEnginePlanningCommandValidator++ 3
(++3 4
)++4 5
{,, 	
RuleFor-- 
(-- 
command-- 
=>-- 
command-- &
.--& '
Id--' )
)--) *
.--* +
NotEmpty--+ 3
(--3 4
)--4 5
;--5 6
RuleFor.. 
(.. 
command.. 
=>.. 
command.. &
...& '
Area..' +
)..+ ,
..., -
NotEmpty..- 5
(..5 6
)..6 7
;..7 8
RuleFor// 
(// 
command// 
=>// 
command// &
.//& '
Blok//' +
)//+ ,
.//, -
NotEmpty//- 5
(//5 6
)//6 7
;//7 8
RuleFor00 
(00 
command00 
=>00 
command00 &
.00& '

BlokKaizen00' 1
)001 2
.002 3
NotEmpty003 ;
(00; <
)00< =
;00= >
RuleFor11 
(11 
command11 
=>11 
command11 &
.11& '
UnitDepartementId11' 8
)118 9
.119 :
NotEmpty11: B
(11B C
)11C D
;11D E
RuleFor22 
(22 
command22 
=>22 
command22 &
.22& '
	MachineId22' 0
)220 1
.221 2
NotEmpty222 :
(22: ;
)22; <
;22< =
RuleFor33 
(33 
command33 
=>33 
command33 &
.33& '
UserMaintenanceId33' 8
)338 9
.339 :
NotEmpty33: B
(33B C
)33C D
;33D E
RuleFor44 
(44 
command44 
=>44 
command44 &
.44& '
UserOperatorId44' 5
)445 6
.446 7
NotEmpty447 ?
(44? @
)44@ A
;44A B
}55 	
}66 
}77 �Z
vD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\MachinesPlanning\MachinesPlanningDocument.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
MachinesPlanning .
{ 
public		 

class		 $
MachinesPlanningDocument		 )
:		* +

<		9 :$
MachinesPlanningDocument		: R
,		R S%
MachinesPlanningReadModel

: S
>

S T
{ 
public 
string 
Area 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
public
string
Blok
{
get
;
internal
set
;
}
public 
string 

BlokKaizen  
{! "
get# &
;& '
internal( 0
set1 4
;4 5
}6 7
public 
UnitId 
UnitDepartementId '
{( )
get* -
;- .
internal/ 7
set8 ;
;; <
}= >
public 
	MachineId 
	MachineId "
{# $
get% (
;( )
internal* 2
set3 6
;6 7
}8 9
public 
UserId 
UserMaintenanceId '
{( )
get* -
;- .
internal/ 7
set8 ;
;; <
}= >
public 
UserId 
UserOperatorId $
{% &
get' *
;* +
internal, 4
set5 8
;8 9
}: ;
public $
MachinesPlanningDocument '
(' (
Guid( ,
identity- 5
,5 6
string& ,
area- 1
,1 2
string& ,
blok- 1
,1 2
string& ,

blokKaizen- 7
,7 8
UnitId& ,
unitDepartmentId- =
,= >
	MachineId& /
	machineId0 9
,9 :
UserId& ,
userMaintenanceId- >
,> ?
UserId& ,
userOperatorId- ;
); <
:= >
base? C
(C D
identityD L
)L M
{ 	
Identity 
= 
identity 
;  
Area 
= 
area 
; 
Blok 
= 
blok 
; 

BlokKaizen   
=   

blokKaizen   #
;  # $
UnitDepartementId!! 
=!! 
unitDepartmentId!!  0
;!!0 1
	MachineId"" 
="" 
	machineId"" !
;""! "
UserMaintenanceId## 
=## 
userMaintenanceId##  1
;##1 2
UserOperatorId$$ 
=$$ 
userOperatorId$$ +
;$$+ ,
this&& 
.&& 

(&& 
)&&  
;&&  !
	ReadModel(( 
=(( 
new(( %
MachinesPlanningReadModel(( 5
(((5 6
this((6 :
.((: ;
Identity((; C
)((C D
{)) 
Area** 
=** 
this** 
.** 
Area**  
,**  !
Blok++ 
=++ 
this++ 
.++ 
Blok++  
,++  !

BlokKaizen,, 
=,, 
this,, !
.,,! "

BlokKaizen,," ,
,,,, -
UnitDepartementId-- !
=--" #
this--$ (
.--( )
UnitDepartementId--) :
.--: ;
Value--; @
,--@ A
	MachineId.. 
=.. 
this..  
...  !
	MachineId..! *
...* +
Value..+ 0
,..0 1
UserMaintenanceId// !
=//" #
this//$ (
.//( )
UserMaintenanceId//) :
.//: ;
Value//; @
,//@ A
UserOperatorId00 
=00  
this00! %
.00% &
UserOperatorId00& 4
.004 5
Value005 :
}11 
;11
	ReadModel33 
.33 
AddDomainEvent33 $
(33$ %
new33% (
OnAddEnginePlanning33) <
(33< =
this33= A
.33A B
Identity33B J
)33J K
)33K L
;33L M
}44 	
public66 $
MachinesPlanningDocument66 '
(66' (%
MachinesPlanningReadModel66( A
	readModel66B K
)66K L
:66M N
base66O S
(66S T
	readModel66T ]
)66] ^
{77 	
this88 
.88 
Area88 
=88 
	readModel88 !
.88! "
Area88" &
;88& '
this99 
.99 
Blok99 
=99 
	readModel99 !
.99! "
Blok99" &
;99& '
this:: 
.:: 

BlokKaizen:: 
=:: 
	readModel:: '
.::' (

BlokKaizen::( 2
;::2 3
this;; 
.;; 
UnitDepartementId;; "
=;;# $
	readModel;;% .
.;;. /
UnitDepartementId;;/ @
.;;@ A
HasValue;;A I
?;;J K
new;;L O
UnitId;;P V
(;;V W
	readModel;;W `
.;;` a
UnitDepartementId;;a r
.;;r s
Value;;s x
);;x y
:;;z {
null	;;| �
;
;;� �
this<< 
.<< 
	MachineId<< 
=<< 
	readModel<< &
.<<& '
	MachineId<<' 0
.<<0 1
HasValue<<1 9
?<<: ;
new<<< ?
	MachineId<<@ I
(<<I J
	readModel<<J S
.<<S T
	MachineId<<T ]
.<<] ^
Value<<^ c
)<<c d
:<<e f
null<<g k
;<<k l
this== 
.== 
UserMaintenanceId== "
===# $
new==% (
UserId==) /
(==/ 0
	readModel==0 9
.==9 :
UserMaintenanceId==: K
)==K L
;==L M
this>> 
.>> 
UserOperatorId>> 
=>>  !
new>>" %
UserId>>& ,
(>>, -
	readModel>>- 6
.>>6 7
UserOperatorId>>7 E
)>>E F
;>>F G
}?? 	
publicAA 
voidAA 

ChangeAreaAA 
(AA 
stringAA %
valueAA& +
)AA+ ,
{BB 	
ifCC 
(CC 
AreaCC 
!=CC 
valueCC 
)CC 
{DD 
AreaEE 
=EE 
valueEE 
;EE 
	ReadModelFF 
.FF 
AreaFF 
=FF  
AreaFF! %
;FF% &
thisHH 
.HH 
MarkModifiedHH !
(HH! "
)HH" #
;HH# $
}II 
}JJ 	
publicLL 
voidLL 

ChangeBlokLL 
(LL 
stringLL %
valueLL& +
)LL+ ,
{MM 	
ifNN 
(NN 
BlokNN 
!=NN 
valueNN 
)NN 
{OO 
BlokPP 
=PP 
valuePP 
;PP 
	ReadModelQQ 
.QQ 
BlokQQ 
=QQ  
BlokQQ! %
;QQ% &
thisSS 
.SS 
MarkModifiedSS !
(SS! "
)SS" #
;SS# $
}TT 
}UU 	
publicWW 
voidWW 
ChangeBlokKaizenWW $
(WW$ %
stringWW% +
valueWW, 1
)WW1 2
{XX 	
ifYY 
(YY 

BlokKaizenYY 
!=YY 
valueYY #
)YY# $
{ZZ 

BlokKaizen[[ 
=[[ 
value[[ "
;[[" #
	ReadModel\\ 
.\\ 

BlokKaizen\\ $
=\\% &

BlokKaizen\\' 1
;\\1 2
this^^ 
.^^ 
MarkModified^^ !
(^^! "
)^^" #
;^^# $
}__ 
}`` 	
publicbb 
voidbb "
ChangeUnitDepartmentIdbb *
(bb* +
intbb+ .
valuebb/ 4
)bb4 5
{cc 	
ifdd 
(dd 
UnitDepartementIddd !
.dd! "
Valuedd" '
!=dd( *
valuedd+ 0
)dd0 1
{ee 
UnitDepartementIdff !
=ff" #
newff$ '
UnitIdff( .
(ff. /
valueff/ 4
)ff4 5
;ff5 6
	ReadModelgg 
.gg 
UnitDepartementIdgg +
=gg, -
UnitDepartementIdgg. ?
.gg? @
Valuegg@ E
;ggE F
thisii 
.ii 
MarkModifiedii !
(ii! "
)ii" #
;ii# $
}jj 
}kk 	
publicmm 
voidmm 
ChangeMachineIdmm #
(mm# $
Guidmm$ (
valuemm) .
)mm. /
{nn 	
ifoo 
(oo 
	MachineIdoo 
.oo 
Valueoo 
!=oo !
valueoo" '
)oo' (
{pp 
	MachineIdqq 
=qq 
newqq 
	MachineIdqq  )
(qq) *
valueqq* /
)qq/ 0
;qq0 1
	ReadModelrr 
.rr 
	MachineIdrr #
=rr$ %
	MachineIdrr& /
.rr/ 0
Valuerr0 5
;rr5 6
thistt 
.tt 
MarkModifiedtt !
(tt! "
)tt" #
;tt# $
}uu 
}vv 	
publicxx 
voidxx #
ChangeUserMaintenanceIdxx +
(xx+ ,
stringxx, 2
valuexx3 8
)xx8 9
{yy 	
ifzz 
(zz 
UserMaintenanceIdzz !
.zz! "
Valuezz" '
!=zz( *
valuezz+ 0
)zz0 1
{{{ 
UserMaintenanceId|| !
=||" #
new||$ '
UserId||( .
(||. /
value||/ 4
)||4 5
;||5 6
	ReadModel}} 
.}} 
UserMaintenanceId}} +
=}}, -
UserMaintenanceId}}. ?
.}}? @
Value}}@ E
;}}E F
this 
. 
MarkModified !
(! "
)" #
;# $
}
�� 
}
�� 	
public
�� 
void
�� "
ChangeUserOperatorId
�� (
(
��( )
string
��) /
value
��0 5
)
��5 6
{
�� 	
if
�� 
(
�� 
UserOperatorId
�� 
.
�� 
Value
�� $
!=
��% '
value
��( -
)
��- .
{
�� 
UserOperatorId
�� 
=
��  
new
��! $
UserId
��% +
(
��+ ,
value
��, 1
)
��1 2
;
��2 3
	ReadModel
�� 
.
�� 
UserOperatorId
�� (
=
��) *
UserOperatorId
��+ 9
.
��9 :
Value
��: ?
;
��? @
this
�� 
.
�� 
MarkModified
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 	
	protected
�� 
override
�� &
MachinesPlanningDocument
�� 3
	GetEntity
��4 =
(
��= >
)
��> ?
{
�� 	
return
�� 
this
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\MachinesPlanning\ReadModels\MachinesPlanningReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
MachinesPlanning .
.. /

ReadModels/ 9
{ 
public 

class %
MachinesPlanningReadModel *
:+ ,

{ 
public 
string 
Area 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
public		 
string		 
Blok		 
{		 
get		  
;		  !
internal		" *
set		+ .
;		. /
}		0 1
public

 
string

 

BlokKaizen

  
{

! "
get

# &
;

& '
internal

( 0
set

1 4
;

4 5
}

6 7
public 
int 
? 
UnitDepartementId %
{& '
get( +
;+ ,
internal- 5
set6 9
;9 :
}; <
public 
Guid 
? 
	MachineId 
{  
get! $
;$ %
internal& .
set/ 2
;2 3
}4 5
public
string
UserMaintenanceId
{
get
;
internal
set
;
}
public 
string 
UserOperatorId $
{% &
get' *
;* +
internal, 4
set5 8
;8 9
}: ;
public %
MachinesPlanningReadModel (
(( )
Guid) -
identity. 6
)6 7
:8 9
base: >
(> ?
identity? G
)G H
{I J
}K L
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\MachinesPlanning\Repositories\IMachinesPlanningRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
MachinesPlanning .
.. /
Repositories/ ;
{ 
public 

	interface '
IMachinesPlanningRepository 0
:1 2 
IAggregateRepository3 G
<G H$
MachinesPlanningDocumentH `
,` a%
MachinesPlanningReadModelb {
>{ |
{ 
} 
}		 �
sD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Machines\Commands\AddNewMachineCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Machines &
.& '
Commands' /
{ 
public 

class  
AddNewMachineCommand %
:& '
ICommand( 0
<0 1
MachineDocument1 @
>@ A
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% 4
)		4 5
]		5 6
public

 
string

 


 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public
string
Location
{
get
;
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 4
)4 5
]5 6
public 
string 

{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 4
)4 5
]5 6
public 
string 

{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
public 

class )
AddNewMachineCommandValidator .
:/ 0
AbstractValidator1 B
<B C 
AddNewMachineCommandC W
>W X
{ 
public )
AddNewMachineCommandValidator ,
(, -
)- .
{ 	
RuleFor 
( 
r 
=> 
r 
. 

)( )
.) *
NotEmpty* 2
(2 3
)3 4
;4 5
RuleFor 
( 
r 
=> 
r 
. 
Location #
)# $
.$ %
NotEmpty% -
(- .
). /
;/ 0
RuleFor 
( 
r 
=> 
r 
. 

)( )
.) *
NotEmpty* 2
(2 3
)3 4
;4 5
RuleFor 
( 
r 
=> 
r 
. 

)( )
.) *
NotEmpty* 2
(2 3
)3 4
;4 5
} 	
} 
}   �
{D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Machines\Commands\RemoveExistingMachineCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Machines &
.& '
Commands' /
{ 
public 

class (
RemoveExistingMachineCommand -
:. /
ICommand0 8
<8 9
MachineDocument9 H
>H I
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% )
)		) *
]		* +
public

 
Guid

 
Id

 
{

 
get

 
;

 
private

 %
set

& )
;

) *
}

+ ,
public 
void 
SetId 
( 
Guid 
Id !
)! "
{
this 
. 
Id 
= 
Id 
; 
} 	
} 
} �
{D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Machines\Commands\UpdateExistingMachineCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Machines &
.& '
Commands' /
{ 
public 

class (
UpdateExistingMachineCommand -
:. /
ICommand0 8
<8 9
MachineDocument9 H
>H I
{		 
[

 	
JsonProperty

	 
(

 
PropertyName

 "
=

# $
$str

% )
)

) *
]

* +
public 
Guid 
Id 
{ 
get 
; 
private %
set& )
;) *
}+ ,
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
string 

{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public 
string 
Location 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 4
)4 5
]5 6
public 
string 

{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 4
)4 5
]5 6
public 
string 

{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
void 
SetId 
( 
Guid 
Id !
)! "
{ 	
this 
. 
Id 
= 
Id 
; 
} 	
} 
public 

class 1
%UpdateExistingMachineCommandValidator 6
:7 8
AbstractValidator9 J
<J K(
UpdateExistingMachineCommandK g
>g h
{   
public!! 1
%UpdateExistingMachineCommandValidator!! 4
(!!4 5
)!!5 6
{"" 	
RuleFor## 
(## 
r## 
=>## 
r## 
.## 
Id## 
)## 
.## 
NotEmpty## '
(##' (
)##( )
;##) *
RuleFor$$ 
($$ 
r$$ 
=>$$ 
r$$ 
.$$ 

)$$( )
.$$) *
NotEmpty$$* 2
($$2 3
)$$3 4
;$$4 5
RuleFor%% 
(%% 
r%% 
=>%% 
r%% 
.%% 
Location%% #
)%%# $
.%%$ %
NotEmpty%%% -
(%%- .
)%%. /
;%%/ 0
RuleFor&& 
(&& 
r&& 
=>&& 
r&& 
.&& 

)&&( )
.&&) *
NotEmpty&&* 2
(&&2 3
)&&3 4
;&&4 5
RuleFor'' 
('' 
r'' 
=>'' 
r'' 
.'' 

)''( )
.'') *
NotEmpty''* 2
(''2 3
)''3 4
;''4 5
}(( 	
})) 
}** �6
eD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Machines\MachineDocument.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Machines &
{ 
public 

class 
MachineDocument  
:! "

<0 1
MachineDocument1 @
,@ A$
MachineDocumentReadModel		# ;
>		; <
{

 
public 
string 

{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
public 
string 
Location 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
public


{
get
;
private
set
;
}
public 
UnitId 

{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
public 
MachineDocument 
( 
Guid #
identity$ ,
,, -
string %

,3 4
string %
location& .
,. /


,: ;
UnitId %

)3 4
:5 6
base7 ;
(; <
identity< D
)D E
{ 	
Identity 
= 
identity 
;  

= 

;) *
Location 
= 
location 
;  

= 

;) *

= 

;) *
this 
. 

( 
)  
;  !
	ReadModel 
= 
new $
MachineDocumentReadModel 4
(4 5
Identity5 =
)= >
{ 

=   
this    $
.  $ %

,  2 3
Location!! 
=!! 
this!! 
.!!  
Location!!  (
,!!( )

="" 
this""  $
.""$ %

.""2 3
Value""3 8
,""8 9

=## 
this##  $
.##$ %

.##2 3
Value##3 8
}$$ 
;$$
}%% 	
public'' 
MachineDocument'' 
('' $
MachineDocumentReadModel'' 7
	readModel''8 A
)''A B
:''B C
base(( 
((( 
	readModel(( 
)(( 
{)) 	
this** 
.** 

=**  
	readModel**! *
.*** +

;**8 9
this++ 
.++ 
Location++ 
=++ 
	readModel++ %
.++% &
Location++& .
;++. /
this,, 
.,, 

=,,  
	readModel-- 
.-- 

.--' (
HasValue--( 0
?--1 2
new.. 

(..% &
	readModel..& /
.../ 0

...= >
Value..> C
)..C D
:..E F
null..G K
;..K L
this// 
.// 

=//  
	readModel00 
.00 

.00' (
HasValue00( 0
?001 2
new11 
UnitId11 
(11 
	readModel11 (
.11( )

.116 7
Value117 <
)11< =
:11> ?
null11@ D
;11D E
}22 	
public44 
void44 
SetLocation44 
(44  
string44  &
value44' ,
)44, -
{55 	
if66 
(66 
!66 
Location66 
.66 
Equals66 
(66  
value66  %
)66% &
)66& '
{77 
Location88 
=88 
value88  
;88  !
	ReadModel99 
.99 
Location99 "
=99# $
Location99% -
;99- .
MarkModified;; 
(;; 
);; 
;;; 
}<< 
}== 	
public?? 
void?? 
SetMachineTypeId?? $
(??$ %

value??3 8
)??8 9
{@@ 	
ifAA 
(AA 

!=AA  
valueAA! &
)AA& '
{BB 

=CC 
valueCC  %
;CC% &
	ReadModelDD 
.DD 

=DD( )

.DD7 8
ValueDD8 =
;DD= >
MarkModifiedFF 
(FF 
)FF 
;FF 
}GG 
}HH 	
publicJJ 
voidJJ 
SetWeavingUnitIdJJ $
(JJ$ %
UnitIdJJ% +
valueJJ, 1
)JJ1 2
{KK 	
ifLL 
(LL 

!=LL 
valueLL  %
)LL% &
{MM 

=NN 
valueNN  %
;NN% &
	ReadModelOO 
.OO 

=OO( )

.OO7 8
ValueOO8 =
;OO= >
MarkModifiedQQ 
(QQ 
)QQ 
;QQ 
}RR 
}SS 	
publicUU 
voidUU 
SetMachineNumberUU $
(UU$ %
stringUU% +
valueUU, 1
)UU1 2
{VV 	
ifWW 
(WW 
!WW 

.WW 
EqualsWW $
(WW$ %
valueWW% *
)WW* +
)WW+ ,
{XX 

=YY 
valueYY  %
;YY% &
	ReadModelZZ 
.ZZ 

=ZZ( )

;ZZ7 8
MarkModified\\ 
(\\ 
)\\ 
;\\ 
}]] 
}^^ 	
	protected`` 
override`` 
MachineDocument`` *
	GetEntity``+ 4
(``4 5
)``5 6
{aa 	
returnbb 
thisbb 
;bb 
}cc 	
}dd 
}ee �
yD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Machines\ReadModels\MachineDocumentReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Machines &
.& '

ReadModels' 1
{ 
public 

class $
MachineDocumentReadModel )
:* +

{		 
public

 $
MachineDocumentReadModel

 '
(

' (
Guid

( ,
identity

- 5
)

5 6
:

7 8
base

9 =
(

= >
identity

> F
)

F G
{

H I
}

J K
public 
string 

{$ %
get& )
;) *
internal+ 3
set4 7
;7 8
}9 :
public
int
?

{
get
;
internal
set
;
}
public 
Guid 
? 

{# $
get% (
;( )
internal* 2
set3 6
;6 7
}8 9
public 
string 
Location 
{  
get! $
;$ %
internal& .
set/ 2
;2 3
}4 5
} 
} �
uD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Machines\Repositories\IMachineRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Machines &
.& '
Repositories' 3
{ 
public 

	interface 
IMachineRepository '
:( ) 
IAggregateRepository* >
<> ?
MachineDocument? N
,N O$
MachineDocumentReadModelP h
>h i
{ 
} 
}		 �
yD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Machines\ValueObjects\MachineTypeValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Machines &
.& '
ValueObjects' 3
{ 
public		 

class		 "
MachineTypeValueObject		 '
:		( )
ValueObject		* 5
{

 
[ 	
JsonProperty	 
( 
PropertyName "
=" #
$str# '
)' (
]( )
public 
Guid 
Id 
{ 
get 
; 
} 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public 
string 
TypeName 
{  
get! $
;$ %
}& '
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% ,
), -
]- .
public 
int 
Speed 
{ 
get 
; 
}  !
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 2
)2 3
]3 4
public 
string 
MachineUnit !
{" #
get$ '
;' (
}) *
public "
MachineTypeValueObject %
(% &
MachineTypeDocument& 9
machineType: E
)E F
{ 	
Id 
= 
machineType 
. 
Identity %
;% &
TypeName 
= 
machineType "
." #
TypeName# +
;+ ,
Speed 
= 
machineType 
.  
Speed  %
;% &
MachineUnit 
= 
machineType %
.% &
MachineUnit& 1
;1 2
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{   	
yield!! 
return!! 
Id!! 
;!! 
yield"" 
return"" 
TypeName"" !
;""! "
yield## 
return## 
Speed## 
;## 
yield$$ 
return$$ 
MachineUnit$$ $
;$$$ %
}%% 	
}&& 
}'' �
{D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\MachineTypes\Commands\AddNewMachineTypeCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
MachineTypes *
.* +
Commands+ 3
{ 
public 

class $
AddNewMachineTypeCommand )
:* +
ICommand, 4
<4 5
MachineTypeDocument5 H
>H I
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% /
)		/ 0
]		0 1
public

 
string

 
TypeName

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% ,
), -
]- .
public
int
Speed
{
get
;
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 2
)2 3
]3 4
public 
string 
MachineUnit !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
public 

class -
!AddNewMachineTypeCommandValidator 2
:3 4
AbstractValidator5 F
<F G$
AddNewMachineTypeCommandG _
>_ `
{ 
public -
!AddNewMachineTypeCommandValidator 0
(0 1
)1 2
{ 	
RuleFor 
( 
r 
=> 
r 
. 
TypeName #
)# $
.$ %
NotEmpty% -
(- .
). /
;/ 0
RuleFor 
( 
r 
=> 
r 
. 
Speed  
)  !
.! "
NotEmpty" *
(* +
)+ ,
;, -
RuleFor 
( 
r 
=> 
r 
. 
MachineUnit &
)& '
.' (
NotEmpty( 0
(0 1
)1 2
;2 3
} 	
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\MachineTypes\Commands\RemoveExistingMachineTypeCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
MachineTypes *
.* +
Commands+ 3
{ 
public 

class ,
 RemoveExistingMachineTypeCommand 1
:2 3
ICommand4 <
<< =
MachineTypeDocument= P
>P Q
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% )
)		) *
]		* +
public

 
Guid

 
Id

 
{

 
get

 
;

 
private

 %
set

& )
;

) *
}

+ ,
public 
void 
SetId 
( 
Guid 
Id !
)! "
{
this 
. 
Id 
= 
Id 
; 
} 	
} 
} �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\MachineTypes\Commands\UpdateExistingMachineTypeCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
MachineTypes *
.* +
Commands+ 3
{ 
public 

class ,
 UpdateExistingMachineTypeCommand 1
:2 3
ICommand4 <
<< =
MachineTypeDocument= P
>P Q
{		 
[

 	
JsonProperty

	 
(

 
PropertyName

 "
=

# $
$str

% )
)

) *
]

* +
public 
Guid 
Id 
{ 
get 
; 
private %
set& )
;) *
}+ ,
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
string 
TypeName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% ,
), -
]- .
public 
int 
Speed 
{ 
get 
; 
set  #
;# $
}% &
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 2
)2 3
]3 4
public 
string 
MachineUnit !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
void 
SetId 
( 
Guid 
Id !
)! "
{ 	
this 
. 
Id 
= 
Id 
; 
} 	
} 
public 

class 5
)UpdateExistingMachineTypeCommandValidator :
:; <
AbstractValidator= N
<N O,
 UpdateExistingMachineTypeCommandO o
>o p
{ 
public 5
)UpdateExistingMachineTypeCommandValidator 8
(8 9
)9 :
{ 	
RuleFor   
(   
r   
=>   
r   
.   
Id   
)   
.   
NotEmpty   '
(  ' (
)  ( )
;  ) *
RuleFor!! 
(!! 
r!! 
=>!! 
r!! 
.!! 
TypeName!! #
)!!# $
.!!$ %
NotEmpty!!% -
(!!- .
)!!. /
;!!/ 0
RuleFor"" 
("" 
r"" 
=>"" 
r"" 
."" 
Speed""  
)""  !
.""! "
NotEmpty""" *
(""* +
)""+ ,
;"", -
RuleFor## 
(## 
r## 
=>## 
r## 
.## 
MachineUnit## &
)##& '
.##' (
NotEmpty##( 0
(##0 1
)##1 2
;##2 3
}$$ 	
}%% 
}&& �'
mD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\MachineTypes\MachineTypeDocument.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
MachineTypes *
{ 
public 

class 
MachineTypeDocument $
:% &

<4 5
MachineTypeDocument5 H
,H I 
MachineTypeReadModel		5 I
>		I J
{

 
public 
string 
TypeName 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
public 
int 
Speed 
{ 
get 
; 
private  '
set( +
;+ ,
}- .
public
string
MachineUnit
{
get
;
private
set
;
}
public 
MachineTypeDocument "
(" #
Guid# '
id( *
,* +
string# )
typeName* 2
,2 3
int# &
speed' ,
,, -
string# )
machineUnit* 5
)5 6
:6 7
base8 <
(< =
id= ?
)? @
{ 	
Identity 
= 
id 
; 
TypeName 
= 
typeName 
;  
Speed 
= 
speed 
; 
MachineUnit 
= 
machineUnit %
;% &
this 
. 

( 
)  
;  !
	ReadModel 
= 
new  
MachineTypeReadModel 0
(0 1
Identity1 9
)9 :
{ 
TypeName 
= 
TypeName #
,# $
Speed 
= 
Speed 
, 
MachineUnit 
= 
MachineUnit )
}   
;  
	ReadModel## 
.## 
AddDomainEvent## $
(##$ %
new##% (
OnAddMachineType##) 9
(##9 :
this##: >
.##> ?
Identity##? G
)##G H
)##H I
;##I J
}$$ 	
public&& 
MachineTypeDocument&& "
(&&" # 
MachineTypeReadModel&&# 7
	readModel&&8 A
)&&A B
:&&C D
base&&E I
(&&I J
	readModel&&J S
)&&S T
{'' 	
this(( 
.(( 
TypeName(( 
=(( 
	readModel(( %
.((% &
TypeName((& .
;((. /
this)) 
.)) 
Speed)) 
=)) 
	readModel)) "
.))" #
Speed))# (
;))( )
this** 
.** 
MachineUnit** 
=** 
	readModel** (
.**( )
MachineUnit**) 4
;**4 5
}++ 	
public-- 
void-- 
SetTypeName-- 
(--  
string--  &
value--' ,
)--, -
{.. 	
if00 
(00 
value00 
!=00 
TypeName00  
)00  !
{11 
TypeName22 
=22 
value22  
;22  !
	ReadModel33 
.33 
TypeName33 "
=33# $
TypeName33% -
;33- .
MarkModified55 
(55 
)55 
;55 
}66 
}77 	
public99 
void99 
SetMachineSpeed99 #
(99# $
int99$ '
value99( -
)99- .
{:: 	
if<< 
(<< 
value<< 
!=<< 
Speed<< 
)<< 
{== 
Speed>> 
=>> 
value>> 
;>> 
	ReadModel?? 
.?? 
Speed?? 
=??  !
Speed??" '
;??' (
MarkModifiedAA 
(AA 
)AA 
;AA 
}BB 
}CC 	
publicEE 
voidEE 
SetMachineUnitEE "
(EE" #
stringEE# )
valueEE* /
)EE/ 0
{FF 	
ifHH 
(HH 
valueHH 
!=HH 
MachineUnitHH #
)HH# $
{II 
MachineUnitKK 
=KK 
valueKK #
;KK# $
	ReadModelLL 
.LL 
MachineUnitLL %
=LL& '
MachineUnitLL( 3
;LL3 4
MarkModifiedNN 
(NN 
)NN 
;NN 
}OO 
}PP 	
	protectedRR 
overrideRR 
MachineTypeDocumentRR .
	GetEntityRR/ 8
(RR8 9
)RR9 :
{SS 	
returnTT 
thisTT 
;TT 
}UU 	
}VV 
}WW �	
yD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\MachineTypes\ReadModels\MachineTypeReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
MachineTypes *
.* +

ReadModels+ 5
{ 
public 

class  
MachineTypeReadModel %
:& '

{ 
public  
MachineTypeReadModel #
(# $
Guid$ (
identity) 1
)1 2
:3 4
base5 9
(9 :
identity: B
)B C
{D E
}F G
public

 
string

 
TypeName

 
{

  
get

! $
;

$ %
internal

& .
set

/ 2
;

2 3
}

4 5
public 
int 
Speed 
{ 
get 
; 
internal  (
set) ,
;, -
}. /
public 
string 
MachineUnit !
{" #
get$ '
;' (
internal) 1
set2 5
;5 6
}7 8
}
} �
}D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\MachineTypes\Repositories\IMachineTypeRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
MachineTypes *
.* +
Repositories+ 7
{ 
public 

	interface "
IMachineTypeRepository +
:, - 
IAggregateRepository. B
<B C
MachineTypeDocumentC V
,V W 
MachineTypeReadModelX l
>l m
{ 
} 
}		 �
xD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Materials\Commands\PlaceMaterialTypeCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Materials '
.' (
Commands( 0
{ 
public		 

class		 $
PlaceMaterialTypeCommand		 )
:		* +
ICommand		, 4
<		4 5 
MaterialTypeDocument		5 I
>		I J
{

 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public 
string 
Code 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 4
)4 5
]5 6
public 
List 
< !
YarnNumberValueObject )
>) *

{9 :
get; >
;> ?
set@ C
;C D
}E F
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 2
)2 3
]3 4
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
public 

class -
!PlaceMaterialTypeCommandValidator 2
:3 4
AbstractValidator5 F
<F G$
PlaceMaterialTypeCommandG _
>_ `
{ 
public -
!PlaceMaterialTypeCommandValidator 0
(0 1
)1 2
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
Code' +
)+ ,
., -
NotEmpty- 5
(5 6
)6 7
;7 8
RuleFor 
( 
command 
=> 
command &
.& '
Name' +
)+ ,
., -
NotEmpty- 5
(5 6
)6 7
;7 8
} 	
} 
}   �
yD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Materials\Commands\RemoveMaterialTypeCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Materials '
.' (
Commands( 0
{ 
public 

class %
RemoveMaterialTypeCommand *
:+ ,
ICommand- 5
<5 6 
MaterialTypeDocument6 J
>J K
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% )
)		) *
]		* +
public

 
Guid

 
Id

 
{

 
get

 
;

 
private

 %
set

& )
;

) *
}

+ ,
public 
void 
SetId 
( 
Guid 
Id !
)! "
{
this 
. 
Id 
= 
Id 
; 
} 	
} 
} �
yD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Materials\Commands\UpdateMaterialTypeCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Materials '
.' (
Commands( 0
{		 
public

 

class

 %
UpdateMaterialTypeCommand

 *
:

+ ,
ICommand

- 5
<

5 6 
MaterialTypeDocument

6 J
>

J K
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% )
)) *
]* +
public
Guid
Id
{
get
;
private
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public 
string 
Code 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 4
)4 5
]5 6
public 
List 
< !
YarnNumberValueObject )
>) *

{9 :
get; >
;> ?
set@ C
;C D
}E F
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 2
)2 3
]3 4
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
void 
SetId 
( 
Guid 
Id !
)! "
{ 	
this 
. 
Id 
= 
Id 
; 
} 	
} 
public!! 

class!! -
!UpdateMaterialTypeCommadValidator!! 2
:!!3 4
AbstractValidator!!5 F
<!!F G%
UpdateMaterialTypeCommand!!G `
>!!` a
{"" 
public## -
!UpdateMaterialTypeCommadValidator## 0
(##0 1
)##1 2
{$$ 	
RuleFor%% 
(%% 
command%% 
=>%% 
command%% &
.%%& '
Code%%' +
)%%+ ,
.%%, -
NotEmpty%%- 5
(%%5 6
)%%6 7
;%%7 8
RuleFor&& 
(&& 
command&& 
=>&& 
command&& &
.&&& '
Name&&' +
)&&+ ,
.&&, -
NotEmpty&&- 5
(&&5 6
)&&6 7
;&&7 8
}'' 	
}(( 
})) �?
kD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Materials\MaterialTypeDocument.cs
	namespace

 	
Manufactures


 
.

 
Domain

 
.

 
	Materials

 '
{ 
public 

class  
MaterialTypeDocument %
:& '

<5 6 
MaterialTypeDocument6 J
,J K!
MaterialTypeReadModelL a
>a b
{
public 
string 
Code 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
string 
Description !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
IReadOnlyCollection "
<" #!
YarnNumberValueObject# 8
>8 9

{H I
getJ M
;M N
privateO V
setW Z
;Z [
}\ ]
public  
MaterialTypeDocument #
(# $
Guid$ (
id) +
,+ ,
string "
code# '
,' (
string "
name# '
,' (
string "
description# .
). /
:0 1
base2 6
(6 7
id7 9
)9 :
{ 	
Identity 
= 
id 
; 
Code 
= 
code 
; 
Name 
= 
name 
; 
Description 
= 
description %
;% &

= 
new 
List  $
<$ %!
YarnNumberValueObject% :
>: ;
(; <
)< =
;= >
this 
. 

( 
)  
;  !
	ReadModel!! 
=!! 
new!! !
MaterialTypeReadModel!! 1
(!!1 2
Identity!!2 :
)!!: ;
{"" 
Code## 
=## 
this## 
.## 
Code##  
,##  !
Name$$ 
=$$ 
this$$ 
.$$ 
Name$$  
,$$  !
Description%% 
=%% 
this%% "
.%%" #
Description%%# .
}&& 
;&&
	ReadModel(( 
.(( 
AddDomainEvent(( $
((($ %
new((% (
OnMaterialTypePlace(() <
(((< =
this((= A
.((A B
Identity((B J
)((J K
)((K L
;((L M
})) 	
public++  
MaterialTypeDocument++ #
(++# $!
MaterialTypeReadModel++$ 9
	readModel++: C
)++C D
:++E F
base++G K
(++K L
	readModel++L U
)++U V
{,, 	
this-- 
.-- 
Code-- 
=-- 
	readModel-- !
.--! "
Code--" &
;--& '
this.. 
... 
Name.. 
=.. 
	readModel.. !
...! "
Name.." &
;..& '
this// 
.// 
Description// 
=// 
	readModel// (
.//( )
Description//) 4
;//4 5
this00 
.00 

=00  
String11 
.11 

(11$ %
	readModel11% .
.11. /

)11< =
?11> ?
new22 
List22 
<22 !
YarnNumberValueObject22 2
>222 3
(223 4
)224 5
:226 7
	readModel228 A
.22A B

.33C D
Deserialize33D O
<33O P
List33P T
<33T U!
YarnNumberValueObject33U j
>33j k
>33k l
(33l m
)33m n
;33n o
}44 	
public66 
void66 

(66! "!
YarnNumberValueObject66" 7
value668 =
)66= >
{77 	
	Validator88 
.88 
ThrowIfNullOrEmpty88 (
(88( )
(88) *
)88* +
=>88, .
value88/ 4
.884 5
Code885 9
)889 :
;88: ;
var:: 
list:: 
=:: 

.::$ %
ToList::% +
(::+ ,
)::, -
;::- .
list;; 
.;; 
Add;; 
(;; 
value;; 
);; 
;;; 

=<< 
list<<  
;<<  !
	ReadModel== 
.== 

===$ %

.==3 4
	Serialize==4 =
(=== >
)==> ?
;==? @
MarkModified?? 
(?? 
)?? 
;?? 
}@@ 	
publicBB 
voidBB 
RemoveRingNumberBB $
(BB$ %!
YarnNumberValueObjectBB% :
valueBB; @
)BB@ A
{CC 	
	ValidatorDD 
.DD 
ThrowIfNullOrEmptyDD (
(DD( )
(DD) *
)DD* +
=>DD, .
valueDD/ 4
.DD4 5
CodeDD5 9
)DD9 :
;DD: ;
varFF 
listFF 
=FF 

.FF$ %
ToListFF% +
(FF+ ,
)FF, -
;FF- .
listGG 
.GG 
RemoveGG 
(GG 
valueGG 
)GG 
;GG 

=HH 
listHH  
;HH  !
	ReadModelII 
.II 

=II$ %

.II3 4
	SerializeII4 =
(II= >
)II> ?
;II? @
MarkModifiedKK 
(KK 
)KK 
;KK 
}LL 	
publicNN 
voidNN 
SetCodeNN 
(NN 
stringNN "
codeNN# '
)NN' (
{OO 	
ifPP 
(PP 
codePP 
!=PP 
CodePP 
)PP 
{QQ 
CodeRR 
=RR 
codeRR 
;RR 
	ReadModelSS 
.SS 
CodeSS 
=SS  
CodeSS! %
;SS% &
MarkModifiedUU 
(UU 
)UU 
;UU 
}VV 
}WW 	
publicYY 
voidYY 
SetNameYY 
(YY 
stringYY "
nameYY# '
)YY' (
{ZZ 	
if[[ 
([[ 
name[[ 
!=[[ 
Name[[ 
)[[ 
{\\ 
Name]] 
=]] 
name]] 
;]] 
	ReadModel^^ 
.^^ 
Name^^ 
=^^  
Name^^! %
;^^% &
MarkModified`` 
(`` 
)`` 
;`` 
}aa 
}bb 	
publicdd 
voiddd 
SetDescriptiondd "
(dd" #
stringdd# )
descriptiondd* 5
)dd5 6
{ee 	
ifff 
(ff 
descriptionff 
!=ff 
Descriptionff *
)ff* +
{gg 
Descriptionhh 
=hh 
descriptionhh )
;hh) *
	ReadModelii 
.ii 
Descriptionii %
=ii& '
Descriptionii( 3
;ii3 4
MarkModifiedkk 
(kk 
)kk 
;kk 
}ll 
}mm 	
	protectedoo 
overrideoo  
MaterialTypeDocumentoo /
	GetEntityoo0 9
(oo9 :
)oo: ;
{pp 	
returnqq 
thisqq 
;qq 
}rr 	
}ss 
}tt �

wD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Materials\ReadModels\MaterialTypeReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Materials '
.' (

ReadModels( 2
{ 
public 

class !
MaterialTypeReadModel &
:' (

{ 
public !
MaterialTypeReadModel $
($ %
Guid% )
identity* 2
)2 3
:4 5
base6 :
(: ;
identity; C
)C D
{E F
}G H
public

 
string

 
Code

 
{

 
get

  
;

  !
internal

" *
set

+ .
;

. /
}

0 1
public 
string 
Name 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
public 
string 
Description !
{" #
get$ '
;' (
internal) 1
set2 5
;5 6
}7 8
public
string

{
get
;
internal
set
;
}
} 
} �
{D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Materials\Repositories\IMaterialTypeRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Materials '
.' (
Repositories( 4
{ 
public 

	interface #
IMaterialTypeRepository ,
:- . 
IAggregateRepository/ C
<C D 
MaterialTypeDocumentD X
,X Y!
MaterialTypeReadModelZ o
>o p
{ 
} 
}		 �
rD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Operators\Commands\AddOperatorCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Operators '
.' (
Commands( 0
{ 
public		 

class		 
AddOperatorCommand		 #
:		$ %
ICommand		& .
<		. /
OperatorDocument		/ ?
>		? @
{

 
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ 1
)1 2
]2 3
public 
CoreAccountCommand !
CoreAccount" -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ ,
), -
]- .
public 
UnitId 
UnitId 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ +
)+ ,
], -
public 
string 
Group 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ 0
)0 1
]1 2
public 
string 

Assignment  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ *
)* +
]+ ,
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
} 
public 

class '
AddOperatorCommandValidator ,
:- .
AbstractValidator/ @
<@ A
AddOperatorCommandA S
>S T
{ 
public '
AddOperatorCommandValidator *
(* +
)+ ,
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
CoreAccount' 2
.2 3
MongoId3 :
): ;
.; <
NotEmpty< D
(D E
)E F
;F G
RuleFor   
(   
command   
=>   
command   &
.  & '
UnitId  ' -
.  - .
Value  . 3
)  3 4
.  4 5
NotEmpty  5 =
(  = >
)  > ?
;  ? @
RuleFor!! 
(!! 
command!! 
=>!! 
command!! &
.!!& '
Group!!' ,
)!!, -
.!!- .
NotEmpty!!. 6
(!!6 7
)!!7 8
;!!8 9
RuleFor"" 
("" 
command"" 
=>"" 
command"" &
.""& '

Assignment""' 1
)""1 2
.""2 3
NotEmpty""3 ;
(""; <
)""< =
;""= >
RuleFor## 
(## 
command## 
=>## 
command## &
.##& '
Type##' +
)##+ ,
.##, -
NotEmpty##- 5
(##5 6
)##6 7
;##7 8
}$$ 	
}%% 
}&& �
uD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Operators\Commands\RemoveOperatorCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Operators '
.' (
Commands( 0
{ 
public 

class !
RemoveOperatorCommand &
:' (
ICommand) 1
<1 2
OperatorDocument2 B
>B C
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% )
)		) *
]		* +
public

 
Guid

 
Id

 
{

 
get

 
;

 
private

 %
set

& )
;

) *
}

+ ,
public 
void 
SetId 
( 
Guid 
Id !
)! "
{
this 
. 
Id 
= 
Id 
; 
} 	
} 
} � 
uD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Operators\Commands\UpdateOperatorCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Operators '
.' (
Commands( 0
{		 
public

 

class

 !
UpdateOperatorCommand

 &
:

' (
ICommand

) 1
<

1 2
OperatorDocument

2 B
>

B C
{ 
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ (
)( )
]) *
public
Guid
Id
{
get
;
private
set
;
}
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ 1
)1 2
]2 3
public 
CoreAccountCommand !
CoreAccount" -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ ,
), -
]- .
public 
UnitId 
UnitId 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ +
)+ ,
], -
public 
string 
Group 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ 0
)0 1
]1 2
public 
string 

Assignment  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ *
)* +
]+ ,
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
public 
void 
SetId 
( 
Guid 
Id !
)! "
{ 	
this   
.   
Id   
=   
Id   
;   
}!! 	
}"" 
public$$ 

class$$ *
UpdateOperatorCommandValidator$$ /
:$$0 1
AbstractValidator$$2 C
<$$C D!
UpdateOperatorCommand$$D Y
>$$Y Z
{%% 
public&& *
UpdateOperatorCommandValidator&& -
(&&- .
)&&. /
{'' 	
RuleFor(( 
((( 
command(( 
=>(( 
command(( &
.((& '
CoreAccount((' 2
.((2 3
MongoId((3 :
)((: ;
.((; <
NotEmpty((< D
(((D E
)((E F
;((F G
RuleFor)) 
()) 
command)) 
=>)) 
command)) &
.))& '
UnitId))' -
.))- .
Value)). 3
)))3 4
.))4 5
NotEmpty))5 =
())= >
)))> ?
;))? @
RuleFor** 
(** 
command** 
=>** 
command** &
.**& '
Group**' ,
)**, -
.**- .
NotEmpty**. 6
(**6 7
)**7 8
;**8 9
RuleFor++ 
(++ 
command++ 
=>++ 
command++ &
.++& '

Assignment++' 1
)++1 2
.++2 3
NotEmpty++3 ;
(++; <
)++< =
;++= >
RuleFor,, 
(,, 
command,, 
=>,, 
command,, &
.,,& '
Type,,' +
),,+ ,
.,,, -
NotEmpty,,- 5
(,,5 6
),,6 7
;,,7 8
}-- 	
}.. 
}// �>
gD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Operators\OperatorDocument.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Operators '
{ 
public 

class 
OperatorDocument !
:		 	

 
<		 
OperatorDocument		 (
,		( )
OperatorReadModel		* ;
>		; <
{

 
public 
CoreAccount 
CoreAccount &
{' (
get) ,
;, -
private. 5
set6 9
;9 :
}; <
public 
UnitId 
UnitId 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public
string
Group
{
get
;
private
set
;
}
public 
string 

Assignment  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
string 
Type 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
OperatorDocument 
(  
Guid  $
identity% -
,- .
CoreAccount  +
coreAccount, 7
,7 8
UnitId  &
unitId' -
,- .
string  &
group' ,
,, -
string  &

assignment' 1
,1 2
string  &
type' +
)+ ,
:- .
base/ 3
(3 4
identity4 <
)< =
{ 	
Identity 
= 
identity 
;  
CoreAccount 
= 
coreAccount %
;% &
UnitId 
= 
unitId 
; 
Group 
= 
group 
; 

Assignment 
= 

assignment #
;# $
Type 
= 
type 
; 

( 
) 
; 
	ReadModel!! 
=!! 
new!! 
OperatorReadModel!! -
(!!- .
Identity!!. 6
)!!6 7
{"" 
CoreAccount## 
=## 
this## "
.##" #
CoreAccount### .
.##. /
	Serialize##/ 8
(##8 9
)##9 :
,##: ;
UnitId$$ 
=$$ 
this$$ 
.$$ 
UnitId$$ $
.$$$ %
Value$$% *
,$$* +
Group%% 
=%% 
this%% 
.%% 
Group%% "
,%%" #

Assignment&& 
=&& 
this&& !
.&&! "

Assignment&&" ,
,&&, -
Type'' 
='' 
this'' 
.'' 
Type''  
}(( 
;((
})) 	
public++ 
OperatorDocument++ 
(++  
OperatorReadModel++  1
	readModel++2 ;
)++; <
:++= >
base++? C
(++C D
	readModel++D M
)++M N
{,, 	
this-- 
.-- 
CoreAccount-- 
=-- 
	readModel-- (
.--( )
CoreAccount--) 4
.--4 5
Deserialize--5 @
<--@ A
CoreAccount--A L
>--L M
(--M N
)--N O
;--O P
this.. 
... 
UnitId.. 
=.. 
	readModel.. #
...# $
UnitId..$ *
...* +
HasValue..+ 3
?..4 5
new..6 9
UnitId..: @
(..@ A
	readModel..A J
...J K
UnitId..K Q
...Q R
Value..R W
)..W X
:..Y Z
null..[ _
;.._ `
this// 
.// 
Group// 
=// 
	readModel// "
.//" #
Group//# (
;//( )
this00 
.00 

Assignment00 
=00 
	readModel00 '
.00' (

Assignment00( 2
;002 3
this11 
.11 
Type11 
=11 
	readModel11 !
.11! "
Type11" &
;11& '
}22 	
public44 
void44 
SetCoreAccount44 "
(44" #
CoreAccount44# .
value44/ 4
)444 5
{55 	
if66 
(66 
!66 
value66 
.66 
MongoId66 
.66 
Equals66 $
(66$ %
CoreAccount66% 0
.660 1
MongoId661 8
)668 9
)669 :
{77 
CoreAccount88 
=88 
value88 #
;88# $
	ReadModel99 
.99 
CoreAccount99 %
=99& '
CoreAccount99( 3
.993 4
	Serialize994 =
(99= >
)99> ?
;99? @
MarkModified;; 
(;; 
);; 
;;; 
}<< 
}== 	
public?? 
void?? 
	SetUnitId?? 
(?? 
UnitId?? $
unitId??% +
)??+ ,
{@@ 	
ifAA 
(AA 
UnitIdAA 
.AA 
ValueAA 
!=AA 
unitIdAA %
.AA% &
ValueAA& +
)AA+ ,
{BB 
UnitIdCC 
=CC 
unitIdCC 
;CC  
	ReadModelDD 
.DD 
UnitIdDD  
=DD! "
UnitIdDD# )
.DD) *
ValueDD* /
;DD/ 0
MarkModifiedFF 
(FF 
)FF 
;FF 
}GG 
}HH 	
publicJJ 
voidJJ 
SetGroupJJ 
(JJ 
stringJJ #
valueJJ$ )
)JJ) *
{KK 	
ifLL 
(LL 
!LL 
valueLL 
.LL 
EqualsLL 
(LL 
GroupLL "
)LL" #
)LL# $
{MM 
GroupNN 
=NN 
valueNN 
;NN 
	ReadModelOO 
.OO 
GroupOO 
=OO  !
GroupOO" '
;OO' (
MarkModifiedQQ 
(QQ 
)QQ 
;QQ 
}RR 
}SS 	
publicUU 
voidUU 

(UU! "
stringUU" (
valueUU) .
)UU. /
{VV 	
ifWW 
(WW 
!WW 
valueWW 
.WW 
EqualsWW 
(WW 

AssignmentWW (
)WW( )
)WW) *
{XX 

AssignmentYY 
=YY 
valueYY "
;YY" #
	ReadModelZZ 
.ZZ 

AssignmentZZ $
=ZZ% &

AssignmentZZ' 1
;ZZ1 2
MarkModified\\ 
(\\ 
)\\ 
;\\ 
}]] 
}^^ 	
public`` 
void`` 
SetType`` 
(`` 
string`` "
value``# (
)``( )
{aa 	
ifbb 
(bb 
!bb 
valuebb 
.bb 
Equalsbb 
(bb 
Typebb "
)bb" #
)bb# $
{cc 
Typedd 
=dd 
valuedd 
;dd 
	ReadModelee 
.ee 
Typeee 
=ee  
Typeee! %
;ee% &
MarkModifiedgg 
(gg 
)gg 
;gg 
}hh 
}ii 	
	protectedkk 
overridekk 
OperatorDocumentkk +
	GetEntitykk, 5
(kk5 6
)kk6 7
{ll 	
returnmm 
thismm 
;mm 
}nn 	
}oo 
}pp �
sD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Operators\ReadModels\OperatorReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Operators '
.' (

ReadModels( 2
{ 
public 

class 
OperatorReadModel "
:# $

{ 
public		 
OperatorReadModel		  
(		  !
Guid		! %
identity		& .
)		. /
:		0 1
base		2 6
(		6 7
identity		7 ?
)		? @
{		A B
}		C D
public 
string 
CoreAccount !
{" #
get$ '
;' (
internal) 1
set2 5
;5 6
}7 8
public 
string 
Group 
{ 
get !
;! "
internal# +
set, /
;/ 0
}1 2
public
string

Assignment
{
get
;
internal
set
;
}
public 
string 
Type 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
public 
int 
? 
UnitId 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
} 
} �
wD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Operators\Repositories\IOperatorRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Operators '
.' (
Repositories( 4
{ 
public 

	interface 
IOperatorRepository (
:) * 
IAggregateRepository+ ?
<? @
OperatorDocument@ P
,P Q
OperatorReadModelR c
>c d
{ 
} 
}		 �
vD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\Commands\FabricConstructionCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
Commands% -
{ 
public 

class %
FabricConstructionCommand *
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% )
)) *
]* +
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
[

 	
JsonProperty

	 
(

 
PropertyName

 "
=

# $
$str

% 9
)

9 :
]

: ;
public 
string 
ConstructionNumber (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
}
nD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\Commands\PlaceOrderCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
Commands% -
{		 
public

 

class

 
PlaceOrderCommand

 "
:

# $
ICommand

% -
<

- .


. ;
>

; <
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% A
)A B
]B C
public
FabricConstructionCommand
FabricConstructionDocument
{
get
;
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 2
)2 3
]3 4
public 
DateTimeOffset 
DateOrdered )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 
string 

WarpOrigin  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 
string 

WeftOrigin  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 
int 

WholeGrade 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public 
string 
YarnType 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public 
Period 
Period 
{ 
get "
;" #
set$ '
;' (
}) *
[!! 	
JsonProperty!!	 
(!! 
PropertyName!! "
=!!# $
$str!!% 6
)!!6 7
]!!7 8
public"" 
Composition"" 
WarpComposition"" *
{""+ ,
get""- 0
;""0 1
set""2 5
;""5 6
}""7 8
[$$ 	
JsonProperty$$	 
($$ 
PropertyName$$ "
=$$# $
$str$$% 6
)$$6 7
]$$7 8
public%% 
Composition%% 
WeftComposition%% *
{%%+ ,
get%%- 0
;%%0 1
set%%2 5
;%%5 6
}%%7 8
['' 	
JsonProperty''	 
('' 
PropertyName'' "
=''# $
$str''% 2
)''2 3
]''3 4
public(( 
WeavingUnit(( 
WeavingUnit(( &
{((' (
get(() ,
;((, -
set((. 1
;((1 2
}((3 4
})) 
public++ 

class++ (
WeavingOrderCommandValidator++ -
:++. /
AbstractValidator++0 A
<++A B
PlaceOrderCommand++B S
>++S T
{,, 
public-- (
WeavingOrderCommandValidator-- +
(--+ ,
)--, -
{.. 	
RuleFor// 
(// 
command// 
=>// 
command// &
.//& '&
FabricConstructionDocument//' A
.//A B
Id//B D
)//D E
.//E F
NotEmpty//F N
(//N O
)//O P
;//P Q
RuleFor00 
(00 
command00 
=>00 
command00 &
.00& '&
FabricConstructionDocument00' A
.00A B
ConstructionNumber00B T
)00T U
.00U V
NotEmpty00V ^
(00^ _
)00_ `
;00` a
RuleFor11 
(11 
command11 
=>11 
command11 &
.11& '
DateOrdered11' 2
)112 3
.113 4
NotEmpty114 <
(11< =
)11= >
;11> ?
RuleFor22 
(22 
command22 
=>22 
command22 &
.22& '

WarpOrigin22' 1
)221 2
.222 3
NotEmpty223 ;
(22; <
)22< =
;22= >
RuleFor33 
(33 
command33 
=>33 
command33 &
.33& '

WeftOrigin33' 1
)331 2
.332 3
NotEmpty333 ;
(33; <
)33< =
;33= >
RuleFor44 
(44 
command44 
=>44 
command44 &
.44& '

WholeGrade44' 1
)441 2
.442 3
NotEmpty443 ;
(44; <
)44< =
;44= >
RuleFor55 
(55 
command55 
=>55 
command55 &
.55& '
YarnType55' /
)55/ 0
.550 1
NotEmpty551 9
(559 :
)55: ;
;55; <
RuleFor66 
(66 
command66 
=>66 
command66 &
.66& '
Period66' -
.66- .
Month66. 3
)663 4
.664 5
NotEmpty665 =
(66= >
)66> ?
;66? @
RuleFor77 
(77 
command77 
=>77 
command77 &
.77& '
Period77' -
.77- .
Year77. 2
)772 3
.773 4
NotEmpty774 <
(77< =
)77= >
;77> ?
RuleFor88 
(88 
command88 
=>88 
command88 &
.88& '
WeavingUnit88' 2
.882 3
Id883 5
)885 6
.886 7
NotEmpty887 ?
(88? @
)88@ A
;88A B
}99 	
}:: 
};; �
qD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\Commands\PlaceOrderCommandOld.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
Commands% -
{ 
public 

class  
PlaceOrderCommandOld %
:& '
ICommand( 0
<0 1
ManufactureOrder1 A
>A B
{		 
public

 
DateTimeOffset

 
	OrderDate

 '
{

( )
get

* -
;

- .
set

/ 2
;

2 3
}

4 5
public 
UnitDepartmentId 
UnitDepartmentId  0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
	YarnCodes 
	YarnCodes "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
GoodsCompositionId !
GoodsCompositionId" 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
Blended 
Blended 
{  
get! $
;$ %
set& )
;) *
}+ ,
public  
MachineIdValueObject #
	MachineId$ -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
string 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class &
PlaceOrderCommandValidator +
:, -
AbstractValidator. ?
<? @ 
PlaceOrderCommandOld@ T
>T U
{ 
public &
PlaceOrderCommandValidator )
() *
)* +
{ 	
RuleFor 
( 
r 
=> 
r 
. 
	OrderDate $
)$ %
.% &
NotNull& -
(- .
). /
;/ 0
RuleFor 
( 
r 
=> 
r 
. 
	MachineId $
)$ %
.% &
NotNull& -
(- .
). /
;/ 0
RuleFor!! 
(!! 
r!! 
=>!! 
r!! 
.!! 
UnitDepartmentId!! +
)!!+ ,
.!!, -
NotNull!!- 4
(!!4 5
)!!5 6
;!!6 7
RuleFor## 
(## 
r## 
=>## 
r## 
.## 
	YarnCodes## $
)##$ %
.##% &
NotNull##& -
(##- .
)##. /
;##/ 0
RuleFor%% 
(%% 
r%% 
=>%% 
r%% 
.%% 
Blended%% "
)%%" #
.%%# $
NotNull%%$ +
(%%+ ,
)%%, -
;%%- .
RuleFor'' 
('' 
r'' 
=>'' 
r'' 
.'' 
UserId'' !
)''! "
.''" #
NotNull''# *
(''* +
)''+ ,
;'', -
RuleFor)) 
()) 
r)) 
=>)) 
r)) 
.)) 
UnitDepartmentId)) +
)))+ ,
.)), -
NotNull))- 4
())4 5
)))5 6
;))6 7
}** 	
}++ 
},, �
oD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\Commands\RemoveOrderCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
Commands% -
{ 
public 

class 
RemoveOrderCommand #
:$ %
ICommand& .
<. /

>< =
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% )
)		) *
]		* +
public

 
Guid

 
Id

 
{

 
get

 
;

 
private

 %
set

& )
;

) *
}

+ ,
public 
void 
SetId 
( 
Guid 
Id !
)! "
{
this 
. 
Id 
= 
Id 
; 
} 	
} 
} �
rD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\Commands\RemoveOrderCommandOld.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
Commands% -
{ 
public 

class !
RemoveOrderCommandOld &
:' (
ICommand) 1
<1 2
ManufactureOrder2 B
>B C
{		 
public

 
void

 
SetId

 
(

 
Guid

 
id

 !
)

! "
{

# $
Id

% '
=

( )
id

* ,
;

, -
}

. /
public 
Guid 
Id 
{ 
get 
; 
private %
set& )
;) *
}+ ,
} 
}
oD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\Commands\UpdateOrderCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
Commands% -
{		 
public

 

class

 
UpdateOrderCommand

 #
:

$ %
ICommand

& .
<

. /


/ <
>

< =
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% )
)) *
]* +
public
Guid
Id
{
get
;
private
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% A
)A B
]B C
public %
FabricConstructionCommand (&
FabricConstructionDocument) C
{D E
getF I
;I J
setK N
;N O
}P Q
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 
string 

WarpOrigin  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 
string 

WeftOrigin  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 
int 

WholeGrade 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public 
string 
YarnType 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public 
Period 
Period 
{ 
get "
;" #
set$ '
;' (
}) *
[!! 	
JsonProperty!!	 
(!! 
PropertyName!! "
=!!# $
$str!!% 6
)!!6 7
]!!7 8
public"" 
Composition"" 
WarpComposition"" *
{""+ ,
get""- 0
;""0 1
set""2 5
;""5 6
}""7 8
[$$ 	
JsonProperty$$	 
($$ 
PropertyName$$ "
=$$# $
$str$$% 6
)$$6 7
]$$7 8
public%% 
Composition%% 
WeftComposition%% *
{%%+ ,
get%%- 0
;%%0 1
set%%2 5
;%%5 6
}%%7 8
['' 	
JsonProperty''	 
('' 
PropertyName'' "
=''# $
$str''% 2
)''2 3
]''3 4
public(( 
WeavingUnit(( 
WeavingUnit(( &
{((' (
get(() ,
;((, -
set((. 1
;((1 2
}((3 4
public** 
void** 
SetId** 
(** 
Guid** 
Id** !
)**! "
{++ 	
this,, 
.,, 
Id,, 
=,, 
Id,, 
;,, 
}-- 	
}.. 
public00 

class00 .
"UpdateWeavingOrderCommandValidator00 3
:004 5
AbstractValidator006 G
<00G H
UpdateOrderCommand00H Z
>00Z [
{11 
public22 .
"UpdateWeavingOrderCommandValidator22 1
(221 2
)222 3
{33 	
RuleFor44 
(44 
command44 
=>44 
command44 &
.44& '&
FabricConstructionDocument44' A
.44A B
Id44B D
)44D E
.44E F
NotEmpty44F N
(44N O
)44O P
;44P Q
RuleFor55 
(55 
command55 
=>55 
command55 &
.55& '&
FabricConstructionDocument55' A
.55A B
ConstructionNumber55B T
)55T U
.55U V
NotEmpty55V ^
(55^ _
)55_ `
;55` a
RuleFor66 
(66 
command66 
=>66 
command66 &
.66& '

WarpOrigin66' 1
)661 2
.662 3
NotEmpty663 ;
(66; <
)66< =
;66= >
RuleFor77 
(77 
command77 
=>77 
command77 &
.77& '

WeftOrigin77' 1
)771 2
.772 3
NotEmpty773 ;
(77; <
)77< =
;77= >
RuleFor88 
(88 
command88 
=>88 
command88 &
.88& '

WholeGrade88' 1
)881 2
.882 3
NotEmpty883 ;
(88; <
)88< =
;88= >
RuleFor99 
(99 
command99 
=>99 
command99 &
.99& '
YarnType99' /
)99/ 0
.990 1
NotEmpty991 9
(999 :
)99: ;
;99; <
RuleFor:: 
(:: 
command:: 
=>:: 
command:: &
.::& '
Period::' -
.::- .
Month::. 3
)::3 4
.::4 5
NotEmpty::5 =
(::= >
)::> ?
;::? @
RuleFor;; 
(;; 
command;; 
=>;; 
command;; &
.;;& '
Period;;' -
.;;- .
Year;;. 2
);;2 3
.;;3 4
NotEmpty;;4 <
(;;< =
);;= >
;;;> ?
RuleFor<< 
(<< 
command<< 
=><< 
command<< &
.<<& '
WeavingUnit<<' 2
.<<2 3
Id<<3 5
)<<5 6
.<<6 7
NotEmpty<<7 ?
(<<? @
)<<@ A
;<<A B
}== 	
}>> 
}?? �
rD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\Commands\UpdateOrderCommandOld.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
Commands% -
{ 
public 

class !
UpdateOrderCommandOld &
:' (
ICommand) 1
<1 2
ManufactureOrder2 B
>B C
{		 
public

 
void

 
SetId

 
(

 
Guid

 
id

 !
)

! "
{

# $
Id

% '
=

( )
id

* ,
;

, -
}

. /
public 
Guid 
Id 
{ 
get 
; 
private %
set& )
;) *
}+ ,
public
UnitDepartmentId
UnitDepartmentId
{
get
;
set
;
}
public 
	YarnCodes 
	YarnCodes "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
Blended 
Blended 
{  
get! $
;$ %
set& )
;) *
}+ ,
public  
MachineIdValueObject #
	MachineId$ -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
string 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class '
UpdateOrderCommandValidator ,
:- .
AbstractValidator/ @
<@ A!
UpdateOrderCommandOldA V
>V W
{ 
public '
UpdateOrderCommandValidator *
(* +
)+ ,
{ 	
RuleFor 
( 
r 
=> 
r 
. 
	MachineId $
)$ %
.% &
NotNull& -
(- .
). /
;/ 0
RuleFor 
( 
r 
=> 
r 
. 
UnitDepartmentId +
)+ ,
., -
NotNull- 4
(4 5
)5 6
;6 7
RuleFor   
(   
r   
=>   
r   
.   
	YarnCodes   $
)  $ %
.  % &
NotNull  & -
(  - .
)  . /
;  / 0
RuleFor"" 
("" 
r"" 
=>"" 
r"" 
."" 
Blended"" "
)""" #
.""# $
NotNull""$ +
(""+ ,
)"", -
;""- .
RuleFor$$ 
($$ 
r$$ 
=>$$ 
r$$ 
.$$ 
UserId$$ !
)$$! "
.$$" #
NotNull$$# *
($$* +
)$$+ ,
;$$, -
RuleFor&& 
(&& 
r&& 
=>&& 
r&& 
.&& 
UnitDepartmentId&& +
)&&+ ,
.&&, -
NotNull&&- 4
(&&4 5
)&&5 6
;&&6 7
}'' 	
}(( 
})) �i
dD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\ManufactureOrder.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
{		 
public

 

class

 
ManufactureOrder

 !
:

" #


$ 1
<

1 2
ManufactureOrder

2 B
,

B C%
ManufactureOrderReadModel

D ]
>

] ^
{ 
public 
enum 
Status 
{
Draft 
= 
$num 
, 
Active 
= 
$num 
, 
Finished 
= 
$num 
, 
} 	
public 
ManufactureOrder 
(  
Guid  $
id% '
,' (
DateTimeOffset) 7
	orderDate8 A
,A B
UnitDepartmentIdC S
unitIdT Z
,Z [
	YarnCodes\ e
	yarnCodesf o
,o p
GoodsCompositionId	q �

� �
,
� �
Blended
� �
blended
� �
,
� �"
MachineIdValueObject
� �
	machineId
� �
,
� �
string
� �
userId
� �
)
� �
:
� �
base
� �
(
� �
id
� �
)
� �
{ 	
	Validator 
. 
ThrowIfNull !
(! "
(" #
)# $
=>% '
unitId( .
). /
;/ 0
	Validator 
. 
ThrowIfNull !
(! "
(" #
)# $
=>% '
	machineId( 1
)1 2
;2 3
	Validator 
. 
ThrowIfNullOrEmpty (
(( )
() *
)* +
=>, .
	yarnCodes/ 8
)8 9
;9 :
	Validator 
. 
ThrowIfNullOrEmpty (
(( )
() *
)* +
=>, .
blended/ 6
)6 7
;7 8
	Validator 
. 
ThrowIfNullOrEmpty (
(( )
() *
)* +
=>, .
userId/ 5
)5 6
;6 7
this 
. 

( 
)  
;  !
Identity 
= 
id 
; 
	OrderDate   
=   
	orderDate   !
;  ! "
UnitDepartmentId!! 
=!! 
unitId!! %
;!!% &
	YarnCodes"" 
="" 
	yarnCodes"" !
;""! "

=## 

;##) *
Blended$$ 
=$$ 
blended$$ 
;$$ 
	MachineId%% 
=%% 
	machineId%% !
;%%! "
UserId&& 
=&& 
userId&& 
;&& 
State'' 
='' 
Status'' 
.'' 
Draft''  
;''  !
	ReadModel)) 
=)) 
new)) %
ManufactureOrderReadModel)) 5
())5 6
Identity))6 >
)))> ?
{** 
	MachineId++ 
=++ 
this++  
.++  !
	MachineId++! *
.++* +
Value+++ 0
,++0 1
UnitDepartmentId,,  
=,,! "
this,,# '
.,,' (
UnitDepartmentId,,( 8
.,,8 9
Value,,9 >
,,,> ?

=-- 
this--  $
.--$ %
	YarnCodes--% .
.--. /
	Serialize--/ 8
(--8 9
)--9 :
,--: ;
State.. 
=.. 
this.. 
... 
State.. "
,.." #
	OrderDate// 
=// 
this//  
.//  !
	OrderDate//! *
,//* +
BlendedJson00 
=00 
this00 "
.00" #
Blended00# *
.00* +
	Serialize00+ 4
(004 5
)005 6
,006 7
UserId11 
=11 
this11 
.11 
UserId11 $
,11$ %
}22 
;22
if44 
(44 
this44 
.44 

!=44# %
null44& *
)44* +
	ReadModel55 
.55 

=55( )
Guid55* .
.55. /
Parse55/ 4
(554 5

.55B C
Value55C H
)55H I
;55I J
	ReadModel77 
.77 
AddDomainEvent77 $
(77$ %
new77% ($
OnManufactureOrderPlaced77) A
(77A B
this77B F
.77F G
Identity77G O
)77O P
)77P Q
;77Q R
}88 	
public:: 
ManufactureOrder:: 
(::  %
ManufactureOrderReadModel::  9
	readModel::: C
)::C D
:::E F
base::G K
(::K L
	readModel::L U
)::U V
{;; 	
this<< 
.<< 
	MachineId<< 
=<< 
new<<   
MachineIdValueObject<<! 5
(<<5 6
	ReadModel<<6 ?
.<<? @
	MachineId<<@ I
)<<I J
;<<J K
this== 
.== 
Blended== 
=== 
	ReadModel== $
.==$ %
BlendedJson==% 0
.==0 1
Deserialize==1 <
<==< =
Blended=== D
>==D E
(==E F
)==F G
;==G H
this?? 
.?? 
	OrderDate?? 
=?? 
	ReadModel?? &
.??& '
	OrderDate??' 0
;??0 1
this@@ 
.@@ 
State@@ 
=@@ 
	ReadModel@@ "
.@@" #
State@@# (
;@@( )
thisAA 
.AA 
UnitDepartmentIdAA !
=AA" #
newAA$ '
UnitDepartmentIdAA( 8
(AA8 9
	ReadModelAA9 B
.AAB C
UnitDepartmentIdAAC S
)AAS T
;AAT U
thisBB 
.BB 
UserIdBB 
=BB 
	ReadModelBB #
.BB# $
UserIdBB$ *
;BB* +
thisCC 
.CC 
	YarnCodesCC 
=CC 
	ReadModelCC &
.CC& '

.CC4 5
DeserializeCC5 @
<CC@ A
	YarnCodesCCA J
>CCJ K
(CCK L
)CCL M
;CCM N
thisDD 
.DD 

=DD  
	ReadModelDD! *
.DD* +

.DD8 9
HasValueDD9 A
?DDB C
newDDD G
GoodsCompositionIdDDH Z
(DDZ [
	ReadModelDD[ d
.DDd e

.DDr s
ValueDDs x
.DDx y
ToString	DDy �
(
DD� �
)
DD� �
)
DD� �
:
DD� �
null
DD� �
;
DD� �
}EE 	
publicGG 
DateTimeOffsetGG 
	OrderDateGG '
{GG( )
getGG* -
;GG- .
}GG/ 0
publicII 
UnitDepartmentIdII 
UnitDepartmentIdII  0
{II1 2
getII3 6
;II6 7
privateII8 ?
setII@ C
;IIC D
}IIE F
publicKK 
voidKK 
SetUnitDepartmentKK %
(KK% &
UnitDepartmentIdKK& 6
newUnitKK7 >
)KK> ?
{LL 	
	ValidatorMM 
.MM 
ThrowIfNullMM !
(MM! "
(MM" #
)MM# $
=>MM% '
newUnitMM( /
)MM/ 0
;MM0 1
ifOO 
(OO 
newUnitOO 
!=OO 
UnitDepartmentIdOO +
)OO+ ,
{PP 
UnitDepartmentIdQQ  
=QQ! "
newUnitQQ# *
;QQ* +
	ReadModelRR 
.RR 
UnitDepartmentIdRR *
=RR+ ,
UnitDepartmentIdRR- =
.RR= >
ValueRR> C
;RRC D
MarkModifiedTT 
(TT 
)TT 
;TT 
}UU 
}VV 	
publicXX 
	YarnCodesXX 
	YarnCodesXX "
{XX# $
getXX% (
;XX( )
privateXX* 1
setXX2 5
;XX5 6
}XX7 8
publicZZ 
voidZZ 
SetYarnCodesZZ  
(ZZ  !
	YarnCodesZZ! *
newCodesZZ+ 3
)ZZ3 4
{[[ 	
	Validator\\ 
.\\ 
ThrowIfNullOrEmpty\\ (
(\\( )
(\\) *
)\\* +
=>\\, .
newCodes\\/ 7
)\\7 8
;\\8 9
if^^ 
(^^ 
newCodes^^ 
!=^^ 
	YarnCodes^^ %
)^^% &
{__ 
	YarnCodes`` 
=`` 
newCodes`` $
;``$ %
	ReadModelaa 
.aa 

=aa( )
	YarnCodesaa* 3
.aa3 4
	Serializeaa4 =
(aa= >
)aa> ?
;aa? @
MarkModifiedcc 
(cc 
)cc 
;cc 
}dd 
}ee 	
publicgg 
GoodsCompositionIdgg !

{gg0 1
getgg2 5
;gg5 6
}gg7 8
publicii 
Blendedii 
Blendedii 
{ii  
getii! $
;ii$ %
privateii& -
setii. 1
;ii1 2
}ii3 4
publickk 
voidkk 

SetBlendedkk 
(kk 
Blendedkk &

newBlendedkk' 1
)kk1 2
{ll 	
	Validatormm 
.mm 
ThrowIfNullOrEmptymm (
(mm( )
(mm) *
)mm* +
=>mm, .

newBlendedmm/ 9
)mm9 :
;mm: ;
ifoo 
(oo 

newBlendedoo 
!=oo 
Blendedoo %
)oo% &
{pp 
Blendedqq 
=qq 

newBlendedqq $
;qq$ %
	ReadModelrr 
.rr 
BlendedJsonrr %
=rr& '
Blendedrr( /
.rr/ 0
	Serializerr0 9
(rr9 :
)rr: ;
;rr; <
MarkModifiedtt 
(tt 
)tt 
;tt 
}uu 
}vv 	
publicxx  
MachineIdValueObjectxx #
	MachineIdxx$ -
{xx. /
getxx0 3
;xx3 4
privatexx5 <
setxx= @
;xx@ A
}xxB C
publiczz 
voidzz 
SetMachineIdzz  
(zz  ! 
MachineIdValueObjectzz! 5

newMachinezz6 @
)zz@ A
{{{ 	
	Validator|| 
.|| 
ThrowIfNull|| !
(||! "
(||" #
)||# $
=>||% '

newMachine||( 2
)||2 3
;||3 4
if~~ 
(~~ 

newMachine~~ 
!=~~ 
	MachineId~~ '
)~~' (
{ 
	MachineId
�� 
=
�� 

newMachine
�� &
;
��& '
	ReadModel
�� 
.
�� 
	MachineId
�� #
=
��$ %
	MachineId
��& /
.
��/ 0
Value
��0 5
;
��5 6
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
Status
�� 
State
�� 
{
�� 
get
�� !
;
��! "
private
��# *
set
��+ .
;
��. /
}
��0 1
public
�� 
void
�� 
SetState
�� 
(
�� 
Status
�� #
newState
��$ ,
)
��, -
{
�� 	
if
�� 
(
�� 
newState
�� 
!=
�� 
State
�� !
)
��! "
{
�� 
State
�� 
=
�� 
newState
��  
;
��  !
	ReadModel
�� 
.
�� 
State
�� 
=
��  !
State
��" '
;
��' (
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
string
�� 
UserId
�� 
{
�� 
get
�� "
;
��" #
private
��$ +
set
��, /
;
��/ 0
}
��1 2
public
�� 
void
�� 
	SetUserId
�� 
(
�� 
string
�� $
newUser
��% ,
)
��, -
{
�� 	
	Validator
�� 
.
��  
ThrowIfNullOrEmpty
�� (
(
��( )
(
��) *
)
��* +
=>
��, .
newUser
��/ 6
)
��6 7
;
��7 8
if
�� 
(
�� 
newUser
�� 
!=
�� 
UserId
�� !
)
��! "
{
�� 
UserId
�� 
=
�� 
newUser
��  
;
��  !
	ReadModel
�� 
.
�� 
UserId
��  
=
��! "
UserId
��# )
;
��) *
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
	protected
�� 
override
�� 
ManufactureOrder
�� +
	GetEntity
��, 5
(
��5 6
)
��6 7
{
�� 	
return
�� 
this
�� 
;
�� 
}
�� 	
}
�� 
}�� �
aD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\OrderDocument.cs
	namespace		 	
Manufactures		
 
.		 
Domain		 
.		 
Orders		 $
{

 
public 

class 

:  

<. /

,< ="
OrderDocumentReadModel> T
>T U
{ 
public
string
OrderNumber
{
get
;
private
set
;
}
public 
ConstructionId 
ConstructionId ,
{- .
get/ 2
;2 3
private4 ;
set< ?
;? @
}A B
public 
DateTimeOffset 
DateOrdered )
{* +
get, /
;/ 0
private1 8
set9 <
;< =
}> ?
public 
string 

WarpOrigin  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
string 

WeftOrigin  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
int 

WholeGrade 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
public 
string 
YarnType 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
public 
Period 
Period 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 
Composition 
WarpComposition *
{+ ,
get- 0
;0 1
private2 9
set: =
;= >
}? @
public 
Composition 
WeftComposition *
{+ ,
get- 0
;0 1
private2 9
set: =
;= >
}? @
public 
UnitId 
UnitId 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 
string 
OrderStatus !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 

( 
Guid !
id" $
,$ %
string& ,
orderNumber- 8
,8 9
ConstructionId$ 2
constructionId3 A
,A B
DateTimeOffset$ 2
dateOrdered3 >
,> ?
Period$ *
period+ 1
,1 2
Composition$ /
warpComposition0 ?
,? @
Composition$ /
weftComposition0 ?
,? @
string  $ *

warpOrigin  + 5
,  5 6
string!!$ *

weftOrigin!!+ 5
,!!5 6
int""$ '

wholeGrade""( 2
,""2 3
string##$ *
yarnType##+ 3
,##3 4
UnitId$$$ *
unitId$$+ 1
,$$1 2
string%%$ *
orderStatus%%+ 6
)%%6 7
:%%8 9
base%%: >
(%%> ?
id%%? A
)%%A B
{&& 	
Identity(( 
=(( 
id(( 
;(( 
OrderNumber)) 
=)) 
orderNumber)) %
;))% &
ConstructionId** 
=** 
constructionId** +
;**+ ,
DateOrdered++ 
=++ 
dateOrdered++ %
;++% &

WarpOrigin,, 
=,, 

warpOrigin,, #
;,,# $

WeftOrigin-- 
=-- 

weftOrigin-- #
;--# $

WholeGrade.. 
=.. 

wholeGrade.. #
;..# $
YarnType// 
=// 
yarnType// 
;//  
Period00 
=00 
period00 
;00 
WarpComposition11 
=11 
warpComposition11 -
;11- .
WeftComposition22 
=22 
weftComposition22 -
;22- .
UnitId33 
=33 
unitId33 
;33 
OrderStatus44 
=44 
orderStatus44 %
;44% &
this66 
.66 

(66 
)66  
;66  !
	ReadModel88 
=88 
new88 "
OrderDocumentReadModel88 2
(882 3
Identity883 ;
)88; <
{99 
OrderNumber:: 
=:: 
this:: "
.::" #
OrderNumber::# .
,::. /
DateOrdered;; 
=;; 
this;; "
.;;" #
DateOrdered;;# .
,;;. /
ConstructionId<< 
=<<  
this<<! %
.<<% &
ConstructionId<<& 4
.<<4 5
Value<<5 :
,<<: ;

WarpOrigin== 
=== 
this== !
.==! "

WarpOrigin==" ,
,==, -

WeftOrigin>> 
=>> 
this>> !
.>>! "

WeftOrigin>>" ,
,>>, -

WholeGrade?? 
=?? 
this?? !
.??! "

WholeGrade??" ,
,??, -
YarnType@@ 
=@@ 
this@@ 
.@@  
YarnType@@  (
,@@( )
PeriodAA 
=AA 
thisAA 
.AA 
PeriodAA $
.AA$ %
	SerializeAA% .
(AA. /
)AA/ 0
,AA0 1
WarpCompositionBB 
=BB  !
thisBB" &
.BB& '
WarpCompositionBB' 6
.BB6 7
	SerializeBB7 @
(BB@ A
)BBA B
,BBB C
WeftCompositionCC 
=CC  !
thisCC" &
.CC& '
WeftCompositionCC' 6
.CC6 7
	SerializeCC7 @
(CC@ A
)CCA B
,CCB C
UnitIdDD 
=DD 
thisDD 
.DD 
UnitIdDD $
.DD$ %
ValueDD% *
,DD* +
OrderStatusEE 
=EE 
thisEE "
.EE" #
OrderStatusEE# .
}FF 
;FF
	ReadModelHH 
.HH 
AddDomainEventHH $
(HH$ %
newHH% ( 
OnWeavingOrderPlacedHH) =
(HH= >
thisHH> B
.HHB C
IdentityHHC K
)HHK L
)HHL M
;HHM N
}II 	
publicKK 

(KK "
OrderDocumentReadModelKK 3
	readModelKK4 =
)KK= >
:KK? @
baseKKA E
(KKE F
	readModelKKF O
)KKO P
{LL 	
thisMM 
.MM 
OrderNumberMM 
=MM 
	readModelMM (
.MM( )
OrderNumberMM) 4
;MM4 5
thisNN 
.NN 
ConstructionIdNN 
=NN  !
	readModelOO 
.OO 
ConstructionIdOO (
.OO( )
HasValueOO) 1
?OO2 3
newOO4 7
ConstructionIdOO8 F
(OOF G
	readModelOOG P
.OOP Q
ConstructionIdOOQ _
.OO_ `
ValueOO` e
)OOe f
:OOg h
nullOOi m
;OOm n
thisPP 
.PP 
DateOrderedPP 
=PP 
	readModelPP (
.PP( )
DateOrderedPP) 4
;PP4 5
thisQQ 
.QQ 

WarpOriginQQ 
=QQ 
	readModelQQ '
.QQ' (

WarpOriginQQ( 2
;QQ2 3
thisRR 
.RR 

WeftOriginRR 
=RR 
	readModelRR '
.RR' (

WeftOriginRR( 2
;RR2 3
thisSS 
.SS 

WholeGradeSS 
=SS 
	readModelSS '
.SS' (

WholeGradeSS( 2
;SS2 3
thisTT 
.TT 
YarnTypeTT 
=TT 
	readModelTT %
.TT% &
YarnTypeTT& .
;TT. /
thisUU 
.UU 
PeriodUU 
=UU 
	readModelUU #
.UU# $
PeriodUU$ *
.UU* +
DeserializeUU+ 6
<UU6 7
PeriodUU7 =
>UU= >
(UU> ?
)UU? @
;UU@ A
thisVV 
.VV 
WarpCompositionVV  
=VV! "
	readModelWW 
.WW 
WarpCompositionWW )
.WW) *
DeserializeWW* 5
<WW5 6
CompositionWW6 A
>WWA B
(WWB C
)WWC D
;WWD E
thisXX 
.XX 
WeftCompositionXX  
=XX! "
	readModelYY 
.YY 
WeftCompositionYY )
.YY) *
DeserializeYY* 5
<YY5 6
CompositionYY6 A
>YYA B
(YYB C
)YYC D
;YYD E
thisZZ 
.ZZ 
UnitIdZZ 
=ZZ 
	readModel[[ 
.[[ 
UnitId[[  
.[[  !
HasValue[[! )
?[[* +
new[[, /
UnitId[[0 6
([[6 7
	readModel[[7 @
.[[@ A
UnitId[[A G
.[[G H
Value[[H M
)[[M N
:[[O P
null[[Q U
;[[U V
this\\ 
.\\ 
OrderStatus\\ 
=\\ 
	readModel\\ (
.\\( )
OrderStatus\\) 4
;\\4 5
}]] 	
public__ 
void__ 
SetOrderStatus__ "
(__" #
string__# )
orderStatus__* 5
)__5 6
{`` 	
ifbb 
(bb 
OrderStatusbb 
!=bb 
orderStatusbb *
)bb* +
{cc 
OrderStatusee 
=ee 
orderStatusee )
;ee) *
	ReadModelff 
.ff 
OrderStatusff %
=ff& '
OrderStatusff( 3
;ff3 4
MarkModifiedhh 
(hh 
)hh 
;hh 
}ii 
}jj 	
publicll 
voidll 

(ll! "
stringll" (

warpOriginll) 3
)ll3 4
{mm 	
ifoo 
(oo 

warpOriginoo 
!=oo 

WarpOriginoo (
)oo( )
{pp 

WarpOriginrr 
=rr 

warpOriginrr '
;rr' (
	ReadModelss 
.ss 

WarpOriginss $
=ss% &

WarpOriginss' 1
;ss1 2
MarkModifieduu 
(uu 
)uu 
;uu 
}vv 
}ww 	
publicyy 
voidyy 

(yy! "
stringyy" (

weftOriginyy) 3
)yy3 4
{zz 	
if|| 
(|| 

weftOrigin|| 
!=|| 

WeftOrigin|| (
)||( )
{}} 

WeftOrigin 
= 

weftOrigin '
;' (
	ReadModel
�� 
.
�� 

WeftOrigin
�� $
=
��% &

WeftOrigin
��' 1
;
��1 2
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 

�� !
(
��! "
int
��" %

wholeGrade
��& 0
)
��0 1
{
�� 	
if
�� 
(
�� 

wholeGrade
�� 
!=
�� 

WholeGrade
�� (
)
��( )
{
�� 

WholeGrade
�� 
=
�� 

wholeGrade
�� '
;
��' (
	ReadModel
�� 
.
�� 

WholeGrade
�� $
=
��% &

WholeGrade
��' 1
;
��1 2
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
SetYarnType
�� 
(
��  
string
��  &
yarnType
��' /
)
��/ 0
{
�� 	
if
�� 
(
�� 
yarnType
�� 
!=
�� 
YarnType
�� $
)
��$ %
{
�� 
YarnType
�� 
=
�� 
yarnType
�� #
;
��# $
	ReadModel
�� 
.
�� 
YarnType
�� "
=
��# $
YarnType
��% -
;
��- .
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� +
SetFabricConstructionDocument
�� 1
(
��1 2
ConstructionId
��2 @
constructionId
��A O
)
��O P
{
�� 	
if
�� 
(
�� 
constructionId
�� 
!=
�� !
ConstructionId
��" 0
)
��0 1
{
�� 
ConstructionId
�� 
=
��  
constructionId
��! /
;
��/ 0
	ReadModel
�� 
.
�� 
ConstructionId
�� (
=
��) *
ConstructionId
��+ 9
.
��9 :
Value
��: ?
;
��? @
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
	SetPeriod
�� 
(
�� 
Period
�� $
period
��% +
)
��+ ,
{
�� 	
if
�� 
(
�� 
period
�� 
!=
�� 
Period
��  
)
��  !
{
�� 
Period
�� 
=
�� 
period
�� 
;
��  
	ReadModel
�� 
.
�� 
Period
��  
=
��! "
Period
��# )
.
��) *
	Serialize
��* 3
(
��3 4
)
��4 5
;
��5 6
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
��  
SetWarpComposition
�� &
(
��& '
Composition
��' 2
composition
��3 >
)
��> ?
{
�� 	
if
�� 
(
�� 
composition
�� 
!=
�� 
WarpComposition
�� .
)
��. /
{
�� 
WarpComposition
�� 
=
��  !
composition
��" -
;
��- .
	ReadModel
�� 
.
�� 
WarpComposition
�� )
=
��* +
WarpComposition
��, ;
.
��; <
	Serialize
��< E
(
��E F
)
��F G
;
��G H
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
��  
SetWeftComposition
�� &
(
��& '
Composition
��' 2
composition
��3 >
)
��> ?
{
�� 	
if
�� 
(
�� 
composition
�� 
!=
�� 
WeftComposition
�� .
)
��. /
{
�� 
WeftComposition
�� 
=
��  !
composition
��" -
;
��- .
	ReadModel
�� 
.
�� 
WeftComposition
�� )
=
��* +
WeftComposition
��, ;
.
��; <
	Serialize
��< E
(
��E F
)
��F G
;
��G H
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
SetWeavingUnit
�� "
(
��" #
UnitId
��# )
value
��* /
)
��/ 0
{
�� 	
if
�� 
(
�� 
UnitId
�� 
!=
�� 
value
�� 
)
��  
{
�� 
UnitId
�� 
=
�� 
value
�� 
;
�� 
	ReadModel
�� 
.
�� 
UnitId
��  
=
��! "
value
��# (
.
��( )
Value
��) .
;
��. /
MarkModified
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
	protected
�� 
override
�� 

�� (
	GetEntity
��) 2
(
��2 3
)
��3 4
{
�� 	
return
�� 
this
�� 
;
�� 
}
�� 	
}
�� 
}�� �
xD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\ReadModels\ManufactureOrderReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %

ReadModels% /
{ 
public 

class %
ManufactureOrderReadModel *
:+ ,

{ 
public %
ManufactureOrderReadModel (
(( )
Guid) -
identity. 6
)6 7
:8 9
base: >
(> ?
identity? G
)G H
{		 	
}

 	
public 
int 
UnitDepartmentId #
{$ %
get& )
;) *
internal+ 3
set4 7
;7 8
}9 :
public 
int 
	MachineId 
{ 
get "
;" #
internal$ ,
set- 0
;0 1
}2 3
public 
string 

{$ %
get& )
;) *
internal+ 3
set4 7
;7 8
}9 :
public 
ManufactureOrder 
.  
Status  &
State' ,
{- .
get/ 2
;2 3
internal4 <
set= @
;@ A
}B C
public 
DateTimeOffset 
	OrderDate '
{( )
get* -
;- .
internal/ 7
set8 ;
;; <
}= >
public 
string 
BlendedJson !
{" #
get$ '
;' (
internal) 1
set2 5
;5 6
}7 8
public 
string 
UserId 
{ 
get "
;" #
internal$ ,
set- 0
;0 1
}2 3
public 
Guid 
? 

{# $
get% (
;( )
internal* 2
set3 6
;6 7
}8 9
} 
} �
uD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\ReadModels\OrderDocumentReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %

ReadModels% /
{ 
public 

class "
OrderDocumentReadModel '
:( )

{ 
public "
OrderDocumentReadModel %
(% &
Guid& *
identity+ 3
)3 4
:5 6
base7 ;
(; <
identity< D
)D E
{F G
}H I
public

 
string

 
OrderNumber

 !
{

" #
get

$ '
;

' (
internal

) 1
set

2 5
;

5 6
}

7 8
public 
DateTimeOffset 
DateOrdered )
{* +
get, /
;/ 0
internal1 9
set: =
;= >
}? @
public 
string 

WarpOrigin  
{! "
get# &
;& '
internal( 0
set1 4
;4 5
}6 7
public
string

WeftOrigin
{
get
;
internal
set
;
}
public 
int 

WholeGrade 
{ 
get  #
;# $
internal% -
set. 1
;1 2
}3 4
public 
string 
YarnType 
{  
get! $
;$ %
internal& .
set/ 2
;2 3
}4 5
public 
string 
Period 
{ 
get "
;" #
internal$ ,
set- 0
;0 1
}2 3
public 
string 
WarpComposition %
{& '
get( +
;+ ,
internal- 5
set6 9
;9 :
}; <
public 
Guid 
? 
ConstructionId #
{$ %
get& )
;) *
internal+ 3
set4 7
;7 8
}9 :
public 
int 
? 
UnitId 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
public 
string 
OrderStatus !
{" #
get$ '
;' (
internal) 1
set2 5
;5 6
}7 8
public 
string 
WeftComposition %
{& '
get( +
;+ ,
internal- 5
set6 9
;9 :
}; <
} 
} �
|D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\Repositories\IManufactureOrderRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
Repositories% 1
{ 
public 

	interface '
IManufactureOrderRepository 0
:1 2 
IAggregateRepository3 G
<G H
ManufactureOrderH X
,X Y%
ManufactureOrderReadModelZ s
>s t
{ 
} 
}		 �
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\Repositories\IWeavingOrderDocumentRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
Repositories% 1
{ 
public 

	interface +
IWeavingOrderDocumentRepository 4
:5 6 
IAggregateRepository7 K
<K L

,Y Z"
OrderDocumentReadModel[ q
>q r
{ 
Task		 
<		 
string		
>		 !
GetWeavingOrderNumber		 *
(		* +
)		+ ,
;		, -
}

 
} �
hD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\ValueObjects\Blended.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
ValueObjects% 1
{ 
public 

class 
Blended 
: 
ListX  
<  !
float! &
>& '
{ 
public 
Blended 
( 
IEnumerable "
<" #
float# (
>( )

collection* 4
)4 5
:6 7
base8 <
(< =

collection= G
)G H
{ 	
}		 	
}

 
} �
lD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\ValueObjects\Composition.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
ValueObjects% 1
{ 
public 

class 
Composition 
: 
ValueObject *
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% 8
)		8 9
]		9 :
public

 
int

 
CompositionOfPoly

 $
{

% &
get

' *
;

* +
private

, 3
set

4 7
;

7 8
}

9 :
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% :
): ;
]; <
public
int
CompositionOfCotton
{
get
;
private
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 7
)7 8
]8 9
public 
int 
OtherComposition #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
Composition 
( 
int 
compositionOfPoly 0
,0 1
int 
compositionOfCotton 2
,2 3
int 
otherComposition /
)/ 0
{ 	
CompositionOfPoly 
= 
compositionOfPoly  1
;1 2
CompositionOfCotton 
=  !
compositionOfCotton" 5
;5 6
OtherComposition 
= 
otherComposition /
;/ 0
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
CompositionOfPoly *
;* +
yield 
return 
CompositionOfCotton ,
;, -
yield 
return 
OtherComposition )
;) *
}   	
}!! 
}"" �
qD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\ValueObjects\ConstructionById.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
ValueObjects% 1
{ 
public 

class 
ConstructionById !
:" #&
FabricConstructionDocument$ >
{ 
public		 
string		 
YarnType		 
{		  
get		! $
;		$ %
private		& -
set		. 1
;		1 2
}		3 4
public 
ConstructionById 
(  
Guid  $
id% '
,' (
string! '
constructionNumber( :
,: ;
string
yarnType
)
:
base
(
id
,
constructionNumber
)
{ 	
YarnType 
= 
yarnType 
;  
} 	
} 
} �
{D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\ValueObjects\FabricConstructionDocument.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
ValueObjects% 1
{ 
public 

class &
FabricConstructionDocument +
:, -
ValueObject. 9
{		 
[

 	
JsonProperty

	 
(

 
PropertyName

 "
=

# $
$str

% )
)

) *
]

* +
public 
Guid 
Id 
{ 
get 
; 
private %
set& )
;) *
}+ ,
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
string 
ConstructionNumber (
{) *
get+ .
;. /
private0 7
set8 ;
;; <
}= >
public &
FabricConstructionDocument )
() *
Guid* .
id/ 1
,1 2
string* 0
constructionNumber1 C
)C D
{ 	
Id 
= 
id 
; 
ConstructionNumber 
=  
constructionNumber! 3
;3 4
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
Id 
; 
yield 
return 
ConstructionNumber +
;+ ,
} 	
} 
} �

fD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\ValueObjects\Goods.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
ValueObjects% 1
{ 
public 

class 
Goods 
: 
ValueObject $
{ 
public		 
Goods		 
(		 
Guid		 
	productId		 #
,		# $
string		% +
name		, 0
)		0 1
{

 	
this 
. 
Identity 
= 
	productId %
;% &
this 
. 
Name 
= 
name 
; 
}
public 
Guid 
Identity 
{ 
get "
;" #
}$ %
public 
string 
Name 
{ 
get  
;  !
}" #
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
} 
} �
sD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\ValueObjects\GoodsCompositionId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public		 

class		 
GoodsCompositionId		 #
:		$ %
SingleValueObject		& 7
<		7 8
string		8 >
>		> ?
{

 
public 
GoodsCompositionId !
(! "
string" (
value) .
). /
:0 1
base2 6
(6 7
value7 <
)< =
{ 	
if
(
!
string
.

(
value
)
&&
!
Guid
.
TryParse
(
value
,
out
Guid
id
)
)
{ 
throw 
	Validator 
.  
ErrorValidation  /
(/ 0
(0 1
$str1 E
,E F
$strG U
)U V
)V W
;W X
} 
} 	
} 
} �
uD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\ValueObjects\MachineIdValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class  
MachineIdValueObject %
:& '
SingleValueObject( 9
<9 :
int: =
>= >
{ 
public		  
MachineIdValueObject		 #
(		# $
int		$ '
value		( -
)		- .
:		/ 0
base		1 5
(		5 6
value		6 ;
)		; <
{

 	
} 	
} 
}

kD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\ValueObjects\MaterialId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class 

MaterialId 
: 
SingleValueObject /
</ 0
int0 3
>3 4
{		 
public

 

MaterialId

 
(

 
int

 
value

 #
)

# $
:

% &
base

' +
(

+ ,
value

, 1
)

1 2
{ 	
} 	
}
public 

class 
MaterialIds 
: 
ListX $
<$ %

MaterialId% /
>/ 0
{ 
public 
MaterialIds 
( 
IEnumerable &
<& '

MaterialId' 1
>1 2

collection3 =
)= >
:? @
baseA E
(E F

collectionF P
)P Q
{ 	
} 	
} 
} �

oD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\ValueObjects\UnitDepartment.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
ValueObjects% 1
{ 
public 

class 
UnitDepartment 
:  !
ValueObject" -
{ 
public		 
UnitDepartment		 
(		 
Guid		 "
departmentId		# /
,		/ 0
string		1 7
name		8 <
)		< =
{

 	
Identity 
= 
departmentId #
;# $
Name 
= 
name 
; 
}
public 
Guid 
Identity 
{ 
get "
;" #
}$ %
public 
string 
Name 
{ 
get  
;  !
}" #
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
} 
} �
qD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\ValueObjects\UnitDepartmentId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class 
UnitDepartmentId !
:" #
SingleValueObject$ 5
<5 6
int6 9
>9 :
{ 
public		 
UnitDepartmentId		 
(		  
int		  #
value		$ )
)		) *
:		+ ,
base		- 1
(		1 2
value		2 7
)		7 8
{

 	
} 	
} 
}
jD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Orders\ValueObjects\YarnCodes.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Orders $
.$ %
ValueObjects% 1
{ 
public 

class 
	YarnCodes 
: 
ListX "
<" #
string# )
>) *
{ 
public 
	YarnCodes 
( 
IEnumerable $
<$ %
string% +
>+ ,

collection- 7
)7 8
:9 :
base; ?
(? @

collection@ J
)J K
{ 	
}		 	
}

 
} �

oD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\Commands\CoreAccountCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
Commands% -
{ 
public 

class 
CoreAccountCommand #
{ 
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ -
)- .
]. /
public 
string 
MongoId 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
[

 	
JsonProperty

	 
(

 
propertyName

 "
:

" #
$str

$ (
)

( )
]

) *
public 
int 
? 
Id 
{ 
get 
; 
private %
set& )
;) *
}+ ,
[
JsonProperty
(
propertyName
:
$str
)
]
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
} 
} �
jD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\Commands\UnitIdCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
Commands% -
{ 
public 

class 

{ 
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ (
)( )
]) *
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
}		 
}

 �
gD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\BeamId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class 
BeamId 
: 
SingleValueObject +
<+ ,
Guid, 0
>0 1
{		 
public

 
BeamId

 
(

 
Guid

 
id

 
)

 
:

  
base

! %
(

% &
id

& (
)

( )
{

* +
}

, -
} 
} �
oD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\ConstructionId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class 
ConstructionId 
:  !
SingleValueObject" 3
<3 4
Guid4 8
>8 9
{		 
public

 
ConstructionId

 
(

 
Guid

 "
id

# %
)

% &
:

' (
base

) -
(

- .
id

. 0
)

0 1
{

2 3
}

4 5
} 
} �
lD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\CoreAccount.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
public 

class 
CoreAccount 
: 
ValueObject *
{ 
public 
string 
MongoId 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
public		 
int		 
Id		 
{		 
get		 
;		 
private		 $
set		% (
;		( )
}		* +
public

 
string

 
Name

 
{

 
get

  
;

  !
private

" )
set

* -
;

- .
}

/ 0
public 
CoreAccount 
( 
string !
mongoId" )
,) *
int+ .
id/ 1
,1 2
string3 9
name: >
)> ?
{
MongoId 
= 
mongoId 
; 
Id 
= 
id 
; 
Name 
= 
name 
; 
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
MongoId  
;  !
yield 
return 
Id 
; 
yield 
return 
Name 
; 
} 	
} 
} �
{D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\DailyOperationMonitoringId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class &
DailyOperationMonitoringId +
:, -
SingleValueObject. ?
<? @
Guid@ D
>D E
{		 
public

 &
DailyOperationMonitoringId

 )
(

) *
Guid

* .
id

/ 1
)

1 2
:

3 4
base

5 9
(

9 :
id

: <
)

< =
{

> ?
}

@ A
} 
} �
wD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\DailyOperationSizingId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class "
DailyOperationSizingId '
:( )
SingleValueObject* ;
<; <
Guid< @
>@ A
{		 
public

 "
DailyOperationSizingId

 %
(

% &
Guid

& *
id

+ -
)

- .
:

/ 0
base

1 5
(

5 6
id

6 8
)

8 9
{

: ;
}

< =
} 
} �
jD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\MachineId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class 
	MachineId 
: 
SingleValueObject .
<. /
Guid/ 3
>3 4
{		 
public

 
	MachineId

 
(

 
Guid

 
id

  
)

  !
:

" #
base

$ (
(

( )
id

) +
)

+ ,
{

- .
}

/ 0
} 
} �
lD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\MachineType.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
public		 

class		 
MachineType		 
:		 
ValueObject		 *
{

 
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ (
)( )
]) *
public 
Guid 
Id 
{ 
get 
; 
} 
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ .
). /
]/ 0
public 
string 
TypeName 
{  
get! $
;$ %
}& '
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ +
)+ ,
], -
public 
int 
Speed 
{ 
get 
; 
}  !
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ 1
)1 2
]2 3
public 
string 
MachineUnit !
{" #
get$ '
;' (
}) *
public 
MachineType 
( 
MachineTypeDocument /
document0 8
)8 9
{ 	
Id 
= 
document 
. 
Identity "
;" #
TypeName 
= 
document 
.  
TypeName  (
;( )
Speed 
= 
document 
. 
Speed "
;" #
MachineUnit 
= 
document "
." #
MachineUnit# .
;. /
} 	
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{   	
yield!! 
return!! 
Id!! 
;!! 
yield"" 
return"" 
TypeName"" !
;""! "
yield## 
return## 
Speed## 
;## 
yield$$ 
return$$ 
MachineUnit$$ $
;$$$ %
}%% 	
}&& 
}'' �
nD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\MachineTypeId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class 

:  
SingleValueObject! 2
<2 3
Guid3 7
>7 8
{		 
public

 


 
(

 
Guid

 !
id

" $
)

$ %
:

% &
base

' +
(

+ ,
id

, .
)

. /
{

0 1
}

2 3
} 
} �
sD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\ManufactureMachine.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{		 
public

 

class

 
ManufactureMachine

 #
:

$ %
ValueObject

& 1
{ 
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ (
)( )
]) *
public
Guid
Id
{
get
;
}
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ 3
)3 4
]4 5
public 
string 

{$ %
get& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ .
). /
]/ 0
public 
string 
Location 
{  
get! $
;$ %
}& '
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ 1
)1 2
]2 3
public 
MachineType 
MachineType &
{' (
get) ,
;, -
}. /
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ 3
)3 4
]4 5
public 
UnitId 

{$ %
get& )
;) *
}+ ,
public 
ManufactureMachine !
(! "
MachineDocument" 1
machineDocument2 A
,A B
MachineTypeDocument *
machineTypeDocument+ >
)> ?
{ 	
Id 
= 
machineDocument  
.  !
Identity! )
;) *

= 
machineDocument +
.+ ,

;9 :
Location   
=   
machineDocument   &
.  & '
Location  ' /
;  / 0

=!! 
machineDocument!! +
.!!+ ,

;!!9 :
MachineType"" 
="" 
new"" 
MachineType"" )
("") *
machineTypeDocument""* =
)""= >
;""> ?
}## 	
	protected%% 
override%% 
IEnumerable%% &
<%%& '
object%%' -
>%%- .
GetAtomicValues%%/ >
(%%> ?
)%%? @
{&& 	
yield'' 
return'' 
Id'' 
;'' 
yield(( 
return(( 

;((& '
yield)) 
return)) 
Location)) !
;))! "
yield** 
return** 
MachineType** $
;**$ %
yield++ 
return++ 

;++& '
},, 	
}-- 
}.. �
oD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\MaterialTypeId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class 
MaterialTypeId 
:  !
SingleValueObject" 3
<3 4
Guid4 8
>8 9
{		 
public

 
MaterialTypeId

 
(

 
Guid

 "
id

# %
)

% &
:

' (
base

) -
(

- .
id

. 0
)

0 1
{

2 3
}

4 5
} 
}
kD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\OperatorId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class 

OperatorId 
: 
SingleValueObject /
</ 0
Guid0 4
>4 5
{		 
public

 

OperatorId

 
(

 
Guid

 
id

 !
)

! "
:

# $
base

% )
(

) *
id

* ,
)

, -
{

. /
}

0 1
} 
} �
hD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\OrderId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
[		 

(		 
typeof		 
(		 &
SingleValueObjectConverter		 4
)		4 5
)		5 6
]		6 7
public

 

class

 
OrderId

 
:

 
SingleValueObject

 ,
<

, -
Guid

- 1
>

1 2
{ 
public 
OrderId 
( 
Guid 
id 
) 
:  !
base" &
(& '
id' )
)) *
{+ ,
}- .
}
} �
gD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\Origin.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
public 

class 
Origin 
: 
SingleValueObject +
<+ ,
string, 2
>2 3
{		 
public

 
Origin

 
(

 
string

 
origin

 #
)

# $
:

% &
base

' +
(

+ ,
origin

, 2
)

2 3
{

4 5
}

6 7
} 
} �
hD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\ShiftId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class 
ShiftId 
: 
SingleValueObject ,
<, -
Guid- 1
>1 2
{		 
public

 
ShiftId

 
(

 
Guid

 
id

 
)

 
:

  !
base

" &
(

& '
id

' )
)

) *
{

+ ,
}

- .
} 
} �
gD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\UnitId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class 
UnitId 
: 
SingleValueObject +
<+ ,
int, /
>/ 0
{		 
public

 
UnitId

 
(

 
int

 
id

 
)

 
:

 
base

  $
(

$ %
id

% '
)

' (
{

) *
}

+ ,
} 
} �
gD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\UserId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class 
UserId 
: 
SingleValueObject +
<+ ,
string, 2
>2 3
{ 
public		 
UserId		 
(		 
string		 
id		 
)		  
:		! "
base		# '
(		' (
id		( *
)		* +
{		, -
}		. /
}

 
} �
nD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\WeavingUnitId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class 

:  
SingleValueObject! 2
<2 3
Guid3 7
>7 8
{		 
public

 


 
(

 
Guid

 !
id

" $
)

$ %
:

& '
base

( ,
(

, -
id

- /
)

/ 0
{

1 2
}

3 4
} 
} �
gD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\YarnId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class 
YarnId 
: 
SingleValueObject +
<+ ,
Guid, 0
>0 1
{		 
public

 
YarnId

 
(

 
Guid

 
id

 
)

 
:

  
base

! %
(

% &
id

& (
)

( )
{

* +
}

, -
} 
} �
mD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shared\ValueObjects\YarnNumberId.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shared $
.$ %
ValueObjects% 1
{ 
[ 

( 
typeof 
( &
SingleValueObjectConverter 4
)4 5
)5 6
]6 7
public 

class 
YarnNumberId 
: 
SingleValueObject  1
<1 2
Guid2 6
>6 7
{		 
public

 
YarnNumberId

 
(

 
Guid

  
id

! #
)

# $
:

% &
base

' +
(

+ ,
id

, .
)

. /
{

0 1
}

2 3
} 
} �
lD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shifts\Commands\AddShiftCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shifts $
.$ %
Commands% -
{ 
public 

class 
AddShiftCommand  
:! "
ICommand# +
<+ ,

>9 :
{		 
[

 	
JsonProperty

	 
(

 
propertyName

 "
:

" #
$str

$ *
)

* +
]

+ ,
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
[
JsonProperty
(
propertyName
:
$str
)
]
public 
string 
	StartTime 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ -
)- .
]. /
public 
string 
EndTime 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
} 
public 

class $
AddShiftCommandValidator )
:* +
AbstractValidator, =
<= >
AddShiftCommand> M
>M N
{ 
public $
AddShiftCommandValidator '
(' (
)( )
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
Name' +
)+ ,
., -
NotEmpty- 5
(5 6
)6 7
;7 8
RuleFor 
( 
command 
=> 
command &
.& '
	StartTime' 0
)0 1
.1 2
NotEmpty2 :
(: ;
); <
;< =
RuleFor 
( 
command 
=> 
command &
.& '
EndTime' .
). /
./ 0
NotEmpty0 8
(8 9
)9 :
;: ;
} 	
} 
} �
oD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shifts\Commands\RemoveShiftCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shifts $
.$ %
Commands% -
{ 
public 

class 
RemoveShiftCommand #
:$ %
ICommand& .
<. /

>< =
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% )
)		) *
]		* +
public

 
Guid

 
Id

 
{

 
get

 
;

 
private

 %
set

& )
;

) *
}

+ ,
public 
void 
SetId 
( 
Guid 
Id !
)! "
{
this 
. 
Id 
= 
Id 
; 
} 	
} 
} �
oD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shifts\Commands\UpdateShiftCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shifts $
.$ %
Commands% -
{		 
public

 

class

 
UpdateShiftCommand

 #
:

$ %
ICommand

& .
<

. /


/ <
>

< =
{ 
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ (
)( )
]) *
public
Guid
Id
{
get
;
private
set
;
}
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ *
)* +
]+ ,
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ /
)/ 0
]0 1
public 
string 
	StartTime 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ -
)- .
]. /
public 
string 
EndTime 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
public 
void 
SetId 
( 
Guid 
Id !
)! "
{ 	
this 
. 
Id 
= 
Id 
; 
} 	
} 
public 

class '
UpdateShiftCommandValidator ,
:- .
AbstractValidator/ @
<@ A
UpdateShiftCommandA S
>S T
{ 
public   '
UpdateShiftCommandValidator   *
(  * +
)  + ,
{!! 	
RuleFor"" 
("" 
command"" 
=>"" 
command"" &
.""& '
Name""' +
)""+ ,
."", -
NotEmpty""- 5
(""5 6
)""6 7
;""7 8
RuleFor## 
(## 
command## 
=>## 
command## &
.##& '
	StartTime##' 0
)##0 1
.##1 2
NotEmpty##2 :
(##: ;
)##; <
;##< =
RuleFor$$ 
($$ 
command$$ 
=>$$ 
command$$ &
.$$& '
EndTime$$' .
)$$. /
.$$/ 0
NotEmpty$$0 8
($$8 9
)$$9 :
;$$: ;
}%% 	
}&& 
}'' �	
mD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shifts\ReadModels\ShiftReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shifts $
.$ %

ReadModels% /
{ 
public 

class 
ShiftReadModel 
:  !

{ 
public 
ShiftReadModel 
( 
Guid "
identity# +
)+ ,
:- .
base/ 3
(3 4
identity4 <
)< =
{> ?
}@ A
public

 
string

 
Name

 
{

 
get

  
;

  !
internal

" *
set

+ .
;

. /
}

0 1
public 
TimeSpan 
	StartTime !
{" #
get$ '
;' (
internal) 1
set2 5
;5 6
}7 8
public 
TimeSpan 
EndTime 
{  !
get" %
;% &
internal' /
set0 3
;3 4
}5 6
}
} �
qD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shifts\Repositories\IShiftRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shifts $
.$ %
Repositories% 1
{ 
public 

	interface 
IShiftRepository %
:& ' 
IAggregateRepository( <
<< =

,J K
ShiftReadModelL Z
>Z [
{ 
} 
}		 �%
aD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Shifts\ShiftDocument.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Shifts $
{ 
public 

class 

:  

<. /

,< =
ShiftReadModel> L
>L M
{ 
public		 
string		 
Name		 
{		 
get		  
;		  !
private		" )
set		* -
;		- .
}		/ 0
public

 
TimeSpan

 
	StartTime

 !
{

" #
get

$ '
;

' (
private

) 0
set

1 4
;

4 5
}

6 7
public 
TimeSpan 
EndTime 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
public

(
Guid
identity
,
string #
name$ (
,( )
TimeSpan %
	startTime& /
,/ 0
TimeSpan %
endTime& -
)- .
:/ 0
base1 5
(5 6
identity6 >
)> ?
{ 	
Identity 
= 
identity 
;  
Name 
= 
name 
; 
	StartTime 
= 
	startTime !
;! "
EndTime 
= 
endTime 
; 

( 
) 
; 
	ReadModel 
= 
new 
ShiftReadModel *
(* +
Identity+ 3
)3 4
{ 
Name 
= 
this 
. 
Name  
,  !
	StartTime 
= 
this  
.  !
	StartTime! *
,* +
EndTime 
= 
this 
. 
EndTime &
} 
;
} 	
public!! 

(!! 
ShiftReadModel!! +
	readModel!!, 5
)!!5 6
:!!7 8
base!!9 =
(!!= >
	readModel!!> G
)!!G H
{"" 	
this## 
.## 
Name## 
=## 
	readModel## !
.##! "
Name##" &
;##& '
this$$ 
.$$ 
	StartTime$$ 
=$$ 
	readModel$$ &
.$$& '
	StartTime$$' 0
;$$0 1
this%% 
.%% 
EndTime%% 
=%% 
	readModel%% $
.%%$ %
EndTime%%% ,
;%%, -
}&& 	
public(( 
void(( 
SetName(( 
((( 
string(( "
value((# (
)((( )
{)) 	
if** 
(** 
Name** 
!=** 
value** 
)** 
{++ 
Name,, 
=,, 
value,, 
;,, 
	ReadModel-- 
.-- 
Name-- 
=--  
Name--! %
;--% &
MarkModified// 
(// 
)// 
;// 
}00 
}11 	
public33 
void33 
SetStartTime33  
(33  !
TimeSpan33! )
value33* /
)33/ 0
{44 	
if66 
(66 
	StartTime66 
!=66 
value66 "
)66" #
{77 
	StartTime88 
=88 
value88 !
;88! "
	ReadModel99 
.99 
	StartTime99 #
=99$ %
	StartTime99& /
;99/ 0
MarkModified;; 
(;; 
);; 
;;; 
}<< 
}== 	
public?? 
void?? 

SetEndTime?? 
(?? 
TimeSpan?? '
value??( -
)??- .
{@@ 	
ifAA 
(AA 
EndTimeAA 
!=AA 
valueAA  
)AA  !
{BB 
EndTimeCC 
=CC 
valueCC 
;CC  
	ReadModelDD 
.DD 
EndTimeDD !
=DD" #
EndTimeDD$ +
;DD+ ,
MarkModifiedFF 
(FF 
)FF 
;FF 
}GG 
}HH 	
	protectedJJ 
overrideJJ 

	GetEntityJJ) 2
(JJ2 3
)JJ3 4
{KK 	
returnLL 
thisLL 
;LL 
}MM 	
}NN 
}OO �
wD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Suppliers\Commands\PlaceNewSupplierCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Suppliers '
.' (
Commands( 0
{ 
public 

class #
PlaceNewSupplierCommand (
:) *
ICommand+ 3
<3 4#
WeavingSupplierDocument4 K
>K L
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% +
)		+ ,
]		, -
public

 
string

 
Code

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public
string
Name
{
get
;
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 5
)5 6
]6 7
public 
string 
CoreSupplierId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
public 

class ,
 PlaceNewSupplierCommandValidator 1
:2 3
AbstractValidator4 E
<E F#
PlaceNewSupplierCommandF ]
>] ^
{ 
public ,
 PlaceNewSupplierCommandValidator /
(/ 0
)0 1
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
Code' +
)+ ,
., -
NotEmpty- 5
(5 6
)6 7
;7 8
RuleFor 
( 
command 
=> 
command &
.& '
Name' +
)+ ,
., -
NotEmpty- 5
(5 6
)6 7
;7 8
RuleFor 
( 
command 
=> 
command &
.& '
CoreSupplierId' 5
)5 6
.6 7
NotEmpty7 ?
(? @
)@ A
;A B
} 	
} 
} �
uD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Suppliers\Commands\RemoveSupplierCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Suppliers '
.' (
Commands( 0
{ 
public 

class !
RemoveSupplierCommand &
:' (
ICommand) 1
<1 2#
WeavingSupplierDocument2 I
>I J
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% )
)		) *
]		* +
public

 
Guid

 
Id

 
{

 
get

 
;

 
private

 %
set

& )
;

) *
}

+ ,
public 
void 
SetId 
( 
Guid 
Id !
)! "
{# $
this% )
.) *
Id* ,
=- .
Id/ 1
;1 2
}3 4
}
} �
~D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Suppliers\Commands\UpdateExsistingSupplierCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Suppliers '
.' (
Commands( 0
{ 
public 

class *
UpdateExsistingSupplierCommand /
:0 1
ICommand2 :
<: ;#
WeavingSupplierDocument; R
>R S
{		 
[

 	
JsonProperty

	 
(

 
PropertyName

 "
=

# $
$str

% )
)

) *
]

* +
public 
Guid 
Id 
{ 
get 
; 
private %
set& )
;) *
}+ ,
[
JsonProperty
(
PropertyName
=
$str
)
]
public 
string 
Code 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 5
)5 6
]6 7
public 
string 
CoreSupplierId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
void 
SetId 
( 
Guid 
Id !
)! "
{ 	
this 
. 
Id 
= 
Id 
; 
} 	
} 
public 

class 3
'UpdateExsistingSupplierCommandValidator 8
:9 :
AbstractValidator; L
<L M*
UpdateExsistingSupplierCommandM k
>k l
{ 
public 3
'UpdateExsistingSupplierCommandValidator 6
(6 7
)7 8
{ 	
RuleFor   
(   
command   
=>   
command   &
.  & '
Code  ' +
)  + ,
.  , -
NotEmpty  - 5
(  5 6
)  6 7
;  7 8
RuleFor!! 
(!! 
command!! 
=>!! 
command!! &
.!!& '
Name!!' +
)!!+ ,
.!!, -
NotEmpty!!- 5
(!!5 6
)!!6 7
;!!7 8
RuleFor"" 
("" 
command"" 
=>"" 
command"" &
.""& '
CoreSupplierId""' 5
)""5 6
.""6 7
NotEmpty""7 ?
(""? @
)""@ A
;""A B
}## 	
}$$ 
}%% �	
�D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Suppliers\ReadModels\WeavingSupplierDocumentReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Suppliers '
.' (

ReadModels( 2
{ 
public 

class ,
 WeavingSupplierDocumentReadModel 1
:2 3

{		 
public

 ,
 WeavingSupplierDocumentReadModel

 /
(

/ 0
Guid

0 4
identity

5 =
)

= >
:

? @
base

A E
(

E F
identity

F N
)

N O
{

P Q
}

R S
public 
string 
Code 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
public
string
Name
{
get
;
internal
set
;
}
public 
string 
CoreSupplierId $
{% &
get' *
;* +
internal, 4
set5 8
;8 9
}: ;
} 
} �
~D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Suppliers\Repositories\IWeavingSupplierRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Suppliers '
.' (
Repositories( 4
{ 
public 

	interface &
IWeavingSupplierRepository /
:0 1 
IAggregateRepository2 F
<F G#
WeavingSupplierDocumentG ^
,^ _-
 WeavingSupplierDocumentReadModel	` �
>
� �
{ 
} 
}		 �&
nD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Suppliers\WeavingSupplierDocument.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
	Suppliers '
{ 
public 

class #
WeavingSupplierDocument (
:) *

<8 9#
WeavingSupplierDocument9 P
,P Q,
 WeavingSupplierDocumentReadModelR r
>r s
{ 
public		 
string		 
Code		 
{		 
get		  
;		  !
private		" )
set		* -
;		- .
}		/ 0
public

 
string

 
Name

 
{

 
get

  
;

  !
private

" )
set

* -
;

- .
}

/ 0
public 
string 
CoreSupplierId $
{% &
get' *
;* +
private, 3
set4 7
;7 8
}9 :
public
WeavingSupplierDocument
(
Guid
id
,
string' -
code. 2
,2 3
string' -
name. 2
,2 3
string' -
coreSupplierId. <
)< =
:> ?
base@ D
(D E
idE G
)G H
{ 	
Identity 
= 
id 
; 
Code 
= 
code 
; 
Name 
= 
name 
; 
CoreSupplierId 
= 
coreSupplierId +
;+ ,
this 
. 

( 
)  
;  !
	ReadModel 
= 
new ,
 WeavingSupplierDocumentReadModel <
(< =
Identity= E
)E F
{ 
Code 
= 
this 
. 
Code  
,  !
Name 
= 
this 
. 
Name  
,  !
CoreSupplierId 
=  
this! %
.% &
CoreSupplierId& 4
} 
;
}   	
public"" #
WeavingSupplierDocument"" &
(""& ',
 WeavingSupplierDocumentReadModel""' G
	readModel""H Q
)""Q R
:""S T
base""U Y
(""Y Z
	readModel""Z c
)""c d
{## 	
this$$ 
.$$ 
Code$$ 
=$$ 
	readModel$$ !
.$$! "
Code$$" &
;$$& '
this%% 
.%% 
Name%% 
=%% 
	readModel%% !
.%%! "
Name%%" &
;%%& '
this&& 
.&& 
CoreSupplierId&& 
=&&  !
	readModel&&" +
.&&+ ,
CoreSupplierId&&, :
;&&: ;
}'' 	
public** 
void** 
SetCode** 
(** 
string** "
code**# '
)**' (
{++ 	
if,, 
(,, 
code,, 
!=,, 
Code,, 
),, 
{-- 
Code.. 
=.. 
code.. 
;.. 
	ReadModel// 
.// 
Code// 
=//  
Code//! %
;//% &
MarkModified11 
(11 
)11 
;11 
}22 
}33 	
public55 
void55 
SetName55 
(55 
string55 "
name55# '
)55' (
{66 	
if77 
(77 
name77 
!=77 
Name77 
)77 
{88 
Name99 
=99 
name99 
;99 
	ReadModel:: 
.:: 
Name:: 
=::  
Name::! %
;::% &
MarkModified<< 
(<< 
)<< 
;<< 
}== 
}>> 	
public@@ 
void@@ 
SetCoreSupplierId@@ %
(@@% &
string@@& ,
id@@- /
)@@/ 0
{AA 	
ifBB 
(BB 
idBB 
!=BB 
CoreSupplierIdBB $
)BB$ %
{CC 
CoreSupplierIdDD 
=DD  
idDD! #
;DD# $
	ReadModelEE 
.EE 
CoreSupplierIdEE (
=EE) *
CoreSupplierIdEE+ 9
;EE9 :
MarkModifiedGG 
(GG 
)GG 
;GG 
}HH 
}II 	
	protectedKK 
overrideKK #
WeavingSupplierDocumentKK 2
	GetEntityKK3 <
(KK< =
)KK= >
{LL 	
returnMM 
thisMM 
;MM 
}NN 	
}OO 
}PP �
yD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\YarnNumbers\Commands\AddNewYarnNumberCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
YarnNumbers )
.) *
Commands* 2
{ 
public 

class #
AddNewYarnNumberCommand (
:) *
ICommand+ 3
<3 4
YarnNumberDocument4 F
>F G
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% +
)		+ ,
]		, -
public

 
string

 
Code

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public
int
Number
{
get
;
set
;
}
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public 
string 
RingType 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 2
)2 3
]3 4
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
public 

class ,
 AddNewYarnNumberCommandValidator 1
:2 3
AbstractValidator4 E
<E F#
AddNewYarnNumberCommandF ]
>] ^
{ 
public ,
 AddNewYarnNumberCommandValidator /
(/ 0
)0 1
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
Code' +
)+ ,
., -
NotEmpty- 5
(5 6
)6 7
;7 8
RuleFor 
( 
command 
=> 
command &
.& '
Number' -
)- .
.. /
NotEmpty/ 7
(7 8
)8 9
;9 :
RuleFor 
( 
command 
=> 
command &
.& '
RingType' /
)/ 0
.0 1
NotEmpty1 9
(9 :
): ;
;; <
} 	
} 
} �
yD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\YarnNumbers\Commands\RemoveYarnNumberCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
YarnNumbers )
.) *
Commands* 2
{ 
public 

class #
RemoveYarnNumberCommand (
:) *
ICommand+ 3
<3 4
YarnNumberDocument4 F
>F G
{ 
[		 	
JsonProperty			 
(		 
PropertyName		 "
=		# $
$str		% )
)		) *
]		* +
public

 
Guid

 
Id

 
{

 
get

 
;

 
private

 %
set

& )
;

) *
}

+ ,
public 
void 
SetId 
( 
Guid 
Id !
)! "
{
this 
. 
Id 
= 
Id 
; 
} 	
} 
} �
yD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\YarnNumbers\Commands\UpdateYarnNumberCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
YarnNumbers )
.) *
Commands* 2
{ 
public		 

class		 #
UpdateYarnNumberCommand		 (
:		) *
ICommand		+ 3
<		3 4
YarnNumberDocument		4 F
>		F G
{

 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% )
)) *
]* +
public 
Guid 
Id 
{ 
get 
; 
private %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% +
)+ ,
], -
public 
string 
Code 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% -
)- .
]. /
public 
int 
Number 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public 
string 
RingType 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 2
)2 3
]3 4
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
void 
SetId 
( 
Guid 
Id !
)! "
{ 	
this 
. 
Id 
= 
Id 
; 
} 	
} 
public   

class   ,
 UpdateYarnNumberCommandValidator   1
:  2 3
AbstractValidator  4 E
<  E F#
UpdateYarnNumberCommand  F ]
>  ] ^
{!! 
public"" ,
 UpdateYarnNumberCommandValidator"" /
(""/ 0
)""0 1
{## 	
RuleFor$$ 
($$ 
command$$ 
=>$$ 
command$$ &
.$$& '
Code$$' +
)$$+ ,
.$$, -
NotEmpty$$- 5
($$5 6
)$$6 7
;$$7 8
RuleFor%% 
(%% 
command%% 
=>%% 
command%% &
.%%& '
Number%%' -
)%%- .
.%%. /
NotEmpty%%/ 7
(%%7 8
)%%8 9
;%%9 :
RuleFor&& 
(&& 
command&& 
=>&& 
command&& &
.&&& '
RingType&&' /
)&&/ 0
.&&0 1
NotEmpty&&1 9
(&&9 :
)&&: ;
;&&; <
}'' 	
}(( 
})) �
D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\YarnNumbers\ReadModels\YarnNumberDocumentReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
YarnNumbers )
.) *

ReadModels* 4
{ 
public 

class '
YarnNumberDocumentReadModel ,
:- .

{ 
public '
YarnNumberDocumentReadModel *
(* +
Guid+ /
identity0 8
)8 9
:: ;
base< @
(@ A
identityA I
)I J
{K L
}M N
public

 
string

 
Code

 
{

 
get

  
;

  !
internal

" *
set

+ .
;

. /
}

0 1
public 
int 
Number 
{ 
get 
;  
internal! )
set* -
;- .
}/ 0
public 
string 
Description !
{" #
get$ '
;' (
internal) 1
set2 5
;5 6
}7 8
public
string
RingType
{
get
;
internal
set
;
}
} 
} �
{D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\YarnNumbers\Repositories\IYarnNumberRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
YarnNumbers )
.) *
Repositories* 6
{ 
public 

	interface !
IYarnNumberRepository *
:+ , 
IAggregateRepository- A
<A B
YarnNumberDocumentB T
,T U'
YarnNumberDocumentReadModelV q
>q r
{ 
} 
}		 �0
kD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\YarnNumbers\YarnNumberDocument.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
YarnNumbers )
{ 
public		 

class		 
YarnNumberDocument		 #
:		$ %

<		3 4
YarnNumberDocument		4 F
,		F G'
YarnNumberDocumentReadModel		H c
>		c d
{

 
public 
string 
Code 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
int 
Number 
{ 
get 
;  
private! (
set) ,
;, -
}. /
public
string
RingType
{
get
;
private
set
;
}
public 
string 
Description !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
YarnNumberDocument !
(! "
Guid" &
identity' /
,/ 0
string "
code# '
,' (
int 
number  &
,& '
string "
ringType# +
,+ ,
string "
description# .
). /
:0 1
base2 6
(6 7
identity7 ?
)? @
{ 	
Identity 
= 
identity 
;  
Code 
= 
code 
; 
Number 
= 
number 
; 
Description 
= 
description %
;% &
RingType 
= 
ringType 
;  
this 
. 

( 
)  
;  !
	ReadModel 
= 
new '
YarnNumberDocumentReadModel 7
(7 8
Identity8 @
)@ A
{   
Code!! 
=!! 
this!! 
.!! 
Code!!  
,!!  !
Number"" 
="" 
this"" 
."" 
Number"" $
,""$ %
RingType## 
=## 
this## 
.##  
RingType##  (
,##( )
Description$$ 
=$$ 
this$$ "
.$$" #
Description$$# .
}%% 
;%%
	ReadModel'' 
.'' 
AddDomainEvent'' $
(''$ %
new''% (&
OnYarnNumberDocumentPlaced'') C
(''C D
this''D H
.''H I
Identity''I Q
)''Q R
)''R S
;''S T
}(( 	
public** 
YarnNumberDocument** !
(**! "'
YarnNumberDocumentReadModel**" =
	readModel**> G
)**G H
:**I J
base**K O
(**O P
	readModel**P Y
)**Y Z
{++ 	
this,, 
.,, 
Code,, 
=,, 
	readModel,, !
.,,! "
Code,," &
;,,& '
this-- 
.-- 
Number-- 
=-- 
	readModel-- #
.--# $
Number--$ *
;--* +
this.. 
... 
Description.. 
=.. 
	readModel.. (
...( )
Description..) 4
;..4 5
this// 
.// 
RingType// 
=// 
	readModel// %
.//% &
RingType//& .
;//. /
}00 	
public22 
void22 
SetCode22 
(22 
string22 "
code22# '
)22' (
{33 	
if44 
(44 
code44 
!=44 
Code44 
)44 
{55 
Code66 
=66 
code66 
;66 
	ReadModel77 
.77 
Code77 
=77  
Code77! %
;77% &
MarkModified99 
(99 
)99 
;99 
}:: 
};; 	
public== 
void== 
	SetNumber== 
(== 
int== !
number==" (
)==( )
{>> 	
if?? 
(?? 
number?? 
!=?? 
Number??  
)??  !
{@@ 
NumberAA 
=AA 
numberAA 
;AA  
	ReadModelBB 
.BB 
NumberBB  
=BB! "
NumberBB# )
;BB) *
MarkModifiedDD 
(DD 
)DD 
;DD 
}EE 
}FF 	
publicHH 
voidHH 
SetRingTypeHH 
(HH  
stringHH  &
valueHH' ,
)HH, -
{II 	
ifJJ 
(JJ 
RingTypeJJ 
!=JJ 
valueJJ !
)JJ! "
{KK 
RingTypeLL 
=LL 
valueLL  
;LL  !
	ReadModelMM 
.MM 
RingTypeMM "
=MM# $
RingTypeMM% -
;MM- .
MarkModifiedOO 
(OO 
)OO 
;OO 
}PP 
}QQ 	
publicSS 
voidSS 
SetDescriptionSS "
(SS" #
stringSS# )
descriptionSS* 5
)SS5 6
{TT 	
ifUU 
(UU 
descriptionUU 
!=UU 
DescriptionUU *
)UU* +
{VV 
DescriptionWW 
=WW 
descriptionWW )
;WW) *
	ReadModelXX 
.XX 
DescriptionXX %
=XX& '
DescriptionXX( 3
;XX3 4
MarkModifiedZZ 
(ZZ 
)ZZ 
;ZZ 
}[[ 
}\\ 	
	protected^^ 
override^^ 
YarnNumberDocument^^ -
	GetEntity^^. 7
(^^7 8
)^^8 9
{__ 	
return`` 
this`` 
;`` 
}aa 	
}bb 
}cc �
pD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Yarns\Commands\CreateNewYarnCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Yarns #
.# $
Commands$ ,
{ 
public 

class  
CreateNewYarnCommand %
:& '
ICommand( 0
<0 1
YarnDocument1 =
>= >
{ 
[		 	
JsonProperty			 
(		 
propertyName		 "
:		" #
$str		$ *
)		* +
]		+ ,
public

 
string

 
Code

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ *
)* +
]+ ,
public
string
Name
{
get
;
set
;
}
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ *
)* +
]+ ,
public 
string 
Tags 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ 4
)4 5
]5 6
public 
string 
MaterialTypeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ 2
)2 3
]3 4
public 
string 
YarnNumberId "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
public 

class )
CreateNewYarnCommandValidator .
:/ 0
AbstractValidator1 B
<B C 
CreateNewYarnCommandC W
>W X
{ 
public )
CreateNewYarnCommandValidator ,
(, -
)- .
{ 	
RuleFor 
( 
command 
=> 
command &
.& '
Code' +
)+ ,
., -
NotEmpty- 5
(5 6
)6 7
;7 8
RuleFor 
( 
command 
=> 
command &
.& '
Name' +
)+ ,
., -
NotEmpty- 5
(5 6
)6 7
;7 8
RuleFor 
( 
command 
=> 
command &
.& '
Tags' +
)+ ,
., -
NotEmpty- 5
(5 6
)6 7
;7 8
RuleFor   
(   
command   
=>   
command   &
.  & '
MaterialTypeId  ' 5
)  5 6
.  6 7
NotEmpty  7 ?
(  ? @
)  @ A
;  A B
RuleFor!! 
(!! 
command!! 
=>!! 
command!! &
.!!& '
YarnNumberId!!' 3
)!!3 4
.!!4 5
NotEmpty!!5 =
(!!= >
)!!> ?
;!!? @
}"" 	
}## 
}$$ �
vD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Yarns\Commands\RemoveExsistingYarnCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Yarns #
.# $
Commands$ ,
{ 
public 

class &
RemoveExsistingYarnCommand +
:, -
ICommand. 6
<6 7
YarnDocument7 C
>C D
{		 
[

 	
JsonProperty

	 
(

 
PropertyName

 "
=

# $
$str

% )
)

) *
]

* +
public 
Guid 
Id 
{ 
get 
; 
private %
set& )
;) *
}+ ,
public
void
SetId
(
Guid
Id
)
{ 	
this 
. 
Id 
= 
Id 
; 
} 	
} 
} �
vD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Yarns\Commands\UpdateExsistingYarnCommand.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Yarns #
.# $
Commands$ ,
{ 
public		 

class		 &
UpdateExsistingYarnCommand		 +
:		, -
ICommand		. 6
<		6 7
YarnDocument		7 C
>		C D
{

 
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ (
)( )
]) *
public 
Guid 
Id 
{ 
get 
; 
private %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ *
)* +
]+ ,
public 
string 
Code 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ *
)* +
]+ ,
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ *
)* +
]+ ,
public 
string 
Tags 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ 4
)4 5
]5 6
public 
string 
MaterialTypeId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
JsonProperty	 
( 
propertyName "
:" #
$str$ 2
)2 3
]3 4
public 
string 
YarnNumberId "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
void 
SetId 
( 
Guid 
Id !
)! "
{ 	
this 
. 
Id 
= 
Id 
; 
}   	
}!! 
public## 

class## /
#UpdateExsistingYarnCommandValidator## 4
:##5 6
AbstractValidator##7 H
<##H I&
UpdateExsistingYarnCommand##I c
>##c d
{$$ 
public%% /
#UpdateExsistingYarnCommandValidator%% 2
(%%2 3
)%%3 4
{&& 	
RuleFor'' 
('' 
command'' 
=>'' 
command'' &
.''& '
Code''' +
)''+ ,
.'', -
NotEmpty''- 5
(''5 6
)''6 7
;''7 8
RuleFor(( 
((( 
command(( 
=>(( 
command(( &
.((& '
Name((' +
)((+ ,
.((, -
NotEmpty((- 5
(((5 6
)((6 7
;((7 8
RuleFor)) 
()) 
command)) 
=>)) 
command)) &
.))& '
Tags))' +
)))+ ,
.)), -
NotEmpty))- 5
())5 6
)))6 7
;))7 8
RuleFor** 
(** 
command** 
=>** 
command** &
.**& '
MaterialTypeId**' 5
)**5 6
.**6 7
NotEmpty**7 ?
(**? @
)**@ A
;**A B
RuleFor++ 
(++ 
command++ 
=>++ 
command++ &
.++& '
YarnNumberId++' 3
)++3 4
.++4 5
NotEmpty++5 =
(++= >
)++> ?
;++? @
},, 	
}-- 
}.. �
sD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Yarns\ReadModels\YarnDocumentReadModel.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Yarns #
.# $

ReadModels$ .
{ 
public 

class !
YarnDocumentReadModel &
:' (

{ 
public !
YarnDocumentReadModel $
($ %
Guid% )
identity* 2
)2 3
:4 5
base6 :
(: ;
identity; C
)C D
{E F
}G H
public

 
string

 
Code

 
{

 
get

  
;

  !
internal

" *
set

+ .
;

. /
}

0 1
public 
string 
Name 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
public 
string 
Tags 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
public
Guid
?
MaterialTypeId
{
get
;
internal
set
;
}
public 
Guid 
? 
YarnNumberId !
{" #
get$ '
;' (
internal) 1
set2 5
;5 6
}7 8
} 
} �
wD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Yarns\Repositories\IYarnDocumentRepository.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Yarns #
.# $
Repositories$ 0
{ 
public 

	interface #
IYarnDocumentRepository ,
:- . 
IAggregateRepository/ C
<C D
YarnDocumentD P
,P Q!
YarnDocumentReadModelR g
>g h
{ 
} 
}		 �
sD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Yarns\ValueObjects\CurrencyValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Yarns #
.# $
ValueObjects$ 0
{ 
public 

class 
CurrencyValueObject $
:% &
ValueObject' 2
{ 
public 
CurrencyValueObject "
(" #
string# )
code* .
,. /
string0 6
name7 ;
); <
{		 	
Code

 
=

 
code

 
;

 
Name 
= 
name 
; 
} 	
public 
string 
Code 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
Code 
; 
yield 
return 
Name 
; 
} 	
} 
} �
{D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Yarns\ValueObjects\SupplierDocumentValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Yarns #
.# $
ValueObjects$ 0
{ 
public 

class '
SupplierDocumentValueObject ,
:- .
ValueObject/ :
{ 
public '
SupplierDocumentValueObject *
(* +
string+ 1
code2 6
,6 7
string8 >
name? C
)C D
{		 	
Code

 
=

 
code

 
;

 
Name 
= 
name 
; 
} 	
public 
string 
Code 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
Code 
; 
yield 
return 
Name 
; 
} 	
} 
} �
nD:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Yarns\ValueObjects\UomValueObject.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Yarns #
.# $
ValueObjects$ 0
{ 
public 

class 
UomValueObject 
:  !
ValueObject" -
{ 
public 
UomValueObject 
( 
string $
code% )
,) *
string+ 1
unit2 6
)6 7
{		 	
Code

 
=

 
code

 
;

 
Unit 
= 
unit 
; 
} 	
public 
string 
Code 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
string 
Unit 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
	protected 
override 
IEnumerable &
<& '
object' -
>- .
GetAtomicValues/ >
(> ?
)? @
{ 	
yield 
return 
Code 
; 
yield 
return 
Unit 
; 
} 	
} 
} �>
_D:\DanLirisDevelopment\id.co.danliris-weaving-web\src\Manufactures.Domain\Yarns\YarnDocument.cs
	namespace 	
Manufactures
 
. 
Domain 
. 
Yarns #
{ 
public		 

class		 
YarnDocument		 
:		 

<		- .
YarnDocument		. :
,		: ;!
YarnDocumentReadModel		< Q
>		Q R
{

 
public 
string 
Code 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public
string
Tags
{
get
;
private
set
;
}
public 
MaterialTypeId 
MaterialTypeId ,
{- .
get/ 2
;2 3
private4 ;
set< ?
;? @
}A B
public 
YarnNumberId 
YarnNumberId (
{) *
get+ .
;. /
private0 7
set8 ;
;; <
}= >
public 
YarnDocument 
( 
Guid  
id! #
,# $
string "
code# '
,' (
string "
name# '
,' (
string "
tags# '
,' (
MaterialTypeId *
materialTypeId+ 9
,9 :
YarnNumberId (
yarnNumberId) 5
)5 6
:7 8
base9 =
(= >
id> @
)@ A
{ 	
Identity 
= 
id 
; 
Code 
= 
code 
; 
Name 
= 
name 
; 
Tags 
= 
tags 
; 
MaterialTypeId 
= 
materialTypeId +
;+ ,
YarnNumberId 
= 
yarnNumberId '
;' (
this 
. 

( 
)  
;  !
	ReadModel!! 
=!! 
new!! !
YarnDocumentReadModel!! 1
(!!1 2
Identity!!2 :
)!!: ;
{"" 
Code## 
=## 
this## 
.## 
Code##  
,##  !
Name$$ 
=$$ 
this$$ 
.$$ 
Name$$  
,$$  !
Tags%% 
=%% 
this%% 
.%% 
Tags%%  
,%%  !
MaterialTypeId&& 
=&&  
this&&! %
.&&% &
MaterialTypeId&&& 4
.&&4 5
Value&&5 :
,&&: ;
YarnNumberId'' 
='' 
this'' #
.''# $
YarnNumberId''$ 0
.''0 1
Value''1 6
}(( 
;((
	ReadModel** 
.** 
AddDomainEvent** $
(**$ %
new**% (
OnYarnAddDocument**) :
(**: ;
this**; ?
.**? @
Identity**@ H
)**H I
)**I J
;**J K
}++ 	
public-- 
YarnDocument-- 
(-- !
YarnDocumentReadModel-- 1
	readModel--2 ;
)--; <
:--= >
base--? C
(--C D
	readModel--D M
)--M N
{.. 	
this// 
.// 
Code// 
=// 
	readModel// !
.//! "
Code//" &
;//& '
this00 
.00 
Name00 
=00 
	readModel00 !
.00! "
Name00" &
;00& '
this11 
.11 
Tags11 
=11 
	readModel11 !
.11! "
Tags11" &
;11& '
this22 
.22 
MaterialTypeId22 
=22  !
	readModel33 
.33 
MaterialTypeId33 (
.33( )
HasValue33) 1
?332 3
new44 
MaterialTypeId44 &
(44& '
	readModel44' 0
.440 1
MaterialTypeId441 ?
.44? @
Value44@ E
)44E F
:44G H
null44I M
;44M N
this55 
.55 
YarnNumberId55 
=55 
	readModel66 
.66 
YarnNumberId66 &
.66& '
HasValue66' /
?660 1
new77 
YarnNumberId77 $
(77$ %
	readModel77% .
.77. /
YarnNumberId77/ ;
.77; <
Value77< A
)77A B
:77C D
null77E I
;77I J
}88 	
public:: 
void:: 
SetCode:: 
(:: 
string:: "
code::# '
)::' (
{;; 	
if<< 
(<< 
Code<< 
!=<< 
code<< 
)<< 
{== 
Code>> 
=>> 
code>> 
;>> 
	ReadModel?? 
.?? 
Code?? 
=??  
Code??! %
;??% &
MarkModifiedAA 
(AA 
)AA 
;AA 
}BB 
}CC 	
publicEE 
voidEE 
SetNameEE 
(EE 
stringEE "
nameEE# '
)EE' (
{FF 	
ifGG 
(GG 
NameGG 
!=GG 
nameGG 
)GG 
{HH 
NameII 
=II 
nameII 
;II 
	ReadModelJJ 
.JJ 
NameJJ 
=JJ  
NameJJ! %
;JJ% &
MarkModifiedLL 
(LL 
)LL 
;LL 
}MM 
}NN 	
publicPP 
voidPP 
SetTagsPP 
(PP 
stringPP "
tagsPP# '
)PP' (
{QQ 	
ifRR 
(RR 
TagsRR 
!=RR 
tagsRR 
)RR 
{SS 
TagsTT 
=TT 
tagsTT 
;TT 
	ReadModelUU 
.UU 
TagsUU 
=UU  
TagsUU! %
;UU% &
MarkModifiedWW 
(WW 
)WW 
;WW 
}XX 
}YY 	
public[[ 
void[[ 
SetMaterialTypeId[[ %
([[% &
MaterialTypeId[[& 4
value[[5 :
)[[: ;
{\\ 	
if]] 
(]] 
MaterialTypeId]] 
!=]]  
value]]! &
)]]& '
{^^ 
MaterialTypeId__ 
=__  
value__! &
;__& '
	ReadModel`` 
.`` 
MaterialTypeId`` (
=``) *
MaterialTypeId``+ 9
.``9 :
Value``: ?
;``? @
MarkModifiedbb 
(bb 
)bb 
;bb 
}cc 
}dd 	
publicff 
voidff 
SetYarnNumberIdff #
(ff# $
YarnNumberIdff$ 0
valueff1 6
)ff6 7
{gg 	
ifhh 
(hh 
YarnNumberIdhh 
!=hh 
valuehh $
)hh$ %
{ii 
YarnNumberIdjj 
=jj 
valuejj $
;jj$ %
	ReadModelkk 
.kk 
YarnNumberIdkk &
=kk' (
YarnNumberIdkk) 5
.kk5 6
Valuekk6 ;
;kk; <
MarkModifiedmm 
(mm 
)mm 
;mm 
}nn 
}oo 	
	protectedqq 
overrideqq 
YarnDocumentqq '
	GetEntityqq( 1
(qq1 2
)qq2 3
{rr 	
returnss 
thisss 
;ss 
}tt 	
}uu 
}vv 