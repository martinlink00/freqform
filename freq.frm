#define HC "5";
#define MAX "{2*'HC'+2}";

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

#do i=1,{'MAX'}
	#do j=0,{'i'}
		#call getcefbef('i','j')
	#enddo
#enddo

#do i=1,{'MAX'}
	#call setP('i')
#enddo

.sort

L freq = -sum_(a,0,'HC',ep^(2*a)*p(2*a,2));

id y^a? = x(a);
id x(0) = 1;
id x(a?) = a*i_;
id p(a1?number_,a2?{0,1}) = 0; 

.sort

Format Mathematica;
#write  <expr.m> "\"(%E)\"",freq

Print freq;



.end;