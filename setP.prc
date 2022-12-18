#procedure setP(i)

#do j=0,{'i'}
	#if ('i' == 'j')
		#if ('i' > 1)
			Global p{'i'-2}d2 = cefbef'i'd'i';
			Global p{'i'-2}d3 = der(1,cefbef'i'd'i');
		#endif
	#elseif ('j' == 0)
		Global P{'i'-'j'}d'j' = cefbef'i'd'j';
	#elseif ('j' == 1)
		Global P{'i'-'j'}d'j' = cefbef'i'd'j' + 2*i_/({'i'-'j'})*der(1,P({'i'-'j'},{'j'-1}));
	#else
		Global P{'i'-'j'}d'j' = cefbef'i'd'j' + 2*i_/({'i'-'j'})*der(1,P({'i'-'j'},{'j'-1})) + 1/{('i'-'j')^2}*der(2,P({'i'-'j'},{'j'-2}));
	#endif
	.sort
	#call deriv
	.sort
#enddo


#do j=0,{'i'}
	#if ('i' == 'j')
		#if ('i' > 1)
			fill p({'i'-2},2) = p{'i'-2}d2;
			fill p({'i'-2},3) = p{'i'-2}d3;
		#endif
	#else
		fill P({'i'-'j'},'j') = P{'i'-'j'}d'j';
	#endif
	.sort
#enddo



#endprocedure