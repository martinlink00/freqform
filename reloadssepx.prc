#procedure reloadssepx(l)


#do i=1,'l'
	#if ('i' > 0)
		#do j=0,{'i'}
			#if ('i' == 'j')
				#if ('i' > 1)
					L tempp{'i'-2}d2 = p{'i'-2}d2;
					L tempp{'i'-2}d3 = p{'i'-2}d3;
				#endif
			#else
				L tempP{'i'-'j'}d'j' = P{'i'-'j'}d'j';
			#endif
		#enddo
	#endif
#enddo

.sort:Saving at 'l';
delete storage;

#do i=-1,{'MAX'-1}
	#do j=-1,{'i'+2}
		Global ssepx{'i'+2}d{'j'+1} = tempssepx{'i'+2}d{'j'+1};
	#enddo
#enddo

#do i=1,'l'
	#if ('i' > 0)
		#do j=0,{'i'}
			#if ('i' == 'j')
				#if ('i' > 1)
					Global p{'i'-2}d2 = tempp{'i'-2}d2;
					Global p{'i'-2}d3 = tempp{'i'-2}d3;
				#endif
			#else
				Global P{'i'-'j'}d'j' = tempP{'i'-'j'}d'j';
			#endif
		#enddo
	#endif
#enddo
.store:Storing at 'l';


#endprocedure