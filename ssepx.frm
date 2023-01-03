#: MaxTermSize 400K
#: WorkSpace 2500M
#: SubTermsInSmall 1M
#: SubSmallSize 100M
#: SubLargeSize 1000M
#: MaxNumberSize 50K
#: ScratchSize 1G

#define HC "8";
#define MAX "{2*'HC'+2}";

Off TotalSize;
On nospacesinnumbers;
Auto S a,c,n;
S ep,z,y,r;
CF x,der,pro;


Table relax P(1:'MAX',0:'MAX');
Table relax p(0:'MAX',0:'MAX');

.global

#include sinex.frm;

id p({'MAX'-2},0) = 0;

.store

#do i=-1,{'MAX'-1}
	#do j=-1,{'i'+2}
		#call getsinex('i','j')
	#enddo
#enddo

#write "Saving coeff of sin"

#do i=-1,{'MAX'-1}
	#do j=-1,{'i'+2}
		Global inissepx{'i'+2}d{'j'+1} = sepsx{'i'+2}d{'j'+1};
	#enddo
#enddo
.store
save inissepx.sav;

.end;
