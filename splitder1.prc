#procedure splitder1
#define j "0";

	#do i = tofder;
		#redefine j "{'j'+1}"
		L res1temp'j' = der(1,'i');
	#enddo

	.sort:Der Sum1;

	#if ('j' != 0)
			Drop res1temp1,...,res1temp'j';
			Drop tofder;
			L res1 = res1temp1+...+res1temp'j';
		#else
			Drop tofder;
			L res1 = 0;
	#endif

	.sort:Der Sum1;

	#call deriv
	
	
#endprocedure
