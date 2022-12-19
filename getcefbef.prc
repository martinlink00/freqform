#procedure getcefbef(i,j)

#if ('i' == 'j')
	Global cefbef'i'd'j' = sepsx{'i'-2+2}d{'i'-'j'+1} + i_*r/2*sepsx{'i'-1+2}d{'i'-'j'-1+1}-i_*r/2*sepsx{'i'-1+2}d{'i'-'j'+1+1};
		
#else

	Global cefbef'i'd'j' = -1/({'i'-'j'})^2*(sepsx{'i'-2+2}d{'i'-'j'+1} + i_*r/2*sepsx{'i'-1+2}d{'i'-'j'-1+1}-i_*r/2*sepsx{'i'-1+2}d{'i'-'j'+1+1});

#endif

.sort:Equation ('i',{'i'-'j'});

#endprocedure
