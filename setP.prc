#procedure setP(i)

#do j=0,{'i'}
	#call getcefbef('i','j')
	#if ('i' == 'j')
		#if ('i' > 1)
			Global p{'i'-2}d2 = tempcef;
			Global p{'i'-2}d3 = der(1,tempcef);
		#endif
	#elseif ('j' == 0)
		Global P{'i'-'j'}d'j' = tempcef;
	#elseif ('j' == 1)
		Global P{'i'-'j'}d'j' = tempcef + 2*i_/({'i'-'j'})*der(1,P({'i'-'j'},{'j'-1}));
	#else
		Global P{'i'-'j'}d'j' = tempcef + 2*i_/({'i'-'j'})*der(1,P({'i'-'j'},{'j'-1})) + 1/{('i'-'j')^2}*der(2,P({'i'-'j'},{'j'-2}));
	#endif
	#call deriv
	.sort:Storing P({'i'-'j'},'j');
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
	Drop tempcef;
	.sort:Insert P({'i'-'j'},'j');
#enddo



#endprocedure
