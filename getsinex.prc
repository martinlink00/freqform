#procedure getsinex(i,j)

#if ('i' == -1)
	Global sepsx{'i'+2}d{'j'+1} = 0;
#else
	Global sepsx{'i'+2}d{'j'+1} = sine{'i'};
	id z^c1?number_ = x(c1);
	id x('j') = 1;
	id x(c1?number_) = 0;
#endif
.store
#endprocedure