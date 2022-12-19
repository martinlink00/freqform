#procedure getcefbef(i,j)

#if ('i' == 'j')

	Local tempcef = ssepx{'i'-2+2}d{'i'-'j'+1} + i_*r/2*ssepx{'i'-1+2}d{'i'-'j'-1+1}-i_*r/2*ssepx{'i'-1+2}d{'i'-'j'+1+1};
		
#else

	Local tempcef = -1/({'i'-'j'})^2*(ssepx{'i'-2+2}d{'i'-'j'+1} + i_*r/2*ssepx{'i'-1+2}d{'i'-'j'-1+1}-i_*r/2*ssepx{'i'-1+2}d{'i'-'j'+1+1});

#endif

.sort:Equation ('i',{'i'-'j'});

#endprocedure
