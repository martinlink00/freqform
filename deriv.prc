#procedure deriv

	Argument der;
		id y^a? = x(a);
		id x(0) = 1;
	EndArgument;


	FactArg,der;
	repeat id,once der(a1?,?a,c1?number_,?b) = c1*der(a1,?a,?b);
	repeat id,once der(a1?,?a,r,?b) = r*der(a1,?a,?b);
	repeat id,once der(a1?,?a,i_,?b) = i_*der(a1,?a,?b);
	repeat id,once der(2,c1?,c2?,?a) = 2*der(1,c1)*der(1,c2,?a) + der(2,c1)*c2*pro(?a) + c1*der(2,c2,?a);
	repeat	id der(1,c1?,c2?,?a) = c1*der(1,c2,?a)+der(1,c1)*c2*pro(?a);
	id der(a?number_) = 0;
	id der = 0;
	repeat id,once pro(c1?,c2?,?a) = c1*c2*pro(?a);
	repeat id pro = 1;
	repeat id pro(c1?) = c1;

	id der(a?number_,p(a1?number_,a2?number_)) = p(a1,a2+a);
	id der(1,x(a?number_)) = i_*p(0,1)*a*y^a;
	id der(2,x(a?number_)) = -a^2*p(0,1)^2*y^a + 1/8*y^(a-2)*r^2*a - 1/2*(y)^(a-1)*a + 1/2*y^(a+1)*a - 1/8*y^(a+2)*r^2*a;
	id x(a?number_) = y^a;
	
	.sort:Der Exec;
	

#endprocedure
