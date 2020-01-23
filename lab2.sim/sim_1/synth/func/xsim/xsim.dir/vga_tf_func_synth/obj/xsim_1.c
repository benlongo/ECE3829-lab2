/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_367(char*, char *);
extern void execute_368(char*, char *);
extern void execute_600(char*, char *);
extern void execute_601(char*, char *);
extern void execute_602(char*, char *);
extern void execute_603(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_4(char*, char *);
extern void execute_373(char*, char *);
extern void execute_374(char*, char *);
extern void execute_375(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_12(char*, char *);
extern void execute_378(char*, char *);
extern void execute_379(char*, char *);
extern void execute_377(char*, char *);
extern void execute_15(char*, char *);
extern void execute_381(char*, char *);
extern void execute_382(char*, char *);
extern void execute_383(char*, char *);
extern void execute_384(char*, char *);
extern void execute_380(char*, char *);
extern void execute_18(char*, char *);
extern void execute_386(char*, char *);
extern void execute_387(char*, char *);
extern void execute_388(char*, char *);
extern void execute_389(char*, char *);
extern void execute_390(char*, char *);
extern void execute_391(char*, char *);
extern void execute_392(char*, char *);
extern void execute_393(char*, char *);
extern void execute_385(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_30(char*, char *);
extern void execute_31(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_404(char*, char *);
extern void execute_405(char*, char *);
extern void execute_406(char*, char *);
extern void execute_439(char*, char *);
extern void execute_116(char*, char *);
extern void execute_440(char*, char *);
extern void execute_370(char*, char *);
extern void execute_371(char*, char *);
extern void execute_372(char*, char *);
extern void execute_604(char*, char *);
extern void execute_605(char*, char *);
extern void execute_606(char*, char *);
extern void execute_607(char*, char *);
extern void execute_608(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_160(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_164(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_168(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_176(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_180(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_184(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_188(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_192(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_196(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_335(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_339(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_343(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_347(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_351(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_355(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_359(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_363(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_367(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_371(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[76] = {(funcp)execute_367, (funcp)execute_368, (funcp)execute_600, (funcp)execute_601, (funcp)execute_602, (funcp)execute_603, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_4, (funcp)execute_373, (funcp)execute_374, (funcp)execute_375, (funcp)execute_8, (funcp)execute_9, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_12, (funcp)execute_378, (funcp)execute_379, (funcp)execute_377, (funcp)execute_15, (funcp)execute_381, (funcp)execute_382, (funcp)execute_383, (funcp)execute_384, (funcp)execute_380, (funcp)execute_18, (funcp)execute_386, (funcp)execute_387, (funcp)execute_388, (funcp)execute_389, (funcp)execute_390, (funcp)execute_391, (funcp)execute_392, (funcp)execute_393, (funcp)execute_385, (funcp)execute_21, (funcp)execute_22, (funcp)execute_30, (funcp)execute_31, (funcp)execute_64, (funcp)execute_65, (funcp)execute_66, (funcp)execute_404, (funcp)execute_405, (funcp)execute_406, (funcp)execute_439, (funcp)execute_116, (funcp)execute_440, (funcp)execute_370, (funcp)execute_371, (funcp)execute_372, (funcp)execute_604, (funcp)execute_605, (funcp)execute_606, (funcp)execute_607, (funcp)execute_608, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_160, (funcp)transaction_164, (funcp)transaction_168, (funcp)transaction_172, (funcp)transaction_176, (funcp)transaction_180, (funcp)transaction_184, (funcp)transaction_188, (funcp)transaction_192, (funcp)transaction_196, (funcp)transaction_335, (funcp)transaction_339, (funcp)transaction_343, (funcp)transaction_347, (funcp)transaction_351, (funcp)transaction_355, (funcp)transaction_359, (funcp)transaction_363, (funcp)transaction_367, (funcp)transaction_371};
const int NumRelocateId= 76;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/vga_tf_func_synth/xsim.reloc",  (void **)funcTab, 76);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/vga_tf_func_synth/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/vga_tf_func_synth/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

	iki_vlog_add_strength_resolution_functions_time_0(*(char**)(dp + 2016), dp + 2120, dp + 2176, 4294967295, 0, 0, 0, 0, dp + 1968);

	iki_vlog_add_strength_resolution_functions_time_0(*(char**)(dp + 2240), dp + 2344, dp + 2400, 4294967295, 0, 0, 0, 0, dp + 2192);

	iki_vlog_add_strength_resolution_functions_time_0(*(char**)(dp + 2464), dp + 2568, dp + 2624, 4294967295, 0, 0, 0, 0, dp + 2416);

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstantiate();

extern void implicit_HDL_SCcleanup();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/vga_tf_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/vga_tf_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/vga_tf_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
