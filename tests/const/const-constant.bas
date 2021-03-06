#include "fbcu.bi"

namespace fbc_tests.const_.const_constant

const N_ULL  as       ulongint = &hAABBCCDDAAAABBBBull
const N_CULL as const ulongint = &hAABBCCDDAAAABBBBull

const N_F    as       single   = 1.5
const N_CF   as const single   = 1.5

const N_D    as       double   = 1.5
const N_CD   as const double   = 1.5

sub test cdecl( )
	CU_ASSERT( N_ULL  = &hAABBCCDDAAAABBBBull )
	CU_ASSERT( N_CULL = &hAABBCCDDAAAABBBBull )

	CU_ASSERT( N_F  = 1.5 )
	CU_ASSERT( N_CF = 1.5 )

	CU_ASSERT( N_D  = 1.5 )
	CU_ASSERT( N_CD = 1.5 )
end sub

private sub ctor( ) constructor
	fbcu.add_suite( "fbc_tests.const.const-constant" )
	fbcu.add_test( "test", @test )
end sub

end namespace
