�
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%��L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718͠
~
convol_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_nameconvol_1/kernel
w
#convol_1/kernel/Read/ReadVariableOpReadVariableOpconvol_1/kernel*"
_output_shapes
:
*
dtype0
r
convol_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconvol_1/bias
k
!convol_1/bias/Read/ReadVariableOpReadVariableOpconvol_1/bias*
_output_shapes
:*
dtype0
~
convol_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_nameconvol_2/kernel
w
#convol_2/kernel/Read/ReadVariableOpReadVariableOpconvol_2/kernel*"
_output_shapes
:
*
dtype0
r
convol_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconvol_2/bias
k
!convol_2/bias/Read/ReadVariableOpReadVariableOpconvol_2/bias*
_output_shapes
:*
dtype0
~
convol_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_nameconvol_3/kernel
w
#convol_3/kernel/Read/ReadVariableOpReadVariableOpconvol_3/kernel*"
_output_shapes
:
*
dtype0
r
convol_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconvol_3/bias
k
!convol_3/bias/Read/ReadVariableOpReadVariableOpconvol_3/bias*
_output_shapes
:*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	� *
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
: *
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:
*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:;*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:;*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
�
Adam/convol_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/convol_1/kernel/m
�
*Adam/convol_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/convol_1/kernel/m*"
_output_shapes
:
*
dtype0
�
Adam/convol_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/convol_1/bias/m
y
(Adam/convol_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/convol_1/bias/m*
_output_shapes
:*
dtype0
�
Adam/convol_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/convol_2/kernel/m
�
*Adam/convol_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/convol_2/kernel/m*"
_output_shapes
:
*
dtype0
�
Adam/convol_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/convol_2/bias/m
y
(Adam/convol_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/convol_2/bias/m*
_output_shapes
:*
dtype0
�
Adam/convol_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/convol_3/kernel/m
�
*Adam/convol_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/convol_3/kernel/m*"
_output_shapes
:
*
dtype0
�
Adam/convol_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/convol_3/bias/m
y
(Adam/convol_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/convol_3/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *&
shared_nameAdam/dense_4/kernel/m
�
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes
:	� *
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
: *
dtype0
�
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes

:
*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:;*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:;*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0
�
Adam/convol_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/convol_1/kernel/v
�
*Adam/convol_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/convol_1/kernel/v*"
_output_shapes
:
*
dtype0
�
Adam/convol_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/convol_1/bias/v
y
(Adam/convol_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/convol_1/bias/v*
_output_shapes
:*
dtype0
�
Adam/convol_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/convol_2/kernel/v
�
*Adam/convol_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/convol_2/kernel/v*"
_output_shapes
:
*
dtype0
�
Adam/convol_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/convol_2/bias/v
y
(Adam/convol_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/convol_2/bias/v*
_output_shapes
:*
dtype0
�
Adam/convol_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/convol_3/kernel/v
�
*Adam/convol_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/convol_3/kernel/v*"
_output_shapes
:
*
dtype0
�
Adam/convol_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/convol_3/bias/v
y
(Adam/convol_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/convol_3/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *&
shared_nameAdam/dense_4/kernel/v
�
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes
:	� *
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
: *
dtype0
�
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes

:
*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:;*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:;*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�g
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�g
value�gB�g B�g
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer_with_weights-3
layer-14
layer_with_weights-4
layer-15
layer-16
layer-17
layer-18
layer_with_weights-5
layer-19
layer-20
layer_with_weights-6
layer-21
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
 
h

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
R
#	variables
$regularization_losses
%trainable_variables
&	keras_api
R
'	variables
(regularization_losses
)trainable_variables
*	keras_api
h

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
R
1	variables
2regularization_losses
3trainable_variables
4	keras_api
R
5	variables
6regularization_losses
7trainable_variables
8	keras_api
h

9kernel
:bias
;	variables
<regularization_losses
=trainable_variables
>	keras_api
R
?	variables
@regularization_losses
Atrainable_variables
B	keras_api
R
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
R
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
 
R
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
R
O	variables
Pregularization_losses
Qtrainable_variables
R	keras_api
h

Skernel
Tbias
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
h

Ykernel
Zbias
[	variables
\regularization_losses
]trainable_variables
^	keras_api
R
_	variables
`regularization_losses
atrainable_variables
b	keras_api
R
c	variables
dregularization_losses
etrainable_variables
f	keras_api
R
g	variables
hregularization_losses
itrainable_variables
j	keras_api
h

kkernel
lbias
m	variables
nregularization_losses
otrainable_variables
p	keras_api
R
q	variables
rregularization_losses
strainable_variables
t	keras_api
h

ukernel
vbias
w	variables
xregularization_losses
ytrainable_variables
z	keras_api
�
{iter

|beta_1

}beta_2
	~decay
learning_ratem�m�+m�,m�9m�:m�Sm�Tm�Ym�Zm�km�lm�um�vm�v�v�+v�,v�9v�:v�Sv�Tv�Yv�Zv�kv�lv�uv�vv�
f
0
1
+2
,3
94
:5
S6
T7
Y8
Z9
k10
l11
u12
v13
 
f
0
1
+2
,3
94
:5
S6
T7
Y8
Z9
k10
l11
u12
v13
�
�metrics
	variables
 �layer_regularization_losses
regularization_losses
�layer_metrics
trainable_variables
�non_trainable_variables
�layers
 
[Y
VARIABLE_VALUEconvol_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconvol_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
�metrics
	variables
 �layer_regularization_losses
 regularization_losses
�layer_metrics
!trainable_variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
#	variables
 �layer_regularization_losses
$regularization_losses
�layer_metrics
%trainable_variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
'	variables
 �layer_regularization_losses
(regularization_losses
�layer_metrics
)trainable_variables
�non_trainable_variables
�layers
[Y
VARIABLE_VALUEconvol_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconvol_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
�
�metrics
-	variables
 �layer_regularization_losses
.regularization_losses
�layer_metrics
/trainable_variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
1	variables
 �layer_regularization_losses
2regularization_losses
�layer_metrics
3trainable_variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
5	variables
 �layer_regularization_losses
6regularization_losses
�layer_metrics
7trainable_variables
�non_trainable_variables
�layers
[Y
VARIABLE_VALUEconvol_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconvol_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

90
:1
 

90
:1
�
�metrics
;	variables
 �layer_regularization_losses
<regularization_losses
�layer_metrics
=trainable_variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
?	variables
 �layer_regularization_losses
@regularization_losses
�layer_metrics
Atrainable_variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
C	variables
 �layer_regularization_losses
Dregularization_losses
�layer_metrics
Etrainable_variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
G	variables
 �layer_regularization_losses
Hregularization_losses
�layer_metrics
Itrainable_variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
K	variables
 �layer_regularization_losses
Lregularization_losses
�layer_metrics
Mtrainable_variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
O	variables
 �layer_regularization_losses
Pregularization_losses
�layer_metrics
Qtrainable_variables
�non_trainable_variables
�layers
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

S0
T1
 

S0
T1
�
�metrics
U	variables
 �layer_regularization_losses
Vregularization_losses
�layer_metrics
Wtrainable_variables
�non_trainable_variables
�layers
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

Y0
Z1
 

Y0
Z1
�
�metrics
[	variables
 �layer_regularization_losses
\regularization_losses
�layer_metrics
]trainable_variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
_	variables
 �layer_regularization_losses
`regularization_losses
�layer_metrics
atrainable_variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
c	variables
 �layer_regularization_losses
dregularization_losses
�layer_metrics
etrainable_variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
g	variables
 �layer_regularization_losses
hregularization_losses
�layer_metrics
itrainable_variables
�non_trainable_variables
�layers
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

k0
l1
 

k0
l1
�
�metrics
m	variables
 �layer_regularization_losses
nregularization_losses
�layer_metrics
otrainable_variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
q	variables
 �layer_regularization_losses
rregularization_losses
�layer_metrics
strainable_variables
�non_trainable_variables
�layers
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

u0
v1
 

u0
v1
�
�metrics
w	variables
 �layer_regularization_losses
xregularization_losses
�layer_metrics
ytrainable_variables
�non_trainable_variables
�layers
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

�0
�1
 
 
 
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
~|
VARIABLE_VALUEAdam/convol_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/convol_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/convol_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/convol_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/convol_3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/convol_3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/convol_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/convol_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/convol_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/convol_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/convol_3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/convol_3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_input_3Placeholder*,
_output_shapes
:����������*
dtype0*!
shape:����������
�
serving_default_input_4Placeholder*+
_output_shapes
:���������
*
dtype0* 
shape:���������

�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3serving_default_input_4convol_1/kernelconvol_1/biasconvol_2/kernelconvol_2/biasconvol_3/kernelconvol_3/biasdense_5/kerneldense_5/biasdense_4/kerneldense_4/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_55533
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#convol_1/kernel/Read/ReadVariableOp!convol_1/bias/Read/ReadVariableOp#convol_2/kernel/Read/ReadVariableOp!convol_2/bias/Read/ReadVariableOp#convol_3/kernel/Read/ReadVariableOp!convol_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/convol_1/kernel/m/Read/ReadVariableOp(Adam/convol_1/bias/m/Read/ReadVariableOp*Adam/convol_2/kernel/m/Read/ReadVariableOp(Adam/convol_2/bias/m/Read/ReadVariableOp*Adam/convol_3/kernel/m/Read/ReadVariableOp(Adam/convol_3/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp*Adam/convol_1/kernel/v/Read/ReadVariableOp(Adam/convol_1/bias/v/Read/ReadVariableOp*Adam/convol_2/kernel/v/Read/ReadVariableOp(Adam/convol_2/bias/v/Read/ReadVariableOp*Adam/convol_3/kernel/v/Read/ReadVariableOp(Adam/convol_3/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_56484
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconvol_1/kernelconvol_1/biasconvol_2/kernelconvol_2/biasconvol_3/kernelconvol_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/convol_1/kernel/mAdam/convol_1/bias/mAdam/convol_2/kernel/mAdam/convol_2/bias/mAdam/convol_3/kernel/mAdam/convol_3/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/convol_1/kernel/vAdam/convol_1/bias/vAdam/convol_2/kernel/vAdam/convol_2/bias/vAdam/convol_3/kernel/vAdam/convol_3/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v*?
Tin8
624*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_56647��
�
O
3__inference_spatial_dropout1d_5_layer_call_fn_56080

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_548352
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
I
-__inference_leaky_re_lu_9_layer_call_fn_56231

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_548972
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
d
H__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_55849

inputs
identityi
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:����������*
alpha%���>2
	LeakyRelup
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
J
.__inference_leaky_re_lu_11_layer_call_fn_56283

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_549362
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
I
-__inference_leaky_re_lu_6_layer_call_fn_55844

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_547612
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
m
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_55211

inputs
identity�D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:����������2
dropout/Mul�
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :������������������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:����������2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
B__inference_dense_5_layer_call_and_return_conditional_losses_56226

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_56246

inputs
identityd
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:���������*
alpha%���>2
	LeakyReluk
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
m
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_55115

inputs
identity�D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:����������2
dropout/Mul�
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :������������������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:����������2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_dense_6_layer_call_fn_56268

inputs
unknown:;
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_549252
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������;: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������;
 
_user_specified_nameinputs
�O
�
B__inference_model_1_layer_call_and_return_conditional_losses_54955

inputs
inputs_1$
convol_1_54751:

convol_1_54753:$
convol_2_54785:

convol_2_54787:$
convol_3_54819:

convol_3_54821:
dense_5_54871:

dense_5_54873: 
dense_4_54887:	� 
dense_4_54889: 
dense_6_54926:;
dense_6_54928:
dense_7_54949:
dense_7_54951:
identity�� convol_1/StatefulPartitionedCall� convol_2/StatefulPartitionedCall� convol_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�
 convol_1/StatefulPartitionedCallStatefulPartitionedCallinputsconvol_1_54751convol_1_54753*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_convol_1_layer_call_and_return_conditional_losses_547502"
 convol_1/StatefulPartitionedCall�
leaky_re_lu_6/PartitionedCallPartitionedCall)convol_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_547612
leaky_re_lu_6/PartitionedCall�
#spatial_dropout1d_3/PartitionedCallPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_547672%
#spatial_dropout1d_3/PartitionedCall�
 convol_2/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_3/PartitionedCall:output:0convol_2_54785convol_2_54787*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_convol_2_layer_call_and_return_conditional_losses_547842"
 convol_2/StatefulPartitionedCall�
leaky_re_lu_7/PartitionedCallPartitionedCall)convol_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_547952
leaky_re_lu_7/PartitionedCall�
#spatial_dropout1d_4/PartitionedCallPartitionedCall&leaky_re_lu_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_548012%
#spatial_dropout1d_4/PartitionedCall�
 convol_3/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_4/PartitionedCall:output:0convol_3_54819convol_3_54821*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_convol_3_layer_call_and_return_conditional_losses_548182"
 convol_3/StatefulPartitionedCall�
leaky_re_lu_8/PartitionedCallPartitionedCall)convol_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_548292
leaky_re_lu_8/PartitionedCall�
#spatial_dropout1d_5/PartitionedCallPartitionedCall&leaky_re_lu_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_548352%
#spatial_dropout1d_5/PartitionedCall�
dropout_1/PartitionedCallPartitionedCall,spatial_dropout1d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_548422
dropout_1/PartitionedCall�
flatten_3/PartitionedCallPartitionedCallinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_548502
flatten_3/PartitionedCall�
flatten_2/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_548582
flatten_2/PartitionedCall�
dense_5/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_5_54871dense_5_54873*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_548702!
dense_5/StatefulPartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_54887dense_4_54889*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_548862!
dense_4/StatefulPartitionedCall�
leaky_re_lu_9/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_548972
leaky_re_lu_9/PartitionedCall�
leaky_re_lu_10/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_549042 
leaky_re_lu_10/PartitionedCall�
concatenate_1/PartitionedCallPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0'leaky_re_lu_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������;* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_549132
concatenate_1/PartitionedCall�
dense_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_6_54926dense_6_54928*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_549252!
dense_6/StatefulPartitionedCall�
leaky_re_lu_11/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_549362 
leaky_re_lu_11/PartitionedCall�
dense_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0dense_7_54949dense_7_54951*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_549482!
dense_7/StatefulPartitionedCall�
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0!^convol_1/StatefulPartitionedCall!^convol_2/StatefulPartitionedCall!^convol_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������:���������
: : : : : : : : : : : : : : 2D
 convol_1/StatefulPartitionedCall convol_1/StatefulPartitionedCall2D
 convol_2/StatefulPartitionedCall convol_2/StatefulPartitionedCall2D
 convol_3/StatefulPartitionedCall convol_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs:SO
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
m
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_56004

inputs
identity�D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Const�
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'���������������������������2
dropout/Mul�
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :������������������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'���������������������������2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
l
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_54507

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'���������������������������2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'���������������������������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�	
�
B__inference_dense_6_layer_call_and_return_conditional_losses_56278

inputs0
matmul_readvariableop_resource:;-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:;*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������;: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������;
 
_user_specified_nameinputs
�V
�
B__inference_model_1_layer_call_and_return_conditional_losses_55320

inputs
inputs_1$
convol_1_55271:

convol_1_55273:$
convol_2_55278:

convol_2_55280:$
convol_3_55285:

convol_3_55287:
dense_5_55295:

dense_5_55297: 
dense_4_55300:	� 
dense_4_55302: 
dense_6_55308:;
dense_6_55310:
dense_7_55314:
dense_7_55316:
identity�� convol_1/StatefulPartitionedCall� convol_2/StatefulPartitionedCall� convol_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�+spatial_dropout1d_3/StatefulPartitionedCall�+spatial_dropout1d_4/StatefulPartitionedCall�+spatial_dropout1d_5/StatefulPartitionedCall�
 convol_1/StatefulPartitionedCallStatefulPartitionedCallinputsconvol_1_55271convol_1_55273*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_convol_1_layer_call_and_return_conditional_losses_547502"
 convol_1/StatefulPartitionedCall�
leaky_re_lu_6/PartitionedCallPartitionedCall)convol_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_547612
leaky_re_lu_6/PartitionedCall�
+spatial_dropout1d_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_552112-
+spatial_dropout1d_3/StatefulPartitionedCall�
 convol_2/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_3/StatefulPartitionedCall:output:0convol_2_55278convol_2_55280*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_convol_2_layer_call_and_return_conditional_losses_547842"
 convol_2/StatefulPartitionedCall�
leaky_re_lu_7/PartitionedCallPartitionedCall)convol_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_547952
leaky_re_lu_7/PartitionedCall�
+spatial_dropout1d_4/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_7/PartitionedCall:output:0,^spatial_dropout1d_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_551632-
+spatial_dropout1d_4/StatefulPartitionedCall�
 convol_3/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_4/StatefulPartitionedCall:output:0convol_3_55285convol_3_55287*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_convol_3_layer_call_and_return_conditional_losses_548182"
 convol_3/StatefulPartitionedCall�
leaky_re_lu_8/PartitionedCallPartitionedCall)convol_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_548292
leaky_re_lu_8/PartitionedCall�
+spatial_dropout1d_5/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_8/PartitionedCall:output:0,^spatial_dropout1d_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_551152-
+spatial_dropout1d_5/StatefulPartitionedCall�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_5/StatefulPartitionedCall:output:0,^spatial_dropout1d_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_550832#
!dropout_1/StatefulPartitionedCall�
flatten_3/PartitionedCallPartitionedCallinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_548502
flatten_3/PartitionedCall�
flatten_2/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_548582
flatten_2/PartitionedCall�
dense_5/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_5_55295dense_5_55297*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_548702!
dense_5/StatefulPartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_55300dense_4_55302*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_548862!
dense_4/StatefulPartitionedCall�
leaky_re_lu_9/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_548972
leaky_re_lu_9/PartitionedCall�
leaky_re_lu_10/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_549042 
leaky_re_lu_10/PartitionedCall�
concatenate_1/PartitionedCallPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0'leaky_re_lu_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������;* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_549132
concatenate_1/PartitionedCall�
dense_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_6_55308dense_6_55310*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_549252!
dense_6/StatefulPartitionedCall�
leaky_re_lu_11/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_549362 
leaky_re_lu_11/PartitionedCall�
dense_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0dense_7_55314dense_7_55316*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_549482!
dense_7/StatefulPartitionedCall�
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0!^convol_1/StatefulPartitionedCall!^convol_2/StatefulPartitionedCall!^convol_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall,^spatial_dropout1d_3/StatefulPartitionedCall,^spatial_dropout1d_4/StatefulPartitionedCall,^spatial_dropout1d_5/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������:���������
: : : : : : : : : : : : : : 2D
 convol_1/StatefulPartitionedCall convol_1/StatefulPartitionedCall2D
 convol_2/StatefulPartitionedCall convol_2/StatefulPartitionedCall2D
 convol_3/StatefulPartitionedCall convol_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2Z
