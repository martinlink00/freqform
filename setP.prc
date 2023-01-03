#procedure setP(i)

#do j=0,{'i'}
	#call getcefbef('i','j')
	#if ('i' == 'j')
		#if ('i' > 1)
			Global p{'i'-2}d2 = tempcef;
			L tofder = tempcef;
			#call splitder1
			Global p{'i'-2}d3 = res1;
			.store:Storing p({'i'-2},2);
		#endif
	#elseif ('j' == 0)
		Global P{'i'-'j'}d'j' = tempcef;
		.store:Storing P({'i'-'j'},'j');
	#elseif ('j' == 1)
		L tofder = P({'i'-'j'},{'j'-1});
		#call splitder1
		Global P{'i'-'j'}d'j' = tempcef + 2*i_/({'i'-'j'})*res1;
		.store:Storing P({'i'-'j'},'j');
	#else
		L tofder = P({'i'-'j'},{'j'-1});
		L tosder = P({'i'-'j'},{'j'-2});
		#call splitder1
		#call splitder2
		Global P{'i'-'j'}d'j' = tempcef + 2*i_/({'i'-'j'})*res1 + 1/{('i'-'j')^2}*res2;
		.store:Storing P({'i'-'j'},'j');
	#endif
#enddo

#do i=-1,{'MAX'-1}
	#do j=-1,{'i'+2}
		L tempssepx{'i'+2}d{'j'+1} = ssepx{'i'+2}d{'j'+1};
	#enddo
#enddo
.sort:ssepx to active;

#do j=0,{'i'}
	#if ('i' == 'j')
		#if ('i' > 1)
			fill p({'i'-2},2) = p{'i'-2}d2;
			fill p({'i'-2},3) = p{'i'-2}d3;
		#endif
	#else
		fill P({'i'-'j'},'j') = P{'i'-'j'}d'j';
	#endif
	.global:Filled P({'i'-'j'},'j');
	.sort:Inserting P({'i'-'j'},'j');
#enddo

#call reloadssepx('i')


#endprocedure
