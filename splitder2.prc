#procedure splitder2
#define k "0"

	#do l = tosder
		#redefine k "{'k'+1}"
		L res2temp'k' = der(2,'l');
	#enddo

	.sort:Der Sum2;

	#if ('k' != 0)
			Drop res2temp1,...,res2temp'k';
			Drop tosder;
			L res2 = res2temp1+...+res2temp'k';
		#else
			Drop tosder;
			L res2 = 0;
	#endif

	#call deriv

	
#endprocedure