+spatial_dropout1d_3/StatefulPartitionedCall+spatial_dropout1d_3/StatefulPartitionedCall2Z
+spatial_dropout1d_4/StatefulPartitionedCall+spatial_dropout1d_4/StatefulPartitionedCall2Z
+spatial_dropout1d_5/StatefulPartitionedCall+spatial_dropout1d_5/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs:SO
+
_output_shapes
:���������

 
_user_specified_nameinputs
�	
�
B__inference_dense_4_layer_call_and_return_conditional_losses_54886

inputs1
matmul_readvariableop_resource:	� -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	� *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
m
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_55923

inputs
identity�D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:����������2
dropout/Mul�
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :������������������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:����������2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
I
-__inference_leaky_re_lu_8_layer_call_fn_56060

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_548292
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_56166

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:����������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:����������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:����������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:����������2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:����������2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_54858

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_dense_7_layer_call_fn_56297

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_549482
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�f
�
__inference__traced_save_56484
file_prefix.
*savev2_convol_1_kernel_read_readvariableop,
(savev2_convol_1_bias_read_readvariableop.
*savev2_convol_2_kernel_read_readvariableop,
(savev2_convol_2_bias_read_readvariableop.
*savev2_convol_3_kernel_read_readvariableop,
(savev2_convol_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_convol_1_kernel_m_read_readvariableop3
/savev2_adam_convol_1_bias_m_read_readvariableop5
1savev2_adam_convol_2_kernel_m_read_readvariableop3
/savev2_adam_convol_2_bias_m_read_readvariableop5
1savev2_adam_convol_3_kernel_m_read_readvariableop3
/savev2_adam_convol_3_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop5
1savev2_adam_convol_1_kernel_v_read_readvariableop3
/savev2_adam_convol_1_bias_v_read_readvariableop5
1savev2_adam_convol_2_kernel_v_read_readvariableop3
/savev2_adam_convol_2_bias_v_read_readvariableop5
1savev2_adam_convol_3_kernel_v_read_readvariableop3
/savev2_adam_convol_3_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*�
value�B�4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_convol_1_kernel_read_readvariableop(savev2_convol_1_bias_read_readvariableop*savev2_convol_2_kernel_read_readvariableop(savev2_convol_2_bias_read_readvariableop*savev2_convol_3_kernel_read_readvariableop(savev2_convol_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_convol_1_kernel_m_read_readvariableop/savev2_adam_convol_1_bias_m_read_readvariableop1savev2_adam_convol_2_kernel_m_read_readvariableop/savev2_adam_convol_2_bias_m_read_readvariableop1savev2_adam_convol_3_kernel_m_read_readvariableop/savev2_adam_convol_3_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop1savev2_adam_convol_1_kernel_v_read_readvariableop/savev2_adam_convol_1_bias_v_read_readvariableop1savev2_adam_convol_2_kernel_v_read_readvariableop/savev2_adam_convol_2_bias_v_read_readvariableop1savev2_adam_convol_3_kernel_v_read_readvariableop/savev2_adam_convol_3_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :
::
::
::	� : :
::;:::: : : : : : : : : :
::
::
::	� : :
::;::::
::
::
::	� : :
::;:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:
: 

_output_shapes
::($
"
_output_shapes
:
: 

_output_shapes
::($
"
_output_shapes
:
: 

_output_shapes
::%!

_output_shapes
:	� : 

_output_shapes
: :$	 

_output_shapes

:
: 


_output_shapes
::$ 

_output_shapes

:;: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
:
: 

_output_shapes
::($
"
_output_shapes
:
: 

_output_shapes
::($
"
_output_shapes
:
: 

_output_shapes
::%!

_output_shapes
:	� : 

_output_shapes
: :$  

_output_shapes

:
: !

_output_shapes
::$" 

_output_shapes

:;: #

_output_shapes
::$$ 

_output_shapes

:: %

_output_shapes
::(&$
"
_output_shapes
:
: '

_output_shapes
::(($
"
_output_shapes
:
: )

_output_shapes
::(*$
"
_output_shapes
:
: +

_output_shapes
::%,!

_output_shapes
:	� : -

_output_shapes
: :$. 

_output_shapes

:
: /

_output_shapes
::$0 

_output_shapes

:;: 1

_output_shapes
::$2 

_output_shapes

:: 3

_output_shapes
::4

_output_shapes
: 
�
m
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_56112

inputs
identity�D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Const�
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'���������������������������2
dropout/Mul�
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :������������������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'���������������������������2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
O
3__inference_spatial_dropout1d_3_layer_call_fn_55854

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_545072
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
d
H__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_54897

inputs
identityd
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:��������� *
alpha%���>2
	LeakyReluk
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
'__inference_dense_5_layer_call_fn_56216

inputs
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_548702
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
r
H__inference_concatenate_1_layer_call_and_return_conditional_losses_54913

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:���������;2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������;2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:��������� :���������:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
l
3__inference_spatial_dropout1d_3_layer_call_fn_55859

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_545392
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*=
_output_shapes+
):'���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_54936

inputs
identityd
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:���������*
alpha%���>2
	LeakyReluk
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
l
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_55874

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'���������������������������2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'���������������������������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
d
H__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_56236

inputs
identityd
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:��������� *
alpha%���>2
	LeakyReluk
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
m
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_55163

inputs
identity�D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:����������2
dropout/Mul�
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :������������������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:����������2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
m
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_54615

inputs
identity�D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Const�
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'���������������������������2
dropout/Mul�
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :������������������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'���������������������������2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_55533
input_3
input_4
unknown:

	unknown_0:
	unknown_1:

	unknown_2:
	unknown_3:

	unknown_4:
	unknown_5:

	unknown_6:
	unknown_7:	� 
	unknown_8: 
	unknown_9:;

unknown_10:

unknown_11:

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_544982
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������:���������
: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:����������
!
_user_specified_name	input_3:TP
+
_output_shapes
:���������

!
_user_specified_name	input_4
�
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_54850

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����
   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������
2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
O
3__inference_spatial_dropout1d_4_layer_call_fn_55962

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_545832
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
l
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_56009

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:����������2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:����������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_56177

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
m
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_56031

inputs
identity�D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:����������2
dropout/Mul�
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :������������������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:����������2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_model_1_layer_call_fn_54986
input_3
input_4
unknown:

	unknown_0:
	unknown_1:

	unknown_2:
	unknown_3:

	unknown_4:
	unknown_5:

	unknown_6:
	unknown_7:	� 
	unknown_8: 
	unknown_9:;

unknown_10:

unknown_11:

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_549552
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������:���������
: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:����������
!
_user_specified_name	input_3:TP
+
_output_shapes
:���������

!
_user_specified_name	input_4
�	
�
B__inference_dense_7_layer_call_and_return_conditional_losses_54948

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_55083

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:����������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:����������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:����������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:����������2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:����������2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
B__inference_dense_7_layer_call_and_return_conditional_losses_56307

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_54842

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:����������2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:����������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_convol_1_layer_call_fn_55824

inputs
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_convol_1_layer_call_and_return_conditional_losses_547502
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�i
�
B__inference_model_1_layer_call_and_return_conditional_losses_55679
inputs_0
inputs_1J
4convol_1_conv1d_expanddims_1_readvariableop_resource:
6
(convol_1_biasadd_readvariableop_resource:J
4convol_2_conv1d_expanddims_1_readvariableop_resource:
6
(convol_2_biasadd_readvariableop_resource:J
4convol_3_conv1d_expanddims_1_readvariableop_resource:
6
(convol_3_biasadd_readvariableop_resource:8
&dense_5_matmul_readvariableop_resource:
5
'dense_5_biasadd_readvariableop_resource:9
&dense_4_matmul_readvariableop_resource:	� 5
'dense_4_biasadd_readvariableop_resource: 8
&dense_6_matmul_readvariableop_resource:;5
'dense_6_biasadd_readvariableop_resource:8
&dense_7_matmul_readvariableop_resource:5
'dense_7_biasadd_readvariableop_resource:
identity��convol_1/BiasAdd/ReadVariableOp�+convol_1/conv1d/ExpandDims_1/ReadVariableOp�convol_2/BiasAdd/ReadVariableOp�+convol_2/conv1d/ExpandDims_1/ReadVariableOp�convol_3/BiasAdd/ReadVariableOp�+convol_3/conv1d/ExpandDims_1/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�
convol_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
convol_1/conv1d/ExpandDims/dim�
convol_1/conv1d/ExpandDims
ExpandDimsinputs_0'convol_1/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2
convol_1/conv1d/ExpandDims�
+convol_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4convol_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:
*
dtype02-
+convol_1/conv1d/ExpandDims_1/ReadVariableOp�
 convol_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 convol_1/conv1d/ExpandDims_1/dim�
convol_1/conv1d/ExpandDims_1
ExpandDims3convol_1/conv1d/ExpandDims_1/ReadVariableOp:value:0)convol_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
2
convol_1/conv1d/ExpandDims_1�
convol_1/conv1dConv2D#convol_1/conv1d/ExpandDims:output:0%convol_1/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
convol_1/conv1d�
convol_1/conv1d/SqueezeSqueezeconvol_1/conv1d:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������2
convol_1/conv1d/Squeeze�
convol_1/BiasAdd/ReadVariableOpReadVariableOp(convol_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
convol_1/BiasAdd/ReadVariableOp�
convol_1/BiasAddBiasAdd convol_1/conv1d/Squeeze:output:0'convol_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2
convol_1/BiasAdd�
leaky_re_lu_6/LeakyRelu	LeakyReluconvol_1/BiasAdd:output:0*,
_output_shapes
:����������*
alpha%���>2
leaky_re_lu_6/LeakyRelu�
spatial_dropout1d_3/IdentityIdentity%leaky_re_lu_6/LeakyRelu:activations:0*
T0*,
_output_shapes
:����������2
spatial_dropout1d_3/Identity�
convol_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
convol_2/conv1d/ExpandDims/dim�
convol_2/conv1d/ExpandDims
ExpandDims%spatial_dropout1d_3/Identity:output:0'convol_2/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2
convol_2/conv1d/ExpandDims�
+convol_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4convol_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:
*
dtype02-
+convol_2/conv1d/ExpandDims_1/ReadVariableOp�
 convol_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 convol_2/conv1d/ExpandDims_1/dim�
convol_2/conv1d/ExpandDims_1
ExpandDims3convol_2/conv1d/ExpandDims_1/ReadVariableOp:value:0)convol_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
2
convol_2/conv1d/ExpandDims_1�
convol_2/conv1dConv2D#convol_2/conv1d/ExpandDims:output:0%convol_2/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
convol_2/conv1d�
convol_2/conv1d/SqueezeSqueezeconvol_2/conv1d:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������2
convol_2/conv1d/Squeeze�
convol_2/BiasAdd/ReadVariableOpReadVariableOp(convol_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
convol_2/BiasAdd/ReadVariableOp�
convol_2/BiasAddBiasAdd convol_2/conv1d/Squeeze:output:0'convol_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2
convol_2/BiasAdd�
leaky_re_lu_7/LeakyRelu	LeakyReluconvol_2/BiasAdd:output:0*,
_output_shapes
:����������*
alpha%���>2
leaky_re_lu_7/LeakyRelu�
spatial_dropout1d_4/IdentityIdentity%leaky_re_lu_7/LeakyRelu:activations:0*
T0*,
_output_shapes
:����������2
spatial_dropout1d_4/Identity�
convol_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
convol_3/conv1d/ExpandDims/dim�
convol_3/conv1d/ExpandDims
ExpandDims%spatial_dropout1d_4/Identity:output:0'convol_3/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2
convol_3/conv1d/ExpandDims�
+convol_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4convol_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:
*
dtype02-
+convol_3/conv1d/ExpandDims_1/ReadVariableOp�
 convol_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 convol_3/conv1d/ExpandDims_1/dim�
convol_3/conv1d/ExpandDims_1
ExpandDims3convol_3/conv1d/ExpandDims_1/ReadVariableOp:value:0)convol_3/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
2
convol_3/conv1d/ExpandDims_1�
convol_3/conv1dConv2D#convol_3/conv1d/ExpandDims:output:0%convol_3/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
convol_3/conv1d�
convol_3/conv1d/SqueezeSqueezeconvol_3/conv1d:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������2
convol_3/conv1d/Squeeze�
convol_3/BiasAdd/ReadVariableOpReadVariableOp(convol_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
convol_3/BiasAdd/ReadVariableOp�
convol_3/BiasAddBiasAdd convol_3/conv1d/Squeeze:output:0'convol_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2
convol_3/BiasAdd�
leaky_re_lu_8/LeakyRelu	LeakyReluconvol_3/BiasAdd:output:0*,
_output_shapes
:����������*
alpha%���>2
leaky_re_lu_8/LeakyRelu�
spatial_dropout1d_5/IdentityIdentity%leaky_re_lu_8/LeakyRelu:activations:0*
T0*,
_output_shapes
:����������2
spatial_dropout1d_5/Identity�
dropout_1/IdentityIdentity%spatial_dropout1d_5/Identity:output:0*
T0*,
_output_shapes
:����������2
dropout_1/Identitys
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"����
   2
flatten_3/Const�
flatten_3/ReshapeReshapeinputs_1flatten_3/Const:output:0*
T0*'
_output_shapes
:���������
2
flatten_3/Reshapes
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
flatten_2/Const�
flatten_2/ReshapeReshapedropout_1/Identity:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:����������2
flatten_2/Reshape�
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
dense_5/MatMul/ReadVariableOp�
dense_5/MatMulMatMulflatten_3/Reshape:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_5/MatMul�
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_5/BiasAdd/ReadVariableOp�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_5/BiasAdd�
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	� *
dtype02
dense_4/MatMul/ReadVariableOp�
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_4/MatMul�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_4/BiasAdd/ReadVariableOp�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_4/BiasAdd�
leaky_re_lu_9/LeakyRelu	LeakyReludense_4/BiasAdd:output:0*'
_output_shapes
:��������� *
alpha%���>2
leaky_re_lu_9/LeakyRelu�
leaky_re_lu_10/LeakyRelu	LeakyReludense_5/BiasAdd:output:0*'
_output_shapes
:���������*
alpha%���>2
leaky_re_lu_10/LeakyRelux
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis�
concatenate_1/concatConcatV2%leaky_re_lu_9/LeakyRelu:activations:0&leaky_re_lu_10/LeakyRelu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������;2
concatenate_1/concat�
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:;*
dtype02
dense_6/MatMul/ReadVariableOp�
dense_6/MatMulMatMulconcatenate_1/concat:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_6/MatMul�
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_6/BiasAdd/ReadVariableOp�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_6/BiasAdd�
leaky_re_lu_11/LeakyRelu	LeakyReludense_6/BiasAdd:output:0*'
_output_shapes
:���������*
alpha%���>2
leaky_re_lu_11/LeakyRelu�
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_7/MatMul/ReadVariableOp�
dense_7/MatMulMatMul&leaky_re_lu_11/LeakyRelu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_7/MatMul�
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_7/BiasAdd�
IdentityIdentitydense_7/BiasAdd:output:0 ^convol_1/BiasAdd/ReadVariableOp,^convol_1/conv1d/ExpandDims_1/ReadVariableOp ^convol_2/BiasAdd/ReadVariableOp,^convol_2/conv1d/ExpandDims_1/ReadVariableOp ^convol_3/BiasAdd/ReadVariableOp,^convol_3/conv1d/ExpandDims_1/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������:���������
: : : : : : : : : : : : : : 2B
convol_1/BiasAdd/ReadVariableOpconvol_1/BiasAdd/ReadVariableOp2Z
+convol_1/conv1d/ExpandDims_1/ReadVariableOp+convol_1/conv1d/ExpandDims_1/ReadVariableOp2B
convol_2/BiasAdd/ReadVariableOpconvol_2/BiasAdd/ReadVariableOp2Z
+convol_2/conv1d/ExpandDims_1/ReadVariableOp+convol_2/conv1d/ExpandDims_1/ReadVariableOp2B
convol_3/BiasAdd/ReadVariableOpconvol_3/BiasAdd/ReadVariableOp2Z
+convol_3/conv1d/ExpandDims_1/ReadVariableOp+convol_3/conv1d/ExpandDims_1/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:V R
,
_output_shapes
:����������
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:���������

"
_user_specified_name
inputs/1
�
�
'__inference_dense_4_layer_call_fn_56197

inputs
unknown:	� 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_548862
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_convol_2_layer_call_and_return_conditional_losses_54784

inputsA
+conv1d_expanddims_1_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:
*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_convol_3_layer_call_and_return_conditional_losses_54818

inputsA
+conv1d_expanddims_1_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:
*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
E
)__inference_flatten_2_layer_call_fn_56171

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_548582
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
B__inference_dense_6_layer_call_and_return_conditional_losses_54925

inputs0
matmul_readvariableop_resource:;-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:;*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������;: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������;
 
_user_specified_nameinputs
�
�
C__inference_convol_1_layer_call_and_return_conditional_losses_54750

inputsA
+conv1d_expanddims_1_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:
*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
B__inference_model_1_layer_call_and_return_conditional_losses_55815
inputs_0
inputs_1J
4convol_1_conv1d_expanddims_1_readvariableop_resource:
6
(convol_1_biasadd_readvariableop_resource:J
4convol_2_conv1d_expanddims_1_readvariableop_resource:
6
(convol_2_biasadd_readvariableop_resource:J
4convol_3_conv1d_expanddims_1_readvariableop_resource:
6
(convol_3_biasadd_readvariableop_resource:8
&dense_5_matmul_readvariableop_resource:
5
'dense_5_biasadd_readvariableop_resource:9
&dense_4_matmul_readvariableop_resource:	� 5
'dense_4_biasadd_readvariableop_resource: 8
&dense_6_matmul_readvariableop_resource:;5
'dense_6_biasadd_readvariableop_resource:8
&dense_7_matmul_readvariableop_resource:5
'dense_7_biasadd_readvariableop_resource:
identity��convol_1/BiasAdd/ReadVariableOp�+convol_1/conv1d/ExpandDims_1/ReadVariableOp�convol_2/BiasAdd/ReadVariableOp�+convol_2/conv1d/ExpandDims_1/ReadVariableOp�convol_3/BiasAdd/ReadVariableOp�+convol_3/conv1d/ExpandDims_1/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�
convol_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
convol_1/conv1d/ExpandDims/dim�
convol_1/conv1d/ExpandDims
ExpandDimsinputs_0'convol_1/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2
convol_1/conv1d/ExpandDims�
+convol_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4convol_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:
*
dtype02-
+convol_1/conv1d/ExpandDims_1/ReadVariableOp�
 convol_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 convol_1/conv1d/ExpandDims_1/dim�
convol_1/conv1d/ExpandDims_1
ExpandDims3convol_1/conv1d/ExpandDims_1/ReadVariableOp:value:0)convol_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
2
convol_1/conv1d/ExpandDims_1�
convol_1/conv1dConv2D#convol_1/conv1d/ExpandDims:output:0%convol_1/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
convol_1/conv1d�
convol_1/conv1d/SqueezeSqueezeconvol_1/conv1d:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������2
convol_1/conv1d/Squeeze�
convol_1/BiasAdd/ReadVariableOpReadVariableOp(convol_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
convol_1/BiasAdd/ReadVariableOp�
convol_1/BiasAddBiasAdd convol_1/conv1d/Squeeze:output:0'convol_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2
convol_1/BiasAdd�
leaky_re_lu_6/LeakyRelu	LeakyReluconvol_1/BiasAdd:output:0*,
_output_shapes
:����������*
alpha%���>2
leaky_re_lu_6/LeakyRelu�
spatial_dropout1d_3/ShapeShape%leaky_re_lu_6/LeakyRelu:activations:0*
T0*
_output_shapes
:2
spatial_dropout1d_3/Shape�
'spatial_dropout1d_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'spatial_dropout1d_3/strided_slice/stack�
)spatial_dropout1d_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_3/strided_slice/stack_1�
)spatial_dropout1d_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_3/strided_slice/stack_2�
!spatial_dropout1d_3/strided_sliceStridedSlice"spatial_dropout1d_3/Shape:output:00spatial_dropout1d_3/strided_slice/stack:output:02spatial_dropout1d_3/strided_slice/stack_1:output:02spatial_dropout1d_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!spatial_dropout1d_3/strided_slice�
)spatial_dropout1d_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_3/strided_slice_1/stack�
+spatial_dropout1d_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_3/strided_slice_1/stack_1�
+spatial_dropout1d_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_3/strided_slice_1/stack_2�
#spatial_dropout1d_3/strided_slice_1StridedSlice"spatial_dropout1d_3/Shape:output:02spatial_dropout1d_3/strided_slice_1/stack:output:04spatial_dropout1d_3/strided_slice_1/stack_1:output:04spatial_dropout1d_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#spatial_dropout1d_3/strided_slice_1�
!spatial_dropout1d_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2#
!spatial_dropout1d_3/dropout/Const�
spatial_dropout1d_3/dropout/MulMul%leaky_re_lu_6/LeakyRelu:activations:0*spatial_dropout1d_3/dropout/Const:output:0*
T0*,
_output_shapes
:����������2!
spatial_dropout1d_3/dropout/Mul�
2spatial_dropout1d_3/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2spatial_dropout1d_3/dropout/random_uniform/shape/1�
0spatial_dropout1d_3/dropout/random_uniform/shapePack*spatial_dropout1d_3/strided_slice:output:0;spatial_dropout1d_3/dropout/random_uniform/shape/1:output:0,spatial_dropout1d_3/strided_slice_1:output:0*
N*
T0*
_output_shapes
:22
0spatial_dropout1d_3/dropout/random_uniform/shape�
8spatial_dropout1d_3/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout1d_3/dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :������������������*
dtype02:
8spatial_dropout1d_3/dropout/random_uniform/RandomUniform�
*spatial_dropout1d_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2,
*spatial_dropout1d_3/dropout/GreaterEqual/y�
(spatial_dropout1d_3/dropout/GreaterEqualGreaterEqualAspatial_dropout1d_3/dropout/random_uniform/RandomUniform:output:03spatial_dropout1d_3/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������2*
(spatial_dropout1d_3/dropout/GreaterEqual�
 spatial_dropout1d_3/dropout/CastCast,spatial_dropout1d_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������2"
 spatial_dropout1d_3/dropout/Cast�
!spatial_dropout1d_3/dropout/Mul_1Mul#spatial_dropout1d_3/dropout/Mul:z:0$spatial_dropout1d_3/dropout/Cast:y:0*
T0*,
_output_shapes
:����������2#
!spatial_dropout1d_3/dropout/Mul_1�
convol_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
convol_2/conv1d/ExpandDims/dim�
convol_2/conv1d/ExpandDims
ExpandDims%spatial_dropout1d_3/dropout/Mul_1:z:0'convol_2/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2
convol_2/conv1d/ExpandDims�
+convol_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4convol_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:
*
dtype02-
+convol_2/conv1d/ExpandDims_1/ReadVariableOp�
 convol_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 convol_2/conv1d/ExpandDims_1/dim�
convol_2/conv1d/ExpandDims_1
ExpandDims3convol_2/conv1d/ExpandDims_1/ReadVariableOp:value:0)convol_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
2
convol_2/conv1d/ExpandDims_1�
convol_2/conv1dConv2D#convol_2/conv1d/ExpandDims:output:0%convol_2/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
convol_2/conv1d�
convol_2/conv1d/SqueezeSqueezeconvol_2/conv1d:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������2
convol_2/conv1d/Squeeze�
convol_2/BiasAdd/ReadVariableOpReadVariableOp(convol_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
convol_2/BiasAdd/ReadVariableOp�
convol_2/BiasAddBiasAdd convol_2/conv1d/Squeeze:output:0'convol_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2
convol_2/BiasAdd�
leaky_re_lu_7/LeakyRelu	LeakyReluconvol_2/BiasAdd:output:0*,
_output_shapes
:����������*
alpha%���>2
leaky_re_lu_7/LeakyRelu�
spatial_dropout1d_4/ShapeShape%leaky_re_lu_7/LeakyRelu:activations:0*
T0*
_output_shapes
:2
spatial_dropout1d_4/Shape�
'spatial_dropout1d_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'spatial_dropout1d_4/strided_slice/stack�
)spatial_dropout1d_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_4/strided_slice/stack_1�
)spatial_dropout1d_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_4/strided_slice/stack_2�
!spatial_dropout1d_4/strided_sliceStridedSlice"spatial_dropout1d_4/Shape:output:00spatial_dropout1d_4/strided_slice/stack:output:02spatial_dropout1d_4/strided_slice/stack_1:output:02spatial_dropout1d_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!spatial_dropout1d_4/strided_slice�
)spatial_dropout1d_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_4/strided_slice_1/stack�
+spatial_dropout1d_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_4/strided_slice_1/stack_1�
+spatial_dropout1d_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_4/strided_slice_1/stack_2�
#spatial_dropout1d_4/strided_slice_1StridedSlice"spatial_dropout1d_4/Shape:output:02spatial_dropout1d_4/strided_slice_1/stack:output:04spatial_dropout1d_4/strided_slice_1/stack_1:output:04spatial_dropout1d_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#spatial_dropout1d_4/strided_slice_1�
!spatial_dropout1d_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2#
!spatial_dropout1d_4/dropout/Const�
spatial_dropout1d_4/dropout/MulMul%leaky_re_lu_7/LeakyRelu:activations:0*spatial_dropout1d_4/dropout/Const:output:0*
T0*,
_output_shapes
:����������2!
spatial_dropout1d_4/dropout/Mul�
2spatial_dropout1d_4/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2spatial_dropout1d_4/dropout/random_uniform/shape/1�
0spatial_dropout1d_4/dropout/random_uniform/shapePack*spatial_dropout1d_4/strided_slice:output:0;spatial_dropout1d_4/dropout/random_uniform/shape/1:output:0,spatial_dropout1d_4/strided_slice_1:output:0*
N*
T0*
_output_shapes
:22
0spatial_dropout1d_4/dropout/random_uniform/shape�
8spatial_dropout1d_4/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout1d_4/dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :������������������*
dtype02:
8spatial_dropout1d_4/dropout/random_uniform/RandomUniform�
*spatial_dropout1d_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2,
*spatial_dropout1d_4/dropout/GreaterEqual/y�
(spatial_dropout1d_4/dropout/GreaterEqualGreaterEqualAspatial_dropout1d_4/dropout/random_uniform/RandomUniform:output:03spatial_dropout1d_4/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������2*
(spatial_dropout1d_4/dropout/GreaterEqual�
 spatial_dropout1d_4/dropout/CastCast,spatial_dropout1d_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������2"
 spatial_dropout1d_4/dropout/Cast�
!spatial_dropout1d_4/dropout/Mul_1Mul#spatial_dropout1d_4/dropout/Mul:z:0$spatial_dropout1d_4/dropout/Cast:y:0*
T0*,
_output_shapes
:����������2#
!spatial_dropout1d_4/dropout/Mul_1�
convol_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
convol_3/conv1d/ExpandDims/dim�
convol_3/conv1d/ExpandDims
ExpandDims%spatial_dropout1d_4/dropout/Mul_1:z:0'convol_3/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2
convol_3/conv1d/ExpandDims�
+convol_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4convol_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:
*
dtype02-
+convol_3/conv1d/ExpandDims_1/ReadVariableOp�
 convol_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 convol_3/conv1d/ExpandDims_1/dim�
convol_3/conv1d/ExpandDims_1
ExpandDims3convol_3/conv1d/ExpandDims_1/ReadVariableOp:value:0)convol_3/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
2
convol_3/conv1d/ExpandDims_1�
convol_3/conv1dConv2D#convol_3/conv1d/ExpandDims:output:0%convol_3/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
convol_3/conv1d�
convol_3/conv1d/SqueezeSqueezeconvol_3/conv1d:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������2
convol_3/conv1d/Squeeze�
convol_3/BiasAdd/ReadVariableOpReadVariableOp(convol_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
convol_3/BiasAdd/ReadVariableOp�
convol_3/BiasAddBiasAdd convol_3/conv1d/Squeeze:output:0'convol_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2
convol_3/BiasAdd�
leaky_re_lu_8/LeakyRelu	LeakyReluconvol_3/BiasAdd:output:0*,
_output_shapes
:����������*
alpha%���>2
leaky_re_lu_8/LeakyRelu�
spatial_dropout1d_5/ShapeShape%leaky_re_lu_8/LeakyRelu:activations:0*
T0*
_output_shapes
:2
spatial_dropout1d_5/Shape�
'spatial_dropout1d_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'spatial_dropout1d_5/strided_slice/stack�
)spatial_dropout1d_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_5/strided_slice/stack_1�
)spatial_dropout1d_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_5/strided_slice/stack_2�
!spatial_dropout1d_5/strided_sliceStridedSlice"spatial_dropout1d_5/Shape:output:00spatial_dropout1d_5/strided_slice/stack:output:02spatial_dropout1d_5/strided_slice/stack_1:output:02spatial_dropout1d_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!spatial_dropout1d_5/strided_slice�
)spatial_dropout1d_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_5/strided_slice_1/stack�
+spatial_dropout1d_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_5/strided_slice_1/stack_1�
+spatial_dropout1d_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_5/strided_slice_1/stack_2�
#spatial_dropout1d_5/strided_slice_1StridedSlice"spatial_dropout1d_5/Shape:output:02spatial_dropout1d_5/strided_slice_1/stack:output:04spatial_dropout1d_5/strided_slice_1/stack_1:output:04spatial_dropout1d_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#spatial_dropout1d_5/strided_slice_1�
!spatial_dropout1d_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2#
!spatial_dropout1d_5/dropout/Const�
spatial_dropout1d_5/dropout/MulMul%leaky_re_lu_8/LeakyRelu:activations:0*spatial_dropout1d_5/dropout/Const:output:0*
T0*,
_output_shapes
:����������2!
spatial_dropout1d_5/dropout/Mul�
2spatial_dropout1d_5/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2spatial_dropout1d_5/dropout/random_uniform/shape/1�
0spatial_dropout1d_5/dropout/random_uniform/shapePack*spatial_dropout1d_5/strided_slice:output:0;spatial_dropout1d_5/dropout/random_uniform/shape/1:output:0,spatial_dropout1d_5/strided_slice_1:output:0*
N*
T0*
_output_shapes
:22
0spatial_dropout1d_5/dropout/random_uniform/shape�
8spatial_dropout1d_5/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout1d_5/dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :������������������*
dtype02:
8spatial_dropout1d_5/dropout/random_uniform/RandomUniform�
*spatial_dropout1d_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2,
*spatial_dropout1d_5/dropout/GreaterEqual/y�
(spatial_dropout1d_5/dropout/GreaterEqualGreaterEqualAspatial_dropout1d_5/dropout/random_uniform/RandomUniform:output:03spatial_dropout1d_5/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������2*
(spatial_dropout1d_5/dropout/GreaterEqual�
 spatial_dropout1d_5/dropout/CastCast,spatial_dropout1d_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������2"
 spatial_dropout1d_5/dropout/Cast�
!spatial_dropout1d_5/dropout/Mul_1Mul#spatial_dropout1d_5/dropout/Mul:z:0$spatial_dropout1d_5/dropout/Cast:y:0*
T0*,
_output_shapes
:����������2#
!spatial_dropout1d_5/dropout/Mul_1w
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout_1/dropout/Const�
dropout_1/dropout/MulMul%spatial_dropout1d_5/dropout/Mul_1:z:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:����������2
dropout_1/dropout/Mul�
dropout_1/dropout/ShapeShape%spatial_dropout1d_5/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:����������*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform�
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2"
 dropout_1/dropout/GreaterEqual/y�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:����������2 
dropout_1/dropout/GreaterEqual�
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:����������2
dropout_1/dropout/Cast�
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:����������2
dropout_1/dropout/Mul_1s
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"����
   2
flatten_3/Const�
flatten_3/ReshapeReshapeinputs_1flatten_3/Const:output:0*
T0*'
_output_shapes
:���������
2
flatten_3/Reshapes
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
flatten_2/Const�
flatten_2/ReshapeReshapedropout_1/dropout/Mul_1:z:0flatten_2/Const:output:0*
T0*(
_output_shapes
:����������2
flatten_2/Reshape�
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
dense_5/MatMul/ReadVariableOp�
dense_5/MatMulMatMulflatten_3/Reshape:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_5/MatMul�
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_5/BiasAdd/ReadVariableOp�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_5/BiasAdd�
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	� *
dtype02
dense_4/MatMul/ReadVariableOp�
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_4/MatMul�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_4/BiasAdd/ReadVariableOp�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_4/BiasAdd�
leaky_re_lu_9/LeakyRelu	LeakyReludense_4/BiasAdd:output:0*'
_output_shapes
:��������� *
alpha%���>2
leaky_re_lu_9/LeakyRelu�
leaky_re_lu_10/LeakyRelu	LeakyReludense_5/BiasAdd:output:0*'
_output_shapes
:���������*
alpha%���>2
leaky_re_lu_10/LeakyRelux
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis�
concatenate_1/concatConcatV2%leaky_re_lu_9/LeakyRelu:activations:0&leaky_re_lu_10/LeakyRelu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������;2
concatenate_1/concat�
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:;*
dtype02
dense_6/MatMul/ReadVariableOp�
dense_6/MatMulMatMulconcatenate_1/concat:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_6/MatMul�
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_6/BiasAdd/ReadVariableOp�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_6/BiasAdd�
leaky_re_lu_11/LeakyRelu	LeakyReludense_6/BiasAdd:output:0*'
_output_shapes
:���������*
alpha%���>2
leaky_re_lu_11/LeakyRelu�
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_7/MatMul/ReadVariableOp�
dense_7/MatMulMatMul&leaky_re_lu_11/LeakyRelu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_7/MatMul�
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_7/BiasAdd�
IdentityIdentitydense_7/BiasAdd:output:0 ^convol_1/BiasAdd/ReadVariableOp,^convol_1/conv1d/ExpandDims_1/ReadVariableOp ^convol_2/BiasAdd/ReadVariableOp,^convol_2/conv1d/ExpandDims_1/ReadVariableOp ^convol_3/BiasAdd/ReadVariableOp,^convol_3/conv1d/ExpandDims_1/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������:���������
: : : : : : : : : : : : : : 2B
convol_1/BiasAdd/ReadVariableOpconvol_1/BiasAdd/ReadVariableOp2Z
+convol_1/conv1d/ExpandDims_1/ReadVariableOp+convol_1/conv1d/ExpandDims_1/ReadVariableOp2B
convol_2/BiasAdd/ReadVariableOpconvol_2/BiasAdd/ReadVariableOp2Z
+convol_2/conv1d/ExpandDims_1/ReadVariableOp+convol_2/conv1d/ExpandDims_1/ReadVariableOp2B
convol_3/BiasAdd/ReadVariableOpconvol_3/BiasAdd/ReadVariableOp2Z
+convol_3/conv1d/ExpandDims_1/ReadVariableOp+convol_3/conv1d/ExpandDims_1/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:V R
,
_output_shapes
:����������
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:���������

"
_user_specified_name
inputs/1
�
l
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_54583

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'���������������������������2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'���������������������������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
l
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_54835

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:����������2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:����������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_54904

inputs
identityd
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:���������*
alpha%���>2
	LeakyReluk
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
l
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_54767

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:����������2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:����������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
I
-__inference_leaky_re_lu_7_layer_call_fn_55952

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_547952
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
l
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_55982

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'���������������������������2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'���������������������������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
C__inference_convol_1_layer_call_and_return_conditional_losses_55839

inputsA
+conv1d_expanddims_1_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:
*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
E
)__inference_dropout_1_layer_call_fn_56144

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_548422
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_convol_3_layer_call_and_return_conditional_losses_56055

inputsA
+conv1d_expanddims_1_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:
*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
l
3__inference_spatial_dropout1d_5_layer_call_fn_56085

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_551152
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
B__inference_dense_5_layer_call_and_return_conditional_losses_54870

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
l
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_55901

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:����������2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:����������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
l
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_56090

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'���������������������������2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'���������������������������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
m
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_54691

inputs
identity�D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Const�
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'���������������������������2
dropout/Mul�
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :������������������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'���������������������������2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
l
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_54659

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'���������������������������2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'���������������������������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�V
�
B__inference_model_1_layer_call_and_return_conditional_losses_55491
input_3
input_4$
convol_1_55442:

convol_1_55444:$
convol_2_55449:

convol_2_55451:$
convol_3_55456:

convol_3_55458:
dense_5_55466:

dense_5_55468: 
dense_4_55471:	� 
dense_4_55473: 
dense_6_55479:;
dense_6_55481:
dense_7_55485:
dense_7_55487:
identity�� convol_1/StatefulPartitionedCall� convol_2/StatefulPartitionedCall� convol_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�+spatial_dropout1d_3/StatefulPartitionedCall�+spatial_dropout1d_4/StatefulPartitionedCall�+spatial_dropout1d_5/StatefulPartitionedCall�
 convol_1/StatefulPartitionedCallStatefulPartitionedCallinput_3convol_1_55442convol_1_55444*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_convol_1_layer_call_and_return_conditional_losses_547502"
 convol_1/StatefulPartitionedCall�
leaky_re_lu_6/PartitionedCallPartitionedCall)convol_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_547612
leaky_re_lu_6/PartitionedCall�
+spatial_dropout1d_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_552112-
+spatial_dropout1d_3/StatefulPartitionedCall�
 convol_2/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_3/StatefulPartitionedCall:output:0convol_2_55449convol_2_55451*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_convol_2_layer_call_and_return_conditional_losses_547842"
 convol_2/StatefulPartitionedCall�
leaky_re_lu_7/PartitionedCallPartitionedCall)convol_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_547952
leaky_re_lu_7/PartitionedCall�
+spatial_dropout1d_4/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_7/PartitionedCall:output:0,^spatial_dropout1d_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_551632-
+spatial_dropout1d_4/StatefulPartitionedCall�
 convol_3/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_4/StatefulPartitionedCall:output:0convol_3_55456convol_3_55458*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_convol_3_layer_call_and_return_conditional_losses_548182"
 convol_3/StatefulPartitionedCall�
leaky_re_lu_8/PartitionedCallPartitionedCall)convol_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_548292
leaky_re_lu_8/PartitionedCall�
+spatial_dropout1d_5/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_8/PartitionedCall:output:0,^spatial_dropout1d_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_551152-
+spatial_dropout1d_5/StatefulPartitionedCall�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_5/StatefulPartitionedCall:output:0,^spatial_dropout1d_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_550832#
!dropout_1/StatefulPartitionedCall�
flatten_3/PartitionedCallPartitionedCallinput_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_548502
flatten_3/PartitionedCall�
flatten_2/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_548582
flatten_2/PartitionedCall�
dense_5/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_5_55466dense_5_55468*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_548702!
dense_5/StatefulPartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_55471dense_4_55473*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_548862!
dense_4/StatefulPartitionedCall�
leaky_re_lu_9/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_548972
leaky_re_lu_9/PartitionedCall�
leaky_re_lu_10/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_549042 
leaky_re_lu_10/PartitionedCall�
concatenate_1/PartitionedCallPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0'leaky_re_lu_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������;* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_549132
concatenate_1/PartitionedCall�
dense_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_6_55479dense_6_55481*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_549252!
dense_6/StatefulPartitionedCall�
leaky_re_lu_11/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_549362 
leaky_re_lu_11/PartitionedCall�
dense_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0dense_7_55485dense_7_55487*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_549482!
dense_7/StatefulPartitionedCall�
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0!^convol_1/StatefulPartitionedCall!^convol_2/StatefulPartitionedCall!^convol_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall,^spatial_dropout1d_3/StatefulPartitionedCall,^spatial_dropout1d_4/StatefulPartitionedCall,^spatial_dropout1d_5/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������:���������
: : : : : : : : : : : : : : 2D
 convol_1/StatefulPartitionedCall convol_1/StatefulPartitionedCall2D
 convol_2/StatefulPartitionedCall convol_2/StatefulPartitionedCall2D
 convol_3/StatefulPartitionedCall convol_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2Z
+spatial_dropout1d_3/StatefulPartitionedCall+spatial_dropout1d_3/StatefulPartitionedCall2Z
+spatial_dropout1d_4/StatefulPartitionedCall+spatial_dropout1d_4/StatefulPartitionedCall2Z
+spatial_dropout1d_5/StatefulPartitionedCall+spatial_dropout1d_5/StatefulPartitionedCall:U Q
,
_output_shapes
:����������
!
_user_specified_name	input_3:TP
+
_output_shapes
:���������

!
_user_specified_name	input_4
�
O
3__inference_spatial_dropout1d_5_layer_call_fn_56070

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_546592
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
l
3__inference_spatial_dropout1d_3_layer_call_fn_55869

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_552112
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
l
3__inference_spatial_dropout1d_4_layer_call_fn_55977

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_551632
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
H__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_56065

inputs
identityi
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:����������*
alpha%���>2
	LeakyRelup
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
H__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_54829

inputs
identityi
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:����������*
alpha%���>2
	LeakyRelup
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_56288

inputs
identityd
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:���������*
alpha%���>2
	LeakyReluk
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
O
3__inference_spatial_dropout1d_4_layer_call_fn_55972

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_548012
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
B__inference_dense_4_layer_call_and_return_conditional_losses_56207

inputs1
matmul_readvariableop_resource:	� -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	� *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_convol_2_layer_call_fn_55932

inputs
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_convol_2_layer_call_and_return_conditional_losses_547842
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_convol_2_layer_call_and_return_conditional_losses_55947

inputsA
+conv1d_expanddims_1_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:
*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
t
H__inference_concatenate_1_layer_call_and_return_conditional_losses_56259
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis�
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:���������;2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������;2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:��������� :���������:Q M
'
_output_shapes
:��������� 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
m
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_54539

inputs
identity�D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Const�
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'���������������������������2
dropout/Mul�
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :������������������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'���������������������������2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
��
�
!__inference__traced_restore_56647
file_prefix6
 assignvariableop_convol_1_kernel:
.
 assignvariableop_1_convol_1_bias:8
"assignvariableop_2_convol_2_kernel:
.
 assignvariableop_3_convol_2_bias:8
"assignvariableop_4_convol_3_kernel:
.
 assignvariableop_5_convol_3_bias:4
!assignvariableop_6_dense_4_kernel:	� -
assignvariableop_7_dense_4_bias: 3
!assignvariableop_8_dense_5_kernel:
-
assignvariableop_9_dense_5_bias:4
"assignvariableop_10_dense_6_kernel:;.
 assignvariableop_11_dense_6_bias:4
"assignvariableop_12_dense_7_kernel:.
 assignvariableop_13_dense_7_bias:'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: #
assignvariableop_19_total: #
assignvariableop_20_count: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: @
*assignvariableop_23_adam_convol_1_kernel_m:
6
(assignvariableop_24_adam_convol_1_bias_m:@
*assignvariableop_25_adam_convol_2_kernel_m:
6
(assignvariableop_26_adam_convol_2_bias_m:@
*assignvariableop_27_adam_convol_3_kernel_m:
6
(assignvariableop_28_adam_convol_3_bias_m:<
)assignvariableop_29_adam_dense_4_kernel_m:	� 5
'assignvariableop_30_adam_dense_4_bias_m: ;
)assignvariableop_31_adam_dense_5_kernel_m:
5
'assignvariableop_32_adam_dense_5_bias_m:;
)assignvariableop_33_adam_dense_6_kernel_m:;5
'assignvariableop_34_adam_dense_6_bias_m:;
)assignvariableop_35_adam_dense_7_kernel_m:5
'assignvariableop_36_adam_dense_7_bias_m:@
*assignvariableop_37_adam_convol_1_kernel_v:
6
(assignvariableop_38_adam_convol_1_bias_v:@
*assignvariableop_39_adam_convol_2_kernel_v:
6
(assignvariableop_40_adam_convol_2_bias_v:@
*assignvariableop_41_adam_convol_3_kernel_v:
6
(assignvariableop_42_adam_convol_3_bias_v:<
)assignvariableop_43_adam_dense_4_kernel_v:	� 5
'assignvariableop_44_adam_dense_4_bias_v: ;
)assignvariableop_45_adam_dense_5_kernel_v:
5
'assignvariableop_46_adam_dense_5_bias_v:;
)assignvariableop_47_adam_dense_6_kernel_v:;5
'assignvariableop_48_adam_dense_6_bias_v:;
)assignvariableop_49_adam_dense_7_kernel_v:5
'assignvariableop_50_adam_dense_7_bias_v:
identity_52��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*�
value�B�4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp assignvariableop_convol_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp assignvariableop_1_convol_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_convol_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_convol_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_convol_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_convol_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_5_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_5_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_6_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_6_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_7_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_7_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_convol_1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_convol_1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_convol_2_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_convol_2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_convol_3_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_convol_3_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_4_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_4_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_5_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_5_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_6_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_6_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_7_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_7_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_convol_1_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_convol_1_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_convol_2_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_convol_2_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_convol_3_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_convol_3_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_dense_4_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_dense_4_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45�
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_dense_5_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46�
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_dense_5_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47�
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_6_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48�
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_6_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49�
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_dense_7_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50�
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_7_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_509
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_51�	
Identity_52IdentityIdentity_51:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_52"#
identity_52Identity_52:output:0*{
_input_shapesj
h: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
(__inference_convol_3_layer_call_fn_56040

inputs
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_convol_3_layer_call_and_return_conditional_losses_548182
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_model_1_layer_call_fn_55385
input_3
input_4
unknown:

	unknown_0:
	unknown_1:

	unknown_2:
	unknown_3:

	unknown_4:
	unknown_5:

	unknown_6:
	unknown_7:	� 
	unknown_8: 
	unknown_9:;

unknown_10:

unknown_11:

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_553202
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������:���������
: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:����������
!
_user_specified_name	input_3:TP
+
_output_shapes
:���������

!
_user_specified_name	input_4
�
�
'__inference_model_1_layer_call_fn_55601
inputs_0
inputs_1
unknown:

	unknown_0:
	unknown_1:

	unknown_2:
	unknown_3:

	unknown_4:
	unknown_5:

	unknown_6:
	unknown_7:	� 
	unknown_8: 
	unknown_9:;

unknown_10:

unknown_11:

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_553202
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������:���������
: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:����������
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:���������

"
_user_specified_name
inputs/1
�
J
.__inference_leaky_re_lu_10_layer_call_fn_56241

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_549042
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
H__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_54795

inputs
identityi
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:����������*
alpha%���>2
	LeakyRelup
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
O
3__inference_spatial_dropout1d_3_layer_call_fn_55864

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_547672
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_56154

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:����������2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:����������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�y
�
 __inference__wrapped_model_54498
input_3
input_4R
<model_1_convol_1_conv1d_expanddims_1_readvariableop_resource:
>
0model_1_convol_1_biasadd_readvariableop_resource:R
<model_1_convol_2_conv1d_expanddims_1_readvariableop_resource:
>
0model_1_convol_2_biasadd_readvariableop_resource:R
<model_1_convol_3_conv1d_expanddims_1_readvariableop_resource:
>
0model_1_convol_3_biasadd_readvariableop_resource:@
.model_1_dense_5_matmul_readvariableop_resource:
=
/model_1_dense_5_biasadd_readvariableop_resource:A
.model_1_dense_4_matmul_readvariableop_resource:	� =
/model_1_dense_4_biasadd_readvariableop_resource: @
.model_1_dense_6_matmul_readvariableop_resource:;=
/model_1_dense_6_biasadd_readvariableop_resource:@
.model_1_dense_7_matmul_readvariableop_resource:=
/model_1_dense_7_biasadd_readvariableop_resource:
identity��'model_1/convol_1/BiasAdd/ReadVariableOp�3model_1/convol_1/conv1d/ExpandDims_1/ReadVariableOp�'model_1/convol_2/BiasAdd/ReadVariableOp�3model_1/convol_2/conv1d/ExpandDims_1/ReadVariableOp�'model_1/convol_3/BiasAdd/ReadVariableOp�3model_1/convol_3/conv1d/ExpandDims_1/ReadVariableOp�&model_1/dense_4/BiasAdd/ReadVariableOp�%model_1/dense_4/MatMul/ReadVariableOp�&model_1/dense_5/BiasAdd/ReadVariableOp�%model_1/dense_5/MatMul/ReadVariableOp�&model_1/dense_6/BiasAdd/ReadVariableOp�%model_1/dense_6/MatMul/ReadVariableOp�&model_1/dense_7/BiasAdd/ReadVariableOp�%model_1/dense_7/MatMul/ReadVariableOp�
&model_1/convol_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&model_1/convol_1/conv1d/ExpandDims/dim�
"model_1/convol_1/conv1d/ExpandDims
ExpandDimsinput_3/model_1/convol_1/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2$
"model_1/convol_1/conv1d/ExpandDims�
3model_1/convol_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp<model_1_convol_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:
*
dtype025
3model_1/convol_1/conv1d/ExpandDims_1/ReadVariableOp�
(model_1/convol_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(model_1/convol_1/conv1d/ExpandDims_1/dim�
$model_1/convol_1/conv1d/ExpandDims_1
ExpandDims;model_1/convol_1/conv1d/ExpandDims_1/ReadVariableOp:value:01model_1/convol_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
2&
$model_1/convol_1/conv1d/ExpandDims_1�
model_1/convol_1/conv1dConv2D+model_1/convol_1/conv1d/ExpandDims:output:0-model_1/convol_1/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
model_1/convol_1/conv1d�
model_1/convol_1/conv1d/SqueezeSqueeze model_1/convol_1/conv1d:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������2!
model_1/convol_1/conv1d/Squeeze�
'model_1/convol_1/BiasAdd/ReadVariableOpReadVariableOp0model_1_convol_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_1/convol_1/BiasAdd/ReadVariableOp�
model_1/convol_1/BiasAddBiasAdd(model_1/convol_1/conv1d/Squeeze:output:0/model_1/convol_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2
model_1/convol_1/BiasAdd�
model_1/leaky_re_lu_6/LeakyRelu	LeakyRelu!model_1/convol_1/BiasAdd:output:0*,
_output_shapes
:����������*
alpha%���>2!
model_1/leaky_re_lu_6/LeakyRelu�
$model_1/spatial_dropout1d_3/IdentityIdentity-model_1/leaky_re_lu_6/LeakyRelu:activations:0*
T0*,
_output_shapes
:����������2&
$model_1/spatial_dropout1d_3/Identity�
&model_1/convol_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&model_1/convol_2/conv1d/ExpandDims/dim�
"model_1/convol_2/conv1d/ExpandDims
ExpandDims-model_1/spatial_dropout1d_3/Identity:output:0/model_1/convol_2/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2$
"model_1/convol_2/conv1d/ExpandDims�
3model_1/convol_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp<model_1_convol_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:
*
dtype025
3model_1/convol_2/conv1d/ExpandDims_1/ReadVariableOp�
(model_1/convol_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(model_1/convol_2/conv1d/ExpandDims_1/dim�
$model_1/convol_2/conv1d/ExpandDims_1
ExpandDims;model_1/convol_2/conv1d/ExpandDims_1/ReadVariableOp:value:01model_1/convol_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
2&
$model_1/convol_2/conv1d/ExpandDims_1�
model_1/convol_2/conv1dConv2D+model_1/convol_2/conv1d/ExpandDims:output:0-model_1/convol_2/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
model_1/convol_2/conv1d�
model_1/convol_2/conv1d/SqueezeSqueeze model_1/convol_2/conv1d:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������2!
model_1/convol_2/conv1d/Squeeze�
'model_1/convol_2/BiasAdd/ReadVariableOpReadVariableOp0model_1_convol_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_1/convol_2/BiasAdd/ReadVariableOp�
model_1/convol_2/BiasAddBiasAdd(model_1/convol_2/conv1d/Squeeze:output:0/model_1/convol_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2
model_1/convol_2/BiasAdd�
model_1/leaky_re_lu_7/LeakyRelu	LeakyRelu!model_1/convol_2/BiasAdd:output:0*,
_output_shapes
:����������*
alpha%���>2!
model_1/leaky_re_lu_7/LeakyRelu�
$model_1/spatial_dropout1d_4/IdentityIdentity-model_1/leaky_re_lu_7/LeakyRelu:activations:0*
T0*,
_output_shapes
:����������2&
$model_1/spatial_dropout1d_4/Identity�
&model_1/convol_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&model_1/convol_3/conv1d/ExpandDims/dim�
"model_1/convol_3/conv1d/ExpandDims
ExpandDims-model_1/spatial_dropout1d_4/Identity:output:0/model_1/convol_3/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2$
"model_1/convol_3/conv1d/ExpandDims�
3model_1/convol_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp<model_1_convol_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:
*
dtype025
3model_1/convol_3/conv1d/ExpandDims_1/ReadVariableOp�
(model_1/convol_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(model_1/convol_3/conv1d/ExpandDims_1/dim�
$model_1/convol_3/conv1d/ExpandDims_1
ExpandDims;model_1/convol_3/conv1d/ExpandDims_1/ReadVariableOp:value:01model_1/convol_3/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
2&
$model_1/convol_3/conv1d/ExpandDims_1�
model_1/convol_3/conv1dConv2D+model_1/convol_3/conv1d/ExpandDims:output:0-model_1/convol_3/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
model_1/convol_3/conv1d�
model_1/convol_3/conv1d/SqueezeSqueeze model_1/convol_3/conv1d:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������2!
model_1/convol_3/conv1d/Squeeze�
'model_1/convol_3/BiasAdd/ReadVariableOpReadVariableOp0model_1_convol_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_1/convol_3/BiasAdd/ReadVariableOp�
model_1/convol_3/BiasAddBiasAdd(model_1/convol_3/conv1d/Squeeze:output:0/model_1/convol_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2
model_1/convol_3/BiasAdd�
model_1/leaky_re_lu_8/LeakyRelu	LeakyRelu!model_1/convol_3/BiasAdd:output:0*,
_output_shapes
:����������*
alpha%���>2!
model_1/leaky_re_lu_8/LeakyRelu�
$model_1/spatial_dropout1d_5/IdentityIdentity-model_1/leaky_re_lu_8/LeakyRelu:activations:0*
T0*,
_output_shapes
:����������2&
$model_1/spatial_dropout1d_5/Identity�
model_1/dropout_1/IdentityIdentity-model_1/spatial_dropout1d_5/Identity:output:0*
T0*,
_output_shapes
:����������2
model_1/dropout_1/Identity�
model_1/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"����
   2
model_1/flatten_3/Const�
model_1/flatten_3/ReshapeReshapeinput_4 model_1/flatten_3/Const:output:0*
T0*'
_output_shapes
:���������
2
model_1/flatten_3/Reshape�
model_1/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
model_1/flatten_2/Const�
model_1/flatten_2/ReshapeReshape#model_1/dropout_1/Identity:output:0 model_1/flatten_2/Const:output:0*
T0*(
_output_shapes
:����������2
model_1/flatten_2/Reshape�
%model_1/dense_5/MatMul/ReadVariableOpReadVariableOp.model_1_dense_5_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02'
%model_1/dense_5/MatMul/ReadVariableOp�
model_1/dense_5/MatMulMatMul"model_1/flatten_3/Reshape:output:0-model_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_1/dense_5/MatMul�
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&model_1/dense_5/BiasAdd/ReadVariableOp�
model_1/dense_5/BiasAddBiasAdd model_1/dense_5/MatMul:product:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_1/dense_5/BiasAdd�
%model_1/dense_4/MatMul/ReadVariableOpReadVariableOp.model_1_dense_4_matmul_readvariableop_resource*
_output_shapes
:	� *
dtype02'
%model_1/dense_4/MatMul/ReadVariableOp�
model_1/dense_4/MatMulMatMul"model_1/flatten_2/Reshape:output:0-model_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
model_1/dense_4/MatMul�
&model_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02(
&model_1/dense_4/BiasAdd/ReadVariableOp�
model_1/dense_4/BiasAddBiasAdd model_1/dense_4/MatMul:product:0.model_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
model_1/dense_4/BiasAdd�
model_1/leaky_re_lu_9/LeakyRelu	LeakyRelu model_1/dense_4/BiasAdd:output:0*'
_output_shapes
:��������� *
alpha%���>2!
model_1/leaky_re_lu_9/LeakyRelu�
 model_1/leaky_re_lu_10/LeakyRelu	LeakyRelu model_1/dense_5/BiasAdd:output:0*'
_output_shapes
:���������*
alpha%���>2"
 model_1/leaky_re_lu_10/LeakyRelu�
!model_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_1/concatenate_1/concat/axis�
model_1/concatenate_1/concatConcatV2-model_1/leaky_re_lu_9/LeakyRelu:activations:0.model_1/leaky_re_lu_10/LeakyRelu:activations:0*model_1/concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������;2
model_1/concatenate_1/concat�
%model_1/dense_6/MatMul/ReadVariableOpReadVariableOp.model_1_dense_6_matmul_readvariableop_resource*
_output_shapes

:;*
dtype02'
%model_1/dense_6/MatMul/ReadVariableOp�
model_1/dense_6/MatMulMatMul%model_1/concatenate_1/concat:output:0-model_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_1/dense_6/MatMul�
&model_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&model_1/dense_6/BiasAdd/ReadVariableOp�
model_1/dense_6/BiasAddBiasAdd model_1/dense_6/MatMul:product:0.model_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_1/dense_6/BiasAdd�
 model_1/leaky_re_lu_11/LeakyRelu	LeakyRelu model_1/dense_6/BiasAdd:output:0*'
_output_shapes
:���������*
alpha%���>2"
 model_1/leaky_re_lu_11/LeakyRelu�
%model_1/dense_7/MatMul/ReadVariableOpReadVariableOp.model_1_dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype02'
%model_1/dense_7/MatMul/ReadVariableOp�
model_1/dense_7/MatMulMatMul.model_1/leaky_re_lu_11/LeakyRelu:activations:0-model_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_1/dense_7/MatMul�
&model_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&model_1/dense_7/BiasAdd/ReadVariableOp�
model_1/dense_7/BiasAddBiasAdd model_1/dense_7/MatMul:product:0.model_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_1/dense_7/BiasAdd�
IdentityIdentity model_1/dense_7/BiasAdd:output:0(^model_1/convol_1/BiasAdd/ReadVariableOp4^model_1/convol_1/conv1d/ExpandDims_1/ReadVariableOp(^model_1/convol_2/BiasAdd/ReadVariableOp4^model_1/convol_2/conv1d/ExpandDims_1/ReadVariableOp(^model_1/convol_3/BiasAdd/ReadVariableOp4^model_1/convol_3/conv1d/ExpandDims_1/ReadVariableOp'^model_1/dense_4/BiasAdd/ReadVariableOp&^model_1/dense_4/MatMul/ReadVariableOp'^model_1/dense_5/BiasAdd/ReadVariableOp&^model_1/dense_5/MatMul/ReadVariableOp'^model_1/dense_6/BiasAdd/ReadVariableOp&^model_1/dense_6/MatMul/ReadVariableOp'^model_1/dense_7/BiasAdd/ReadVariableOp&^model_1/dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������:���������
: : : : : : : : : : : : : : 2R
'model_1/convol_1/BiasAdd/ReadVariableOp'model_1/convol_1/BiasAdd/ReadVariableOp2j
3model_1/convol_1/conv1d/ExpandDims_1/ReadVariableOp3model_1/convol_1/conv1d/ExpandDims_1/ReadVariableOp2R
'model_1/convol_2/BiasAdd/ReadVariableOp'model_1/convol_2/BiasAdd/ReadVariableOp2j
3model_1/convol_2/conv1d/ExpandDims_1/ReadVariableOp3model_1/convol_2/conv1d/ExpandDims_1/ReadVariableOp2R
'model_1/convol_3/BiasAdd/ReadVariableOp'model_1/convol_3/BiasAdd/ReadVariableOp2j
3model_1/convol_3/conv1d/ExpandDims_1/ReadVariableOp3model_1/convol_3/conv1d/ExpandDims_1/ReadVariableOp2P
&model_1/dense_4/BiasAdd/ReadVariableOp&model_1/dense_4/BiasAdd/ReadVariableOp2N
%model_1/dense_4/MatMul/ReadVariableOp%model_1/dense_4/MatMul/ReadVariableOp2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2N
%model_1/dense_5/MatMul/ReadVariableOp%model_1/dense_5/MatMul/ReadVariableOp2P
&model_1/dense_6/BiasAdd/ReadVariableOp&model_1/dense_6/BiasAdd/ReadVariableOp2N
%model_1/dense_6/MatMul/ReadVariableOp%model_1/dense_6/MatMul/ReadVariableOp2P
&model_1/dense_7/BiasAdd/ReadVariableOp&model_1/dense_7/BiasAdd/ReadVariableOp2N
%model_1/dense_7/MatMul/ReadVariableOp%model_1/dense_7/MatMul/ReadVariableOp:U Q
,
_output_shapes
:����������
!
_user_specified_name	input_3:TP
+
_output_shapes
:���������

!
_user_specified_name	input_4
�
�
'__inference_model_1_layer_call_fn_55567
inputs_0
inputs_1
unknown:

	unknown_0:
	unknown_1:

	unknown_2:
	unknown_3:

	unknown_4:
	unknown_5:

	unknown_6:
	unknown_7:	� 
	unknown_8: 
	unknown_9:;

unknown_10:

unknown_11:

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_549552
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������:���������
: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:����������
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:���������

"
_user_specified_name
inputs/1
�
l
3__inference_spatial_dropout1d_4_layer_call_fn_55967

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_546152
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*=
_output_shapes+
):'���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
Y
-__inference_concatenate_1_layer_call_fn_56252
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������;* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_549132
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������;2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:��������� :���������:Q M
'
_output_shapes
:��������� 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
m
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_56139

inputs
identity�D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:����������2
dropout/Mul�
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :������������������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:����������2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�O
�
B__inference_model_1_layer_call_and_return_conditional_losses_55438
input_3
input_4$
convol_1_55389:

convol_1_55391:$
convol_2_55396:

convol_2_55398:$
convol_3_55403:

convol_3_55405:
dense_5_55413:

dense_5_55415: 
dense_4_55418:	� 
dense_4_55420: 
dense_6_55426:;
dense_6_55428:
dense_7_55432:
dense_7_55434:
identity�� convol_1/StatefulPartitionedCall� convol_2/StatefulPartitionedCall� convol_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�
 convol_1/StatefulPartitionedCallStatefulPartitionedCallinput_3convol_1_55389convol_1_55391*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_convol_1_layer_call_and_return_conditional_losses_547502"
 convol_1/StatefulPartitionedCall�
leaky_re_lu_6/PartitionedCallPartitionedCall)convol_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_547612
leaky_re_lu_6/PartitionedCall�
#spatial_dropout1d_3/PartitionedCallPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_547672%
#spatial_dropout1d_3/PartitionedCall�
 convol_2/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_3/PartitionedCall:output:0convol_2_55396convol_2_55398*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_convol_2_layer_call_and_return_conditional_losses_547842"
 convol_2/StatefulPartitionedCall�
leaky_re_lu_7/PartitionedCallPartitionedCall)convol_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_547952
leaky_re_lu_7/PartitionedCall�
#spatial_dropout1d_4/PartitionedCallPartitionedCall&leaky_re_lu_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_548012%
#spatial_dropout1d_4/PartitionedCall�
 convol_3/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_4/PartitionedCall:output:0convol_3_55403convol_3_55405*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_convol_3_layer_call_and_return_conditional_losses_548182"
 convol_3/StatefulPartitionedCall�
leaky_re_lu_8/PartitionedCallPartitionedCall)convol_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_548292
leaky_re_lu_8/PartitionedCall�
#spatial_dropout1d_5/PartitionedCallPartitionedCall&leaky_re_lu_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_548352%
#spatial_dropout1d_5/PartitionedCall�
dropout_1/PartitionedCallPartitionedCall,spatial_dropout1d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_548422
dropout_1/PartitionedCall�
flatten_3/PartitionedCallPartitionedCallinput_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_548502
flatten_3/PartitionedCall�
flatten_2/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_548582
flatten_2/PartitionedCall�
dense_5/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_5_55413dense_5_55415*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_548702!
dense_5/StatefulPartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_55418dense_4_55420*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_548862!
dense_4/StatefulPartitionedCall�
leaky_re_lu_9/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_548972
leaky_re_lu_9/PartitionedCall�
leaky_re_lu_10/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_549042 
leaky_re_lu_10/PartitionedCall�
concatenate_1/PartitionedCallPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0'leaky_re_lu_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������;* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_549132
concatenate_1/PartitionedCall�
dense_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_6_55426dense_6_55428*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_549252!
dense_6/StatefulPartitionedCall�
leaky_re_lu_11/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_549362 
leaky_re_lu_11/PartitionedCall�
dense_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0dense_7_55432dense_7_55434*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_549482!
dense_7/StatefulPartitionedCall�
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0!^convol_1/StatefulPartitionedCall!^convol_2/StatefulPartitionedCall!^convol_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:����������:���������
: : : : : : : : : : : : : : 2D
 convol_1/StatefulPartitionedCall convol_1/StatefulPartitionedCall2D
 convol_2/StatefulPartitionedCall convol_2/StatefulPartitionedCall2D
 convol_3/StatefulPartitionedCall convol_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:U Q
,
_output_shapes
:����������
!
_user_specified_name	input_3:TP
+
_output_shapes
:���������

!
_user_specified_name	input_4
�
l
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_56117

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:����������2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:����������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
m
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_55896

inputs
identity�D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Const�
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'���������������������������2
dropout/Mul�
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1�
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape�
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :������������������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :������������������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :������������������2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'���������������������������2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_56188

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����
   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������
2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
l
3__inference_spatial_dropout1d_5_layer_call_fn_56075

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_546912
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*=
_output_shapes+
):'���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
E
)__inference_flatten_3_layer_call_fn_56182

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_548502
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
d
H__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_55957

inputs
identityi
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:����������*
alpha%���>2
	LeakyRelup
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
H__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_54761

inputs
identityi
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:����������*
alpha%���>2
	LeakyRelup
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
)__inference_dropout_1_layer_call_fn_56149

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_550832
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
l
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_54801

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:����������2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:����������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
@
input_35
serving_default_input_3:0����������
?
input_44
serving_default_input_4:0���������
;
dense_70
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
Ǐ
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer_with_weights-3
layer-14
layer_with_weights-4
layer-15
layer-16
layer-17
layer-18
layer_with_weights-5
layer-19
layer-20
layer_with_weights-6
layer-21
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
�_default_save_signature
�__call__
+�&call_and_return_all_conditional_losses"��
_tf_keras_network��{"name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 912, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": []}, {"class_name": "Conv1D", "config": {"name": "convol_1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [10]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "convol_1", "inbound_nodes": [[["input_3", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_6", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_6", "inbound_nodes": [[["convol_1", 0, 0, {}]]]}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "spatial_dropout1d_3", "inbound_nodes": [[["leaky_re_lu_6", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "convol_2", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [10]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "convol_2", "inbound_nodes": [[["spatial_dropout1d_3", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_7", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_7", "inbound_nodes": [[["convol_2", 0, 0, {}]]]}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "spatial_dropout1d_4", "inbound_nodes": [[["leaky_re_lu_7", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "convol_3", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [10]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "convol_3", "inbound_nodes": [[["spatial_dropout1d_4", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_8", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_8", "inbound_nodes": [[["convol_3", 0, 0, {}]]]}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_5", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "spatial_dropout1d_5", "inbound_nodes": [[["leaky_re_lu_8", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["spatial_dropout1d_5", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": []}, {"class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_2", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3", "inbound_nodes": [[["input_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["flatten_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 27, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_5", "inbound_nodes": [[["flatten_3", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_9", "inbound_nodes": [[["dense_4", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_10", "inbound_nodes": [[["dense_5", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["leaky_re_lu_9", 0, 0, {}], ["leaky_re_lu_10", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_6", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_11", "inbound_nodes": [[["dense_6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_7", "inbound_nodes": [[["leaky_re_lu_11", 0, 0, {}]]]}], "input_layers": [["input_3", 0, 0], ["input_4", 0, 0]], "output_layers": [["dense_7", 0, 0]]}, "shared_object_id": 36, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 912, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 10, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 912, 1]}, {"class_name": "TensorShape", "items": [null, 10, 1]}], "is_graph_network": true, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 912, 1]}, "float32", "input_3"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 10, 1]}, "float32", "input_4"]}], "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 912, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Conv1D", "config": {"name": "convol_1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [10]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "convol_1", "inbound_nodes": [[["input_3", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_6", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_6", "inbound_nodes": [[["convol_1", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "spatial_dropout1d_3", "inbound_nodes": [[["leaky_re_lu_6", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "Conv1D", "config": {"name": "convol_2", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [10]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "convol_2", "inbound_nodes": [[["spatial_dropout1d_3", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_7", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_7", "inbound_nodes": [[["convol_2", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "spatial_dropout1d_4", "inbound_nodes": [[["leaky_re_lu_7", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Conv1D", "config": {"name": "convol_3", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [10]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "convol_3", "inbound_nodes": [[["spatial_dropout1d_4", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_8", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_8", "inbound_nodes": [[["convol_3", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_5", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "spatial_dropout1d_5", "inbound_nodes": [[["leaky_re_lu_8", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["spatial_dropout1d_5", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": [], "shared_object_id": 17}, {"class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_2", "inbound_nodes": [[["dropout_1", 0, 0, {}]]], "shared_object_id": 18}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3", "inbound_nodes": [[["input_4", 0, 0, {}]]], "shared_object_id": 19}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["flatten_2", 0, 0, {}]]], "shared_object_id": 22}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 27, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_5", "inbound_nodes": [[["flatten_3", 0, 0, {}]]], "shared_object_id": 25}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_9", "inbound_nodes": [[["dense_4", 0, 0, {}]]], "shared_object_id": 26}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_10", "inbound_nodes": [[["dense_5", 0, 0, {}]]], "shared_object_id": 27}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["leaky_re_lu_9", 0, 0, {}], ["leaky_re_lu_10", 0, 0, {}]]], "shared_object_id": 28}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_6", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 31}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_11", "inbound_nodes": [[["dense_6", 0, 0, {}]]], "shared_object_id": 32}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 33}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_7", "inbound_nodes": [[["leaky_re_lu_11", 0, 0, {}]]], "shared_object_id": 35}], "input_layers": [["input_3", 0, 0], ["input_4", 0, 0]], "output_layers": [["dense_7", 0, 0]]}}, "training_config": {"loss": "mse", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "mse", "dtype": "float32", "fn": "mean_squared_error"}, "shared_object_id": 39}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_3", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 912, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 912, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}}
�


kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�	
_tf_keras_layer�	{"name": "convol_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "convol_1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [10]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_3", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 1}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 912, 1]}}
�
#	variables
$regularization_losses
%trainable_variables
&	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "leaky_re_lu_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_6", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "inbound_nodes": [[["convol_1", 0, 0, {}]]], "shared_object_id": 4}
�
'	variables
(regularization_losses
)trainable_variables
*	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "spatial_dropout1d_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["leaky_re_lu_6", 0, 0, {}]]], "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 41}}
�

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�	
_tf_keras_layer�	{"name": "convol_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "convol_2", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [10]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["spatial_dropout1d_3", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 16}}, "shared_object_id": 42}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 903, 16]}}
�
1	variables
2regularization_losses
3trainable_variables
4	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "leaky_re_lu_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_7", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "inbound_nodes": [[["convol_2", 0, 0, {}]]], "shared_object_id": 9}
�
5	variables
6regularization_losses
7trainable_variables
8	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "spatial_dropout1d_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["leaky_re_lu_7", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 43}}
�

9kernel
:bias
;	variables
<regularization_losses
=trainable_variables
>	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�	
_tf_keras_layer�	{"name": "convol_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "convol_3", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [10]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["spatial_dropout1d_4", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 8}}, "shared_object_id": 44}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 894, 8]}}
�
?	variables
@regularization_losses
Atrainable_variables
B	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "leaky_re_lu_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_8", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "inbound_nodes": [[["convol_3", 0, 0, {}]]], "shared_object_id": 14}
�
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "spatial_dropout1d_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_5", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["leaky_re_lu_8", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 45}}
�
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["spatial_dropout1d_5", 0, 0, {}]]], "shared_object_id": 16}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_4", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}}
�
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "flatten_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["dropout_1", 0, 0, {}]]], "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 46}}
�
O	variables
Pregularization_losses
Qtrainable_variables
R	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "flatten_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["input_4", 0, 0, {}]]], "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 47}}
�	

Skernel
Tbias
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten_2", 0, 0, {}]]], "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3540}}, "shared_object_id": 48}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3540]}}
�	

Ykernel
Zbias
[	variables
\regularization_losses
]trainable_variables
^	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 27, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten_3", 0, 0, {}]]], "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}, "shared_object_id": 49}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
�
_	variables
`regularization_losses
atrainable_variables
b	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "leaky_re_lu_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_9", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "inbound_nodes": [[["dense_4", 0, 0, {}]]], "shared_object_id": 26}
�
c	variables
dregularization_losses
etrainable_variables
f	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "leaky_re_lu_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "inbound_nodes": [[["dense_5", 0, 0, {}]]], "shared_object_id": 27}
�
g	variables
hregularization_losses
itrainable_variables
j	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "concatenate_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["leaky_re_lu_9", 0, 0, {}], ["leaky_re_lu_10", 0, 0, {}]]], "shared_object_id": 28, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 32]}, {"class_name": "TensorShape", "items": [null, 27]}]}
�	

kkernel
lbias
m	variables
nregularization_losses
otrainable_variables
p	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 59}}, "shared_object_id": 50}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 59]}}
�
q	variables
rregularization_losses
strainable_variables
t	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "leaky_re_lu_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_11", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "inbound_nodes": [[["dense_6", 0, 0, {}]]], "shared_object_id": 32}
�	

ukernel
vbias
w	variables
xregularization_losses
ytrainable_variables
z	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 33}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["leaky_re_lu_11", 0, 0, {}]]], "shared_object_id": 35, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}, "shared_object_id": 51}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
�
{iter

|beta_1

}beta_2
	~decay
learning_ratem�m�+m�,m�9m�:m�Sm�Tm�Ym�Zm�km�lm�um�vm�v�v�+v�,v�9v�:v�Sv�Tv�Yv�Zv�kv�lv�uv�vv�"
	optimizer
�
0
1
+2
,3
94
:5
S6
T7
Y8
Z9
k10
l11
u12
v13"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
+2
,3
94
:5
S6
T7
Y8
Z9
k10
l11
u12
v13"
trackable_list_wrapper
�
�metrics
	variables
 �layer_regularization_losses
regularization_losses
�layer_metrics
trainable_variables
�non_trainable_variables
�layers
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
%:#
2convol_1/kernel
:2convol_1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
�metrics
	variables
 �layer_regularization_losses
 regularization_losses
�layer_metrics
!trainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
#	variables
 �layer_regularization_losses
$regularization_losses
�layer_metrics
%trainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
'	variables
 �layer_regularization_losses
(regularization_losses
�layer_metrics
)trainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
%:#
2convol_2/kernel
:2convol_2/bias
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
�
�metrics
-	variables
 �layer_regularization_losses
.regularization_losses
�layer_metrics
/trainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
1	variables
 �layer_regularization_losses
2regularization_losses
�layer_metrics
3trainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
5	variables
 �layer_regularization_losses
6regularization_losses
�layer_metrics
7trainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
%:#
2convol_3/kernel
:2convol_3/bias
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
�
�metrics
;	variables
 �layer_regularization_losses
<regularization_losses
�layer_metrics
=trainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
?	variables
 �layer_regularization_losses
@regularization_losses
�layer_metrics
Atrainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
C	variables
 �layer_regularization_losses
Dregularization_losses
�layer_metrics
Etrainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
G	variables
 �layer_regularization_losses
Hregularization_losses
�layer_metrics
Itrainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
K	variables
 �layer_regularization_losses
Lregularization_losses
�layer_metrics
Mtrainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
O	variables
 �layer_regularization_losses
Pregularization_losses
�layer_metrics
Qtrainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:	� 2dense_4/kernel
: 2dense_4/bias
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
�
�metrics
U	variables
 �layer_regularization_losses
Vregularization_losses
�layer_metrics
Wtrainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 :
2dense_5/kernel
:2dense_5/bias
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
�
�metrics
[	variables
 �layer_regularization_losses
\regularization_losses
�layer_metrics
]trainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
_	variables
 �layer_regularization_losses
`regularization_losses
�layer_metrics
atrainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
c	variables
 �layer_regularization_losses
dregularization_losses
�layer_metrics
etrainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
g	variables
 �layer_regularization_losses
hregularization_losses
�layer_metrics
itrainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 :;2dense_6/kernel
:2dense_6/bias
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
�
�metrics
m	variables
 �layer_regularization_losses
nregularization_losses
�layer_metrics
otrainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
q	variables
 �layer_regularization_losses
rregularization_losses
�layer_metrics
strainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 :2dense_7/kernel
:2dense_7/bias
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
�
�metrics
w	variables
 �layer_regularization_losses
xregularization_losses
�layer_metrics
ytrainable_variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�

�total

�count
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 52}
�

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "mse", "dtype": "float32", "config": {"name": "mse", "dtype": "float32", "fn": "mean_squared_error"}, "shared_object_id": 39}
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
*:(
2Adam/convol_1/kernel/m
 :2Adam/convol_1/bias/m
*:(
2Adam/convol_2/kernel/m
 :2Adam/convol_2/bias/m
*:(
2Adam/convol_3/kernel/m
 :2Adam/convol_3/bias/m
&:$	� 2Adam/dense_4/kernel/m
: 2Adam/dense_4/bias/m
%:#
2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
%:#;2Adam/dense_6/kernel/m
:2Adam/dense_6/bias/m
%:#2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
*:(
2Adam/convol_1/kernel/v
 :2Adam/convol_1/bias/v
*:(
2Adam/convol_2/kernel/v
 :2Adam/convol_2/bias/v
*:(
2Adam/convol_3/kernel/v
 :2Adam/convol_3/bias/v
&:$	� 2Adam/dense_4/kernel/v
: 2Adam/dense_4/bias/v
%:#
2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/v
%:#;2Adam/dense_6/kernel/v
:2Adam/dense_6/bias/v
%:#2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
�2�
 __inference__wrapped_model_54498�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *W�T
R�O
&�#
input_3����������
%�"
input_4���������

�2�
'__inference_model_1_layer_call_fn_54986
'__inference_model_1_layer_call_fn_55567
'__inference_model_1_layer_call_fn_55601
'__inference_model_1_layer_call_fn_55385�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_model_1_layer_call_and_return_conditional_losses_55679
B__inference_model_1_layer_call_and_return_conditional_losses_55815
B__inference_model_1_layer_call_and_return_conditional_losses_55438
B__inference_model_1_layer_call_and_return_conditional_losses_55491�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_convol_1_layer_call_fn_55824�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_convol_1_layer_call_and_return_conditional_losses_55839�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_leaky_re_lu_6_layer_call_fn_55844�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_55849�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
3__inference_spatial_dropout1d_3_layer_call_fn_55854
3__inference_spatial_dropout1d_3_layer_call_fn_55859
3__inference_spatial_dropout1d_3_layer_call_fn_55864
3__inference_spatial_dropout1d_3_layer_call_fn_55869�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_55874
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_55896
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_55901
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_55923�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_convol_2_layer_call_fn_55932�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_convol_2_layer_call_and_return_conditional_losses_55947�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_leaky_re_lu_7_layer_call_fn_55952�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_55957�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
3__inference_spatial_dropout1d_4_layer_call_fn_55962
3__inference_spatial_dropout1d_4_layer_call_fn_55967
3__inference_spatial_dropout1d_4_layer_call_fn_55972
3__inference_spatial_dropout1d_4_layer_call_fn_55977�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_55982
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_56004
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_56009
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_56031�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_convol_3_layer_call_fn_56040�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_convol_3_layer_call_and_return_conditional_losses_56055�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_leaky_re_lu_8_layer_call_fn_56060�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_56065�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
3__inference_spatial_dropout1d_5_layer_call_fn_56070
3__inference_spatial_dropout1d_5_layer_call_fn_56075
3__inference_spatial_dropout1d_5_layer_call_fn_56080
3__inference_spatial_dropout1d_5_layer_call_fn_56085�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_56090
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_56112
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_56117
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_56139�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_dropout_1_layer_call_fn_56144
)__inference_dropout_1_layer_call_fn_56149�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_dropout_1_layer_call_and_return_conditional_losses_56154
D__inference_dropout_1_layer_call_and_return_conditional_losses_56166�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_flatten_2_layer_call_fn_56171�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_flatten_2_layer_call_and_return_conditional_losses_56177�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_flatten_3_layer_call_fn_56182�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_flatten_3_layer_call_and_return_conditional_losses_56188�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_dense_4_layer_call_fn_56197�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_dense_4_layer_call_and_return_conditional_losses_56207�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_dense_5_layer_call_fn_56216�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_dense_5_layer_call_and_return_conditional_losses_56226�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_leaky_re_lu_9_layer_call_fn_56231�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_56236�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_leaky_re_lu_10_layer_call_fn_56241�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_56246�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_concatenate_1_layer_call_fn_56252�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_concatenate_1_layer_call_and_return_conditional_losses_56259�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_dense_6_layer_call_fn_56268�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_dense_6_layer_call_and_return_conditional_losses_56278�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_leaky_re_lu_11_layer_call_fn_56283�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_56288�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_dense_7_layer_call_fn_56297�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_dense_7_layer_call_and_return_conditional_losses_56307�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_55533input_3input_4"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
 __inference__wrapped_model_54498�+,9:YZSTkluva�^
W�T
R�O
&�#
input_3����������
%�"
input_4���������

� "1�.
,
dense_7!�
dense_7����������
H__inference_concatenate_1_layer_call_and_return_conditional_losses_56259�Z�W
P�M
K�H
"�
inputs/0��������� 
"�
inputs/1���������
� "%�"
�
0���������;
� �
-__inference_concatenate_1_layer_call_fn_56252vZ�W
P�M
K�H
"�
inputs/0��������� 
"�
inputs/1���������
� "����������;�
C__inference_convol_1_layer_call_and_return_conditional_losses_55839f4�1
*�'
%�"
inputs����������
� "*�'
 �
0����������
� �
(__inference_convol_1_layer_call_fn_55824Y4�1
*�'
%�"
inputs����������
� "������������
C__inference_convol_2_layer_call_and_return_conditional_losses_55947f+,4�1
*�'
%�"
inputs����������
� "*�'
 �
0����������
� �
(__inference_convol_2_layer_call_fn_55932Y+,4�1
*�'
%�"
inputs����������
� "������������
C__inference_convol_3_layer_call_and_return_conditional_losses_56055f9:4�1
*�'
%�"
inputs����������
� "*�'
 �
0����������
� �
(__inference_convol_3_layer_call_fn_56040Y9:4�1
*�'
%�"
inputs����������
� "������������
B__inference_dense_4_layer_call_and_return_conditional_losses_56207]ST0�-
&�#
!�
inputs����������
� "%�"
�
0��������� 
� {
'__inference_dense_4_layer_call_fn_56197PST0�-
&�#
!�
inputs����������
� "���������� �
B__inference_dense_5_layer_call_and_return_conditional_losses_56226\YZ/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� z
'__inference_dense_5_layer_call_fn_56216OYZ/�,
%�"
 �
inputs���������

� "�����������
B__inference_dense_6_layer_call_and_return_conditional_losses_56278\kl/�,
%�"
 �
inputs���������;
� "%�"
�
0���������
� z
'__inference_dense_6_layer_call_fn_56268Okl/�,
%�"
 �
inputs���������;
� "�����������
B__inference_dense_7_layer_call_and_return_conditional_losses_56307\uv/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� z
'__inference_dense_7_layer_call_fn_56297Ouv/�,
%�"
 �
inputs���������
� "�����������
D__inference_dropout_1_layer_call_and_return_conditional_losses_56154f8�5
.�+
%�"
inputs����������
p 
� "*�'
 �
0����������
� �
D__inference_dropout_1_layer_call_and_return_conditional_losses_56166f8�5
.�+
%�"
inputs����������
p
� "*�'
 �
0����������
� �
)__inference_dropout_1_layer_call_fn_56144Y8�5
.�+
%�"
inputs����������
p 
� "������������
)__inference_dropout_1_layer_call_fn_56149Y8�5
.�+
%�"
inputs����������
p
� "������������
D__inference_flatten_2_layer_call_and_return_conditional_losses_56177^4�1
*�'
%�"
inputs����������
� "&�#
�
0����������
� ~
)__inference_flatten_2_layer_call_fn_56171Q4�1
*�'
%�"
inputs����������
� "������������
D__inference_flatten_3_layer_call_and_return_conditional_losses_56188\3�0
)�&
$�!
inputs���������

� "%�"
�
0���������

� |
)__inference_flatten_3_layer_call_fn_56182O3�0
)�&
$�!
inputs���������

� "����������
�
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_56246X/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� }
.__inference_leaky_re_lu_10_layer_call_fn_56241K/�,
%�"
 �
inputs���������
� "�����������
I__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_56288X/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� }
.__inference_leaky_re_lu_11_layer_call_fn_56283K/�,
%�"
 �
inputs���������
� "�����������
H__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_55849b4�1
*�'
%�"
inputs����������
� "*�'
 �
0����������
� �
-__inference_leaky_re_lu_6_layer_call_fn_55844U4�1
*�'
%�"
inputs����������
� "������������
H__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_55957b4�1
*�'
%�"
inputs����������
� "*�'
 �
0����������
� �
-__inference_leaky_re_lu_7_layer_call_fn_55952U4�1
*�'
%�"
inputs����������
� "������������
H__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_56065b4�1
*�'
%�"
inputs����������
� "*�'
 �
0����������
� �
-__inference_leaky_re_lu_8_layer_call_fn_56060U4�1
*�'
%�"
inputs����������
� "������������
H__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_56236X/�,
%�"
 �
inputs��������� 
� "%�"
�
0��������� 
� |
-__inference_leaky_re_lu_9_layer_call_fn_56231K/�,
%�"
 �
inputs��������� 
� "���������� �
B__inference_model_1_layer_call_and_return_conditional_losses_55438�+,9:YZSTkluvi�f
_�\
R�O
&�#
input_3����������
%�"
input_4���������

p 

 
� "%�"
�
0���������
� �
B__inference_model_1_layer_call_and_return_conditional_losses_55491�+,9:YZSTkluvi�f
_�\
R�O
&�#
input_3����������
%�"
input_4���������

p

 
� "%�"
�
0���������
� �
B__inference_model_1_layer_call_and_return_conditional_losses_55679�+,9:YZSTkluvk�h
a�^
T�Q
'�$
inputs/0����������
&�#
inputs/1���������

p 

 
� "%�"
�
0���������
� �
B__inference_model_1_layer_call_and_return_conditional_losses_55815�+,9:YZSTkluvk�h
a�^
T�Q
'�$
inputs/0����������
&�#
inputs/1���������

p

 
� "%�"
�
0���������
� �
'__inference_model_1_layer_call_fn_54986�+,9:YZSTkluvi�f
_�\
R�O
&�#
input_3����������
%�"
input_4���������

p 

 
� "�����������
'__inference_model_1_layer_call_fn_55385�+,9:YZSTkluvi�f
_�\
R�O
&�#
input_3����������
%�"
input_4���������

p

 
� "�����������
'__inference_model_1_layer_call_fn_55567�+,9:YZSTkluvk�h
a�^
T�Q
'�$
inputs/0����������
&�#
inputs/1���������

p 

 
� "�����������
'__inference_model_1_layer_call_fn_55601�+,9:YZSTkluvk�h
a�^
T�Q
'�$
inputs/0����������
&�#
inputs/1���������

p

 
� "�����������
#__inference_signature_wrapper_55533�+,9:YZSTkluvr�o
� 
h�e
1
input_3&�#
input_3����������
0
input_4%�"
input_4���������
"1�.
,
dense_7!�
dense_7����������
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_55874�I�F
?�<
6�3
inputs'���������������������������
p 
� ";�8
1�.
0'���������������������������
� �
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_55896�I�F
?�<
6�3
inputs'���������������������������
p
� ";�8
1�.
0'���������������������������
� �
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_55901f8�5
.�+
%�"
inputs����������
p 
� "*�'
 �
0����������
� �
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_55923f8�5
.�+
%�"
inputs����������
p
� "*�'
 �
0����������
� �
3__inference_spatial_dropout1d_3_layer_call_fn_55854{I�F
?�<
6�3
inputs'���������������������������
p 
� ".�+'����������������������������
3__inference_spatial_dropout1d_3_layer_call_fn_55859{I�F
?�<
6�3
inputs'���������������������������
p
� ".�+'����������������������������
3__inference_spatial_dropout1d_3_layer_call_fn_55864Y8�5
.�+
%�"
inputs����������
p 
� "������������
3__inference_spatial_dropout1d_3_layer_call_fn_55869Y8�5
.�+
%�"
inputs����������
p
� "������������
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_55982�I�F
?�<
6�3
inputs'���������������������������
p 
� ";�8
1�.
0'���������������������������
� �
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_56004�I�F
?�<
6�3
inputs'���������������������������
p
� ";�8
1�.
0'���������������������������
� �
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_56009f8�5
.�+
%�"
inputs����������
p 
� "*�'
 �
0����������
� �
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_56031f8�5
.�+
%�"
inputs����������
p
� "*�'
 �
0����������
� �
3__inference_spatial_dropout1d_4_layer_call_fn_55962{I�F
?�<
6�3
inputs'���������������������������
p 
� ".�+'����������������������������
3__inference_spatial_dropout1d_4_layer_call_fn_55967{I�F
?�<
6�3
inputs'���������������������������
p
� ".�+'����������������������������
3__inference_spatial_dropout1d_4_layer_call_fn_55972Y8�5
.�+
%�"
inputs����������
p 
� "������������
3__inference_spatial_dropout1d_4_layer_call_fn_55977Y8�5
.�+
%�"
inputs����������
p
� "������������
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_56090�I�F
?�<
6�3
inputs'���������������������������
p 
� ";�8
1�.
0'���������������������������
� �
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_56112�I�F
?�<
6�3
inputs'���������������������������
p
� ";�8
1�.
0'���������������������������
� �
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_56117f8�5
.�+
%�"
inputs����������
p 
� "*�'
 �
0����������
� �
N__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_56139f8�5
.�+
%�"
inputs����������
p
� "*�'
 �
0����������
� �
3__inference_spatial_dropout1d_5_layer_call_fn_56070{I�F
?�<
6�3
inputs'���������������������������
p 
� ".�+'����������������������������
3__inference_spatial_dropout1d_5_layer_call_fn_56075{I�F
?�<
6�3
inputs'���������������������������
p
� ".�+'����������������������������
3__inference_spatial_dropout1d_5_layer_call_fn_56080Y8�5
.�+
%�"
inputs����������
p 
� "������������
3__inference_spatial_dropout1d_5_layer_call_fn_56085Y8�5
.�+
%�"
inputs����������
p
� "�����������