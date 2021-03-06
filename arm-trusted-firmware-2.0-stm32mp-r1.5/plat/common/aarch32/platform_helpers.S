/*
 * Copyright (c) 2016-2018, ARM Limited and Contributors. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <arch.h>
#include <asm_macros.S>

	.weak	plat_report_exception
#if AARCH32_EXCEPTION_DEBUG
	.weak	plat_report_undef_inst
	.weak	plat_report_prefetch_abort
	.weak	plat_report_data_abort
#endif
#if !ERROR_DEPRECATED
	.weak	plat_crash_console_init
	.weak	plat_crash_console_putc
	.weak	plat_crash_console_flush
#endif
	.weak	plat_reset_handler
	.weak	plat_disable_acp
	.weak	bl1_plat_prepare_exit
	.weak	platform_mem_init
	.weak	plat_panic_handler

	/* -----------------------------------------------------
	 * Placeholder function which should be redefined by
	 * each platform.
	 * -----------------------------------------------------
	 */
func plat_report_exception
	bx	lr
endfunc plat_report_exception

#if AARCH32_EXCEPTION_DEBUG
	/* -----------------------------------------------------
	 * Placeholder function which should be redefined by
	 * each platform.
	 * -----------------------------------------------------
	 */
func plat_report_undef_inst
	bx	lr
endfunc plat_report_undef_inst

	/* -----------------------------------------------------
	 * Placeholder function which should be redefined by
	 * each platform.
	 * -----------------------------------------------------
	 */
func plat_report_prefetch_abort
	bx	lr
endfunc plat_report_prefetch_abort

	/* -----------------------------------------------------
	 * Placeholder function which should be redefined by
	 * each platform.
	 * -----------------------------------------------------
	 */
func plat_report_data_abort
	bx	lr
endfunc plat_report_data_abort
#endif

#if !ERROR_DEPRECATED
	/* -----------------------------------------------------
	 * Placeholder function which should be redefined by
	 * each platform.
	 * -----------------------------------------------------
	 */
func plat_crash_console_init
	mov	r0, #0
	bx	lr
endfunc plat_crash_console_init

	/* -----------------------------------------------------
	 * Placeholder function which should be redefined by
	 * each platform.
	 * -----------------------------------------------------
	 */
func plat_crash_console_putc
	bx	lr
endfunc plat_crash_console_putc

	/* -----------------------------------------------------
	 * Placeholder function which should be redefined by
	 * each platform.
	 * -----------------------------------------------------
	 */
func plat_crash_console_flush
	mov	r0, #0
	bx	lr
endfunc plat_crash_console_flush
#endif

	/* -----------------------------------------------------
	 * Placeholder function which should be redefined by
	 * each platform.
	 * -----------------------------------------------------
	 */
func plat_reset_handler
	bx	lr
endfunc plat_reset_handler

	/* -----------------------------------------------------
	 * Placeholder function which should be redefined by
	 * each platform.
	 * -----------------------------------------------------
	 */
func plat_disable_acp
	bx	lr
endfunc plat_disable_acp

	/* ---------------------------------------------------------------------
	 * Placeholder function which should be redefined by
	 * each platform.
	 * ---------------------------------------------------------------------
	 */
func platform_mem_init
	bx	lr
endfunc platform_mem_init

	/* -----------------------------------------------------
	 * void bl1_plat_prepare_exit(entry_point_info_t *ep_info);
	 * Called before exiting BL1. Default: do nothing
	 * -----------------------------------------------------
	 */
func bl1_plat_prepare_exit
	bx	lr
endfunc bl1_plat_prepare_exit

	/* -----------------------------------------------------
	 * void plat_panic_handler(void) __dead2;
	 * Endless loop by default.
	 * -----------------------------------------------------
	 */
func plat_panic_handler
	b	plat_panic_handler
endfunc plat_panic_handler
