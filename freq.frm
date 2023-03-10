#: MaxTermSize 400K
#: WorkSpace 2500M
#: SubTermsInSmall 1M
#: SubSmallSize 100M
#: SubLargeSize 1000M
#: MaxNumberSize 50K
#: ScratchSize 1G
#: SizeStoreCache 1M

#define HC "8";
#define MAX "{2*'HC'+2}";

Off TotalSize;
On nospacesinnumbers;
Auto S a,c,n;
S ep,z,y,r;
CF x,der,pro;

Table relax P(1:'MAX',0:'MAX');
Table relax p(0:'MAX',0:'MAX');
inparallel;

.global

load inissepx.sav;

#do i=-1,{'MAX'-1}
	#do j=-1,{'i'+2}
		Global ssepx{'i'+2}d{'j'+1} = inissepx{'i'+2}d{'j'+1};
	#enddo
#enddo
.sort
delete storage;
.store

#do k=1,{'MAX'}
	#call setP('k')
#enddo

L freq = -sum_(a,0,'HC',ep^(2*a)*p(2*a,2));

.sort

id y^a? = x(a);
id x(0) = 1;
id x(a?) = a*i_;
id p(a1?number_,a2?{0,1}) = 0; 

.sort

Format Mathematica;
#write  <expr.m> "\"(%E)\"",freq

Print freq;



.end;
