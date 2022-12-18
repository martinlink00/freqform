#procedure deriv


	Argument der;
		id y^a? = x(a);
		id x(0) = 1;
	EndArgument;

	SplitArg,der;
	repeat id der(a1?,c1?,c2?,?a) = der(a1,c1)+der(a1,c2,?a);


	FactArg,der;
	id der(a1?,?a,c1?number_,?b) = c1*der(a1,?a,?b);
	id der(a1?,?a,r,?b) = r*der(a1,?a,?b);
	id der(a1?,?a,i_,?b) = i_*der(a1,?a,?b);

	#do i=1,1
		id der(2,c1?,c2?,?a) = 2*der(1,c1)*der(1,c2,?a) + der(2,c1)*c2*pro(?a) + c1*der(2,c2,?a);
		id der(1,c1?,c2?,?a) = c1*der(1,c2,?a)+der(1,c1)*c2*pro(?a);
		id der(a?number_) = 0;
		id pro(c1?) = c1;
		repeat id pro(c1?,c2?,?a) = c1*c2*pro(?a);
		id pro = 1;
		id der(1,x(a?number_)) = i_*p(0,1)*a*y^a;
		id der(2,x(a?number_)) = -a^2*p(0,1)^2*y^a + i_*a*y^a*p(0,2);
		id x(a?number_) = y^a;
		id der(a?number_,p(a1?number_,a2?number_)) = p(a1,a2+a);
		if ( match(der(a1?number_,c1?,c2?,?a)) > 0 ) redefine i "0";
		.sort
	#enddo;

	id der(a?number_) = 0;
	id der(1,x(a?number_)) = i_*p(0,1)*a*y^a;
	id der(2,x(a?number_)) = -a^2*p(0,1)^2*y^a + i_*a*y^a*p(0,2);
	id x(a?number_) = y^a;
	id der(a?number_,p(a1?number_,a2?number_)) = p(a1,a2+a);


#endprocedure