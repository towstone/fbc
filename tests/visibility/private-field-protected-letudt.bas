' TEST_MODE : COMPILE_ONLY_FAIL

type Parent
	private:
	as integer i
end type

type Child extends Parent
	declare sub test( )
end type

sub Child.test( )
	dim as integer n
	dim as Parent x
	let( n ) = x
end sub
