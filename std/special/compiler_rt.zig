const builtin = @import("builtin");
const is_test = builtin.is_test;

comptime {
    const linkage = if (is_test) builtin.GlobalLinkage.Internal else builtin.GlobalLinkage.Weak;
    const strong_linkage = if (is_test) builtin.GlobalLinkage.Internal else builtin.GlobalLinkage.Strong;

    @export("__lesf2", @import("compiler_rt/comparesf2.zig").__lesf2, linkage);
    @export("__letf2", @import("compiler_rt/comparetf2.zig").__letf2, linkage);

    @export("__gesf2", @import("compiler_rt/comparesf2.zig").__gesf2, linkage);
    @export("__getf2", @import("compiler_rt/comparetf2.zig").__getf2, linkage);

    if (!is_test) {
        // only create these aliases when not testing
        @export("__cmpsf2", @import("compiler_rt/comparesf2.zig").__lesf2, linkage);
        @export("__cmptf2", @import("compiler_rt/comparetf2.zig").__letf2, linkage);

        @export("__eqsf2", @import("compiler_rt/comparesf2.zig").__eqsf2, linkage);
        @export("__eqtf2", @import("compiler_rt/comparetf2.zig").__letf2, linkage);

        @export("__ltsf2", @import("compiler_rt/comparesf2.zig").__ltsf2, linkage);
        @export("__lttf2", @import("compiler_rt/comparetf2.zig").__letf2, linkage);

        @export("__nesf2", @import("compiler_rt/comparesf2.zig").__nesf2, linkage);
        @export("__netf2", @import("compiler_rt/comparetf2.zig").__letf2, linkage);

        @export("__gtsf2", @import("compiler_rt/comparesf2.zig").__gtsf2, linkage);
        @export("__gttf2", @import("compiler_rt/comparetf2.zig").__getf2, linkage);

        @export("__gnu_h2f_ieee", @import("compiler_rt/extendXfYf2.zig").__extendhfsf2, linkage);
        @export("__gnu_f2h_ieee", @import("compiler_rt/truncXfYf2.zig").__truncsfhf2, linkage);
    }

    @export("__unordsf2", @import("compiler_rt/comparesf2.zig").__unordsf2, linkage);
    @export("__unordtf2", @import("compiler_rt/comparetf2.zig").__unordtf2, linkage);

    @export("__addsf3", @import("compiler_rt/addXf3.zig").__addsf3, linkage);
    @export("__adddf3", @import("compiler_rt/addXf3.zig").__adddf3, linkage);
    @export("__addtf3", @import("compiler_rt/addXf3.zig").__addtf3, linkage);
    @export("__subsf3", @import("compiler_rt/addXf3.zig").__subsf3, linkage);
    @export("__subdf3", @import("compiler_rt/addXf3.zig").__subdf3, linkage);
    @export("__subtf3", @import("compiler_rt/addXf3.zig").__subtf3, linkage);

    @export("__mulsf3", @import("compiler_rt/mulXf3.zig").__mulsf3, linkage);
    @export("__muldf3", @import("compiler_rt/mulXf3.zig").__muldf3, linkage);
    @export("__multf3", @import("compiler_rt/mulXf3.zig").__multf3, linkage);

    @export("__divsf3", @import("compiler_rt/divsf3.zig").__divsf3, linkage);
    @export("__divdf3", @import("compiler_rt/divdf3.zig").__divdf3, linkage);

    @export("__floattitf", @import("compiler_rt/floattitf.zig").__floattitf, linkage);
    @export("__floattidf", @import("compiler_rt/floattidf.zig").__floattidf, linkage);
    @export("__floattisf", @import("compiler_rt/floattisf.zig").__floattisf, linkage);

    @export("__floatunditf", @import("compiler_rt/floatunditf.zig").__floatunditf, linkage);
    @export("__floatunsitf", @import("compiler_rt/floatunsitf.zig").__floatunsitf, linkage);

    @export("__floatuntitf", @import("compiler_rt/floatuntitf.zig").__floatuntitf, linkage);
    @export("__floatuntidf", @import("compiler_rt/floatuntidf.zig").__floatuntidf, linkage);
    @export("__floatuntisf", @import("compiler_rt/floatuntisf.zig").__floatuntisf, linkage);

    @export("__extenddftf2", @import("compiler_rt/extendXfYf2.zig").__extenddftf2, linkage);
    @export("__extendsftf2", @import("compiler_rt/extendXfYf2.zig").__extendsftf2, linkage);
    @export("__extendhfsf2", @import("compiler_rt/extendXfYf2.zig").__extendhfsf2, linkage);

    @export("__truncsfhf2", @import("compiler_rt/truncXfYf2.zig").__truncsfhf2, linkage);
    @export("__truncdfhf2", @import("compiler_rt/truncXfYf2.zig").__truncdfhf2, linkage);
    @export("__trunctfdf2", @import("compiler_rt/truncXfYf2.zig").__trunctfdf2, linkage);
    @export("__trunctfsf2", @import("compiler_rt/truncXfYf2.zig").__trunctfsf2, linkage);

    @export("__fixunssfsi", @import("compiler_rt/fixunssfsi.zig").__fixunssfsi, linkage);
    @export("__fixunssfdi", @import("compiler_rt/fixunssfdi.zig").__fixunssfdi, linkage);
    @export("__fixunssfti", @import("compiler_rt/fixunssfti.zig").__fixunssfti, linkage);

    @export("__fixunsdfsi", @import("compiler_rt/fixunsdfsi.zig").__fixunsdfsi, linkage);
    @export("__fixunsdfdi", @import("compiler_rt/fixunsdfdi.zig").__fixunsdfdi, linkage);
    @export("__fixunsdfti", @import("compiler_rt/fixunsdfti.zig").__fixunsdfti, linkage);

    @export("__fixunstfsi", @import("compiler_rt/fixunstfsi.zig").__fixunstfsi, linkage);
    @export("__fixunstfdi", @import("compiler_rt/fixunstfdi.zig").__fixunstfdi, linkage);
    @export("__fixunstfti", @import("compiler_rt/fixunstfti.zig").__fixunstfti, linkage);

    @export("__fixdfdi", @import("compiler_rt/fixdfdi.zig").__fixdfdi, linkage);
    @export("__fixdfsi", @import("compiler_rt/fixdfsi.zig").__fixdfsi, linkage);
    @export("__fixdfti", @import("compiler_rt/fixdfti.zig").__fixdfti, linkage);
    @export("__fixsfdi", @import("compiler_rt/fixsfdi.zig").__fixsfdi, linkage);
    @export("__fixsfsi", @import("compiler_rt/fixsfsi.zig").__fixsfsi, linkage);
    @export("__fixsfti", @import("compiler_rt/fixsfti.zig").__fixsfti, linkage);
    @export("__fixtfdi", @import("compiler_rt/fixtfdi.zig").__fixtfdi, linkage);
    @export("__fixtfsi", @import("compiler_rt/fixtfsi.zig").__fixtfsi, linkage);
    @export("__fixtfti", @import("compiler_rt/fixtfti.zig").__fixtfti, linkage);

    @export("__udivmoddi4", @import("compiler_rt/udivmoddi4.zig").__udivmoddi4, linkage);
    @export("__popcountdi2", @import("compiler_rt/popcountdi2.zig").__popcountdi2, linkage);

    @export("__udivsi3", __udivsi3, linkage);
    @export("__udivdi3", __udivdi3, linkage);
    @export("__umoddi3", __umoddi3, linkage);
    @export("__udivmodsi4", __udivmodsi4, linkage);

    @export("__negsf2", @import("compiler_rt/negXf2.zig").__negsf2, linkage);
    @export("__negdf2", @import("compiler_rt/negXf2.zig").__negdf2, linkage);

    if (is_arm_arch and !is_arm_64) {
        @export("__aeabi_uldivmod", __aeabi_uldivmod, linkage);
        @export("__aeabi_uidivmod", __aeabi_uidivmod, linkage);
        @export("__aeabi_uidiv", __udivsi3, linkage);

        @export("__aeabi_memcpy", __aeabi_memcpy, linkage);
        @export("__aeabi_memcpy4", __aeabi_memcpy, linkage);
        @export("__aeabi_memcpy8", __aeabi_memcpy, linkage);

        @export("__aeabi_memmove", __aeabi_memmove, linkage);
        @export("__aeabi_memmove4", __aeabi_memmove, linkage);
        @export("__aeabi_memmove8", __aeabi_memmove, linkage);

        @export("__aeabi_memset", __aeabi_memset, linkage);
        @export("__aeabi_memset4", __aeabi_memset, linkage);
        @export("__aeabi_memset8", __aeabi_memset, linkage);

        @export("__aeabi_memclr", __aeabi_memclr, linkage);
        @export("__aeabi_memclr4", __aeabi_memclr, linkage);
        @export("__aeabi_memclr8", __aeabi_memclr, linkage);

        @export("__aeabi_memcmp", __aeabi_memcmp, linkage);
        @export("__aeabi_memcmp4", __aeabi_memcmp, linkage);
        @export("__aeabi_memcmp8", __aeabi_memcmp, linkage);

        @export("__aeabi_fneg", @import("compiler_rt/negXf2.zig").__negsf2, linkage);
        @export("__aeabi_dneg", @import("compiler_rt/negXf2.zig").__negdf2, linkage);

        @export("__aeabi_fmul", @import("compiler_rt/mulXf3.zig").__mulsf3, linkage);
        @export("__aeabi_dmul", @import("compiler_rt/mulXf3.zig").__muldf3, linkage);

        @export("__aeabi_d2h", @import("compiler_rt/truncXfYf2.zig").__truncdfhf2, linkage);

        @export("__aeabi_f2ulz", @import("compiler_rt/fixunssfdi.zig").__fixunssfdi, linkage);
        @export("__aeabi_d2ulz", @import("compiler_rt/fixunsdfdi.zig").__fixunsdfdi, linkage);

        @export("__aeabi_f2lz", @import("compiler_rt/fixsfdi.zig").__fixsfdi, linkage);
        @export("__aeabi_d2lz", @import("compiler_rt/fixdfdi.zig").__fixdfdi, linkage);

        @export("__aeabi_d2uiz", @import("compiler_rt/fixunsdfsi.zig").__fixunsdfsi, linkage);

        @export("__aeabi_h2f", @import("compiler_rt/extendXfYf2.zig").__extendhfsf2, linkage);
        @export("__aeabi_f2h", @import("compiler_rt/truncXfYf2.zig").__truncsfhf2, linkage);

        @export("__aeabi_fadd", @import("compiler_rt/addXf3.zig").__addsf3, linkage);
        @export("__aeabi_dadd", @import("compiler_rt/addXf3.zig").__adddf3, linkage);
        @export("__aeabi_fsub", @import("compiler_rt/addXf3.zig").__subsf3, linkage);
        @export("__aeabi_dsub", @import("compiler_rt/addXf3.zig").__subdf3, linkage);

        @export("__aeabi_f2uiz", @import("compiler_rt/fixunssfsi.zig").__fixunssfsi, linkage);

        @export("__aeabi_f2iz", @import("compiler_rt/fixsfsi.zig").__fixsfsi, linkage);
        @export("__aeabi_d2iz", @import("compiler_rt/fixdfsi.zig").__fixdfsi, linkage);

        @export("__aeabi_fdiv", @import("compiler_rt/divsf3.zig").__divsf3, linkage);
        @export("__aeabi_ddiv", @import("compiler_rt/divdf3.zig").__divdf3, linkage);

        @export("__aeabi_fcmpeq", @import("compiler_rt/arm/aeabi_fcmp.zig").__aeabi_fcmpeq, linkage);
        @export("__aeabi_fcmplt", @import("compiler_rt/arm/aeabi_fcmp.zig").__aeabi_fcmplt, linkage);
        @export("__aeabi_fcmple", @import("compiler_rt/arm/aeabi_fcmp.zig").__aeabi_fcmple, linkage);
        @export("__aeabi_fcmpge", @import("compiler_rt/arm/aeabi_fcmp.zig").__aeabi_fcmpge, linkage);
        @export("__aeabi_fcmpgt", @import("compiler_rt/arm/aeabi_fcmp.zig").__aeabi_fcmpgt, linkage);
        @export("__aeabi_fcmpun", @import("compiler_rt/comparesf2.zig").__unordsf2, linkage);
    }
    if (builtin.os == builtin.Os.windows) {
        switch (builtin.arch) {
            builtin.Arch.i386 => {
                if (!builtin.link_libc) {
                    @export("_chkstk", _chkstk, strong_linkage);
                    @export("__chkstk_ms", __chkstk_ms, linkage);
                }
                @export("_aulldiv", @import("compiler_rt/aulldiv.zig")._aulldiv, strong_linkage);
                @export("_aullrem", @import("compiler_rt/aullrem.zig")._aullrem, strong_linkage);
            },
            builtin.Arch.x86_64 => {
                if (!builtin.link_libc) {
                    @export("__chkstk", __chkstk, strong_linkage);
                    @export("___chkstk_ms", ___chkstk_ms, linkage);
                }
                // The "ti" functions must use @Vector(2, u64) parameter types to adhere to the ABI
                // that LLVM expects compiler-rt to have.
                @export("__divti3", @import("compiler_rt/divti3.zig").__divti3_windows_x86_64, linkage);
                @export("__modti3", @import("compiler_rt/modti3.zig").__modti3_windows_x86_64, linkage);
                @export("__multi3", @import("compiler_rt/multi3.zig").__multi3_windows_x86_64, linkage);
                @export("__udivti3", @import("compiler_rt/udivti3.zig").__udivti3_windows_x86_64, linkage);
                @export("__udivmodti4", @import("compiler_rt/udivmodti4.zig").__udivmodti4_windows_x86_64, linkage);
                @export("__umodti3", @import("compiler_rt/umodti3.zig").__umodti3_windows_x86_64, linkage);
            },
            else => {},
        }
    } else {
        @export("__divti3", @import("compiler_rt/divti3.zig").__divti3, linkage);
        @export("__modti3", @import("compiler_rt/modti3.zig").__modti3, linkage);
        @export("__multi3", @import("compiler_rt/multi3.zig").__multi3, linkage);
        @export("__udivti3", @import("compiler_rt/udivti3.zig").__udivti3, linkage);
        @export("__udivmodti4", @import("compiler_rt/udivmodti4.zig").__udivmodti4, linkage);
        @export("__umodti3", @import("compiler_rt/umodti3.zig").__umodti3, linkage);
    }
    @export("__muloti4", @import("compiler_rt/muloti4.zig").__muloti4, linkage);
}

const std = @import("std");
const assert = std.debug.assert;
const testing = std.testing;

const __udivmoddi4 = @import("compiler_rt/udivmoddi4.zig").__udivmoddi4;

// Avoid dragging in the runtime safety mechanisms into this .o file,
// unless we're trying to test this file.
pub fn panic(msg: []const u8, error_return_trace: ?*builtin.StackTrace) noreturn {
    @setCold(true);
    if (is_test) {
        std.debug.panic("{}", msg);
    } else {
        unreachable;
    }
}

extern fn __udivdi3(a: u64, b: u64) u64 {
    @setRuntimeSafety(is_test);
    return __udivmoddi4(a, b, null);
}

extern fn __umoddi3(a: u64, b: u64) u64 {
    @setRuntimeSafety(is_test);

    var r: u64 = undefined;
    _ = __udivmoddi4(a, b, &r);
    return r;
}

const AeabiUlDivModResult = extern struct {
    quot: u64,
    rem: u64,
};
extern fn __aeabi_uldivmod(numerator: u64, denominator: u64) AeabiUlDivModResult {
    @setRuntimeSafety(is_test);
    var result: AeabiUlDivModResult = undefined;
    result.quot = __udivmoddi4(numerator, denominator, &result.rem);
    return result;
}

const is_arm_64 = switch (builtin.arch) {
    builtin.Arch.aarch64,
    builtin.Arch.aarch64_be,
    => true,
    else => false,
};

const is_arm_arch = switch (builtin.arch) {
    builtin.Arch.arm,
    builtin.Arch.armeb,
    builtin.Arch.aarch64,
    builtin.Arch.aarch64_be,
    builtin.Arch.thumb,
    builtin.Arch.thumbeb,
    => true,
    else => false,
};

const is_arm_32 = is_arm_arch and !is_arm_64;

const use_thumb_1 = usesThumb1(builtin.arch);

fn usesThumb1(arch: builtin.Arch) bool {
    return switch (arch) {
        .arm => switch (arch.arm) {
            .v6m => true,
            else => false,
        },
        .armeb => switch (arch.armeb) {
            .v6m => true,
            else => false,
        },
        .thumb => switch (arch.thumb) {
            .v5,
            .v5te,
            .v4t,
            .v6,
            .v6m,
            .v6k,
            => true,
            else => false,
        },
        .thumbeb => switch (arch.thumbeb) {
            .v5,
            .v5te,
            .v4t,
            .v6,
            .v6m,
            .v6k,
            => true,
            else => false,
        },
        else => false,
    };
}

test "usesThumb1" {
    testing.expect(usesThumb1(builtin.Arch{ .arm = .v6m }));
    testing.expect(!usesThumb1(builtin.Arch{ .arm = .v5 }));
    //etc.

    testing.expect(usesThumb1(builtin.Arch{ .armeb = .v6m }));
    testing.expect(!usesThumb1(builtin.Arch{ .armeb = .v5 }));
    //etc.

    testing.expect(usesThumb1(builtin.Arch{ .thumb = .v5 }));
    testing.expect(usesThumb1(builtin.Arch{ .thumb = .v5te }));
    testing.expect(usesThumb1(builtin.Arch{ .thumb = .v4t }));
    testing.expect(usesThumb1(builtin.Arch{ .thumb = .v6 }));
    testing.expect(usesThumb1(builtin.Arch{ .thumb = .v6k }));
    testing.expect(usesThumb1(builtin.Arch{ .thumb = .v6m }));
    testing.expect(!usesThumb1(builtin.Arch{ .thumb = .v6t2 }));
    //etc.

    testing.expect(usesThumb1(builtin.Arch{ .thumbeb = .v5 }));
    testing.expect(usesThumb1(builtin.Arch{ .thumbeb = .v5te }));
    testing.expect(usesThumb1(builtin.Arch{ .thumbeb = .v4t }));
    testing.expect(usesThumb1(builtin.Arch{ .thumbeb = .v6 }));
    testing.expect(usesThumb1(builtin.Arch{ .thumbeb = .v6k }));
    testing.expect(usesThumb1(builtin.Arch{ .thumbeb = .v6m }));
    testing.expect(!usesThumb1(builtin.Arch{ .thumbeb = .v6t2 }));
    //etc.

    testing.expect(!usesThumb1(builtin.Arch{ .aarch64 = .v8 }));
    testing.expect(!usesThumb1(builtin.Arch{ .aarch64_be = .v8 }));
    testing.expect(!usesThumb1(builtin.Arch.x86_64));
    testing.expect(!usesThumb1(builtin.Arch.riscv32));
    //etc.
}

nakedcc fn __aeabi_uidivmod() void {
    @setRuntimeSafety(false);
    asm volatile (
        \\ push    { lr }
        \\ sub     sp, sp, #4
        \\ mov     r2, sp
        \\ bl      __udivmodsi4
        \\ ldr     r1, [sp]
        \\ add     sp, sp, #4
        \\ pop     { pc }
            :
        :
        : "r2", "r1"
    );
}

nakedcc fn __aeabi_memcpy() noreturn {
    @setRuntimeSafety(false);
    if (use_thumb_1) {
        asm volatile (
            \\ push    {r7, lr}
            \\ bl      memcpy
            \\ pop     {r7, pc}
        );
    } else {
        asm volatile (
            \\ b       memcpy
        );
    }
    unreachable;
}

nakedcc fn __aeabi_memmove() noreturn {
    @setRuntimeSafety(false);
    if (use_thumb_1) {
        asm volatile (
            \\ push    {r7, lr}
            \\ bl      memmove
            \\ pop     {r7, pc}
        );
    } else {
        asm volatile (
            \\ b       memmove
        );
    }
    unreachable;
}

nakedcc fn __aeabi_memset() noreturn {
    @setRuntimeSafety(false);
    if (use_thumb_1) {
        asm volatile (
            \\ mov     r3, r1
            \\ mov     r1, r2
            \\ mov     r2, r3
            \\ push    {r7, lr}
            \\ b       memset
            \\ pop     {r7, pc}
        );
    } else {
        asm volatile (
            \\ mov     r3, r1
            \\ mov     r1, r2
            \\ mov     r2, r3
            \\ b       memset
        );
    }
    unreachable;
}

nakedcc fn __aeabi_memclr() noreturn {
    @setRuntimeSafety(false);
    if (use_thumb_1) {
        asm volatile (
            \\ mov     r2, r1
            \\ movs    r1, #0
            \\ push    {r7, lr}
            \\ bl      memset
            \\ pop     {r7, pc}
        );
    } else {
        asm volatile (
            \\ mov     r2, r1
            \\ movs    r1, #0
            \\ b       memset
        );
    }
    unreachable;
}

nakedcc fn __aeabi_memcmp() noreturn {
    @setRuntimeSafety(false);
    if (use_thumb_1) {
        asm volatile (
            \\ push    {r7, lr}
            \\ bl      memcmp
            \\ pop     {r7, pc}
        );
    } else {
        asm volatile (
            \\ b       memcmp
        );
    }
    unreachable;
}

// _chkstk (_alloca) routine - probe stack between %esp and (%esp-%eax) in 4k increments,
// then decrement %esp by %eax.  Preserves all registers except %esp and flags.
// This routine is windows specific
// http://msdn.microsoft.com/en-us/library/ms648426.aspx
nakedcc fn _chkstk() align(4) void {
    @setRuntimeSafety(false);

    asm volatile (
        \\         push   %%ecx
        \\         push   %%eax
        \\         cmp    $0x1000,%%eax
        \\         lea    12(%%esp),%%ecx
        \\         jb     1f
        \\ 2:
        \\         sub    $0x1000,%%ecx
        \\         test   %%ecx,(%%ecx)
        \\         sub    $0x1000,%%eax
        \\         cmp    $0x1000,%%eax
        \\         ja     2b
        \\ 1:
        \\         sub    %%eax,%%ecx
        \\         test   %%ecx,(%%ecx)
        \\         pop    %%eax
        \\         pop    %%ecx
        \\         ret
    );
}

nakedcc fn __chkstk() align(4) void {
    @setRuntimeSafety(false);

    asm volatile (
        \\        push   %%rcx
        \\        push   %%rax
        \\        cmp    $0x1000,%%rax
        \\        lea    24(%%rsp),%%rcx
        \\        jb     1f
        \\2:
        \\        sub    $0x1000,%%rcx
        \\        test   %%rcx,(%%rcx)
        \\        sub    $0x1000,%%rax
        \\        cmp    $0x1000,%%rax
        \\        ja     2b
        \\1:
        \\        sub    %%rax,%%rcx
        \\        test   %%rcx,(%%rcx)
        \\        pop    %%rax
        \\        pop    %%rcx
        \\        ret
    );
}

// _chkstk routine
// This routine is windows specific
// http://msdn.microsoft.com/en-us/library/ms648426.aspx
nakedcc fn __chkstk_ms() align(4) void {
    @setRuntimeSafety(false);

    asm volatile (
        \\         push   %%ecx
        \\         push   %%eax
        \\         cmp    $0x1000,%%eax
        \\         lea    12(%%esp),%%ecx
        \\         jb     1f
        \\ 2:
        \\         sub    $0x1000,%%ecx
        \\         test   %%ecx,(%%ecx)
        \\         sub    $0x1000,%%eax
        \\         cmp    $0x1000,%%eax
        \\         ja     2b
        \\ 1:
        \\         sub    %%eax,%%ecx
        \\         test   %%ecx,(%%ecx)
        \\         pop    %%eax
        \\         pop    %%ecx
        \\         ret
    );
}

nakedcc fn ___chkstk_ms() align(4) void {
    @setRuntimeSafety(false);

    asm volatile (
        \\        push   %%rcx
        \\        push   %%rax
        \\        cmp    $0x1000,%%rax
        \\        lea    24(%%rsp),%%rcx
        \\        jb     1f
        \\2:
        \\        sub    $0x1000,%%rcx
        \\        test   %%rcx,(%%rcx)
        \\        sub    $0x1000,%%rax
        \\        cmp    $0x1000,%%rax
        \\        ja     2b
        \\1:
        \\        sub    %%rax,%%rcx
        \\        test   %%rcx,(%%rcx)
        \\        pop    %%rax
        \\        pop    %%rcx
        \\        ret
    );
}

extern fn __udivmodsi4(a: u32, b: u32, rem: *u32) u32 {
    @setRuntimeSafety(is_test);

    const d = __udivsi3(a, b);
    rem.* = @bitCast(u32, @bitCast(i32, a) -% (@bitCast(i32, d) * @bitCast(i32, b)));
    return d;
}

extern fn __udivsi3(n: u32, d: u32) u32 {
    @setRuntimeSafety(is_test);

    const n_uword_bits: c_uint = u32.bit_count;
    // special cases
    if (d == 0) return 0; // ?!
    if (n == 0) return 0;
    var sr = @bitCast(c_uint, c_int(@clz(d)) - c_int(@clz(n)));
    // 0 <= sr <= n_uword_bits - 1 or sr large
    if (sr > n_uword_bits - 1) {
        // d > r
        return 0;
    }
    if (sr == n_uword_bits - 1) {
        // d == 1
        return n;
    }
    sr += 1;
    // 1 <= sr <= n_uword_bits - 1
    // Not a special case
    var q: u32 = n << @intCast(u5, n_uword_bits - sr);
    var r: u32 = n >> @intCast(u5, sr);
    var carry: u32 = 0;
    while (sr > 0) : (sr -= 1) {
        // r:q = ((r:q)  << 1) | carry
        r = (r << 1) | (q >> @intCast(u5, n_uword_bits - 1));
        q = (q << 1) | carry;
        // carry = 0;
        // if (r.all >= d.all)
        // {
        //      r.all -= d.all;
        //      carry = 1;
        // }
        const s = @intCast(i32, d -% r -% 1) >> @intCast(u5, n_uword_bits - 1);
        carry = @intCast(u32, s & 1);
        r -= d & @bitCast(u32, s);
    }
    q = (q << 1) | carry;
    return q;
}

test "test_umoddi3" {
    test_one_umoddi3(0, 1, 0);
    test_one_umoddi3(2, 1, 0);
    test_one_umoddi3(0x8000000000000000, 1, 0x0);
    test_one_umoddi3(0x8000000000000000, 2, 0x0);
    test_one_umoddi3(0xFFFFFFFFFFFFFFFF, 2, 0x1);
}

fn test_one_umoddi3(a: u64, b: u64, expected_r: u64) void {
    const r = __umoddi3(a, b);
    testing.expect(r == expected_r);
}

test "test_udivsi3" {
    const cases = [][3]u32{
        []u32{
            0x00000000,
            0x00000001,
            0x00000000,
        },
        []u32{
            0x00000000,
            0x00000002,
            0x00000000,
        },
        []u32{
            0x00000000,
            0x00000003,
            0x00000000,
        },
        []u32{
            0x00000000,
            0x00000010,
            0x00000000,
        },
        []u32{
            0x00000000,
            0x078644FA,
            0x00000000,
        },
        []u32{
            0x00000000,
            0x0747AE14,
            0x00000000,
        },
        []u32{
            0x00000000,
            0x7FFFFFFF,
            0x00000000,
        },
        []u32{
            0x00000000,
            0x80000000,
            0x00000000,
        },
        []u32{
            0x00000000,
            0xFFFFFFFD,
            0x00000000,
        },
        []u32{
            0x00000000,
            0xFFFFFFFE,
            0x00000000,
        },
        []u32{
            0x00000000,
            0xFFFFFFFF,
            0x00000000,
        },
        []u32{
            0x00000001,
            0x00000001,
            0x00000001,
        },
        []u32{
            0x00000001,
            0x00000002,
            0x00000000,
        },
        []u32{
            0x00000001,
            0x00000003,
            0x00000000,
        },
        []u32{
            0x00000001,
            0x00000010,
            0x00000000,
        },
        []u32{
            0x00000001,
            0x078644FA,
            0x00000000,
        },
        []u32{
            0x00000001,
            0x0747AE14,
            0x00000000,
        },
        []u32{
            0x00000001,
            0x7FFFFFFF,
            0x00000000,
        },
        []u32{
            0x00000001,
            0x80000000,
            0x00000000,
        },
        []u32{
            0x00000001,
            0xFFFFFFFD,
            0x00000000,
        },
        []u32{
            0x00000001,
            0xFFFFFFFE,
            0x00000000,
        },
        []u32{
            0x00000001,
            0xFFFFFFFF,
            0x00000000,
        },
        []u32{
            0x00000002,
            0x00000001,
            0x00000002,
        },
        []u32{
            0x00000002,
            0x00000002,
            0x00000001,
        },
        []u32{
            0x00000002,
            0x00000003,
            0x00000000,
        },
        []u32{
            0x00000002,
            0x00000010,
            0x00000000,
        },
        []u32{
            0x00000002,
            0x078644FA,
            0x00000000,
        },
        []u32{
            0x00000002,
            0x0747AE14,
            0x00000000,
        },
        []u32{
            0x00000002,
            0x7FFFFFFF,
            0x00000000,
        },
        []u32{
            0x00000002,
            0x80000000,
            0x00000000,
        },
        []u32{
            0x00000002,
            0xFFFFFFFD,
            0x00000000,
        },
        []u32{
            0x00000002,
            0xFFFFFFFE,
            0x00000000,
        },
        []u32{
            0x00000002,
            0xFFFFFFFF,
            0x00000000,
        },
        []u32{
            0x00000003,
            0x00000001,
            0x00000003,
        },
        []u32{
            0x00000003,
            0x00000002,
            0x00000001,
        },
        []u32{
            0x00000003,
            0x00000003,
            0x00000001,
        },
        []u32{
            0x00000003,
            0x00000010,
            0x00000000,
        },
        []u32{
            0x00000003,
            0x078644FA,
            0x00000000,
        },
        []u32{
            0x00000003,
            0x0747AE14,
            0x00000000,
        },
        []u32{
            0x00000003,
            0x7FFFFFFF,
            0x00000000,
        },
        []u32{
            0x00000003,
            0x80000000,
            0x00000000,
        },
        []u32{
            0x00000003,
            0xFFFFFFFD,
            0x00000000,
        },
        []u32{
            0x00000003,
            0xFFFFFFFE,
            0x00000000,
        },
        []u32{
            0x00000003,
            0xFFFFFFFF,
            0x00000000,
        },
        []u32{
            0x00000010,
            0x00000001,
            0x00000010,
        },
        []u32{
            0x00000010,
            0x00000002,
            0x00000008,
        },
        []u32{
            0x00000010,
            0x00000003,
            0x00000005,
        },
        []u32{
            0x00000010,
            0x00000010,
            0x00000001,
        },
        []u32{
            0x00000010,
            0x078644FA,
            0x00000000,
        },
        []u32{
            0x00000010,
            0x0747AE14,
            0x00000000,
        },
        []u32{
            0x00000010,
            0x7FFFFFFF,
            0x00000000,
        },
        []u32{
            0x00000010,
            0x80000000,
            0x00000000,
        },
        []u32{
            0x00000010,
            0xFFFFFFFD,
            0x00000000,
        },
        []u32{
            0x00000010,
            0xFFFFFFFE,
            0x00000000,
        },
        []u32{
            0x00000010,
            0xFFFFFFFF,
            0x00000000,
        },
        []u32{
            0x078644FA,
            0x00000001,
            0x078644FA,
        },
        []u32{
            0x078644FA,
            0x00000002,
            0x03C3227D,
        },
        []u32{
            0x078644FA,
            0x00000003,
            0x028216FE,
        },
        []u32{
            0x078644FA,
            0x00000010,
            0x0078644F,
        },
        []u32{
            0x078644FA,
            0x078644FA,
            0x00000001,
        },
        []u32{
            0x078644FA,
            0x0747AE14,
            0x00000001,
        },
        []u32{
            0x078644FA,
            0x7FFFFFFF,
            0x00000000,
        },
        []u32{
            0x078644FA,
            0x80000000,
            0x00000000,
        },
        []u32{
            0x078644FA,
            0xFFFFFFFD,
            0x00000000,
        },
        []u32{
            0x078644FA,
            0xFFFFFFFE,
            0x00000000,
        },
        []u32{
            0x078644FA,
            0xFFFFFFFF,
            0x00000000,
        },
        []u32{
            0x0747AE14,
            0x00000001,
            0x0747AE14,
        },
        []u32{
            0x0747AE14,
            0x00000002,
            0x03A3D70A,
        },
        []u32{
            0x0747AE14,
            0x00000003,
            0x026D3A06,
        },
        []u32{
            0x0747AE14,
            0x00000010,
            0x00747AE1,
        },
        []u32{
            0x0747AE14,
            0x078644FA,
            0x00000000,
        },
        []u32{
            0x0747AE14,
            0x0747AE14,
            0x00000001,
        },
        []u32{
            0x0747AE14,
            0x7FFFFFFF,
            0x00000000,
        },
        []u32{
            0x0747AE14,
            0x80000000,
            0x00000000,
        },
        []u32{
            0x0747AE14,
            0xFFFFFFFD,
            0x00000000,
        },
        []u32{
            0x0747AE14,
            0xFFFFFFFE,
            0x00000000,
        },
        []u32{
            0x0747AE14,
            0xFFFFFFFF,
            0x00000000,
        },
        []u32{
            0x7FFFFFFF,
            0x00000001,
            0x7FFFFFFF,
        },
        []u32{
            0x7FFFFFFF,
            0x00000002,
            0x3FFFFFFF,
        },
        []u32{
            0x7FFFFFFF,
            0x00000003,
            0x2AAAAAAA,
        },
        []u32{
            0x7FFFFFFF,
            0x00000010,
            0x07FFFFFF,
        },
        []u32{
            0x7FFFFFFF,
            0x078644FA,
            0x00000011,
        },
        []u32{
            0x7FFFFFFF,
            0x0747AE14,
            0x00000011,
        },
        []u32{
            0x7FFFFFFF,
            0x7FFFFFFF,
            0x00000001,
        },
        []u32{
            0x7FFFFFFF,
            0x80000000,
            0x00000000,
        },
        []u32{
            0x7FFFFFFF,
            0xFFFFFFFD,
            0x00000000,
        },
        []u32{
            0x7FFFFFFF,
            0xFFFFFFFE,
            0x00000000,
        },
        []u32{
            0x7FFFFFFF,
            0xFFFFFFFF,
            0x00000000,
        },
        []u32{
            0x80000000,
            0x00000001,
            0x80000000,
        },
        []u32{
            0x80000000,
            0x00000002,
            0x40000000,
        },
        []u32{
            0x80000000,
            0x00000003,
            0x2AAAAAAA,
        },
        []u32{
            0x80000000,
            0x00000010,
            0x08000000,
        },
        []u32{
            0x80000000,
            0x078644FA,
            0x00000011,
        },
        []u32{
            0x80000000,
            0x0747AE14,
            0x00000011,
        },
        []u32{
            0x80000000,
            0x7FFFFFFF,
            0x00000001,
        },
        []u32{
            0x80000000,
            0x80000000,
            0x00000001,
        },
        []u32{
            0x80000000,
            0xFFFFFFFD,
            0x00000000,
        },
        []u32{
            0x80000000,
            0xFFFFFFFE,
            0x00000000,
        },
        []u32{
            0x80000000,
            0xFFFFFFFF,
            0x00000000,
        },
        []u32{
            0xFFFFFFFD,
            0x00000001,
            0xFFFFFFFD,
        },
        []u32{
            0xFFFFFFFD,
            0x00000002,
            0x7FFFFFFE,
        },
        []u32{
            0xFFFFFFFD,
            0x00000003,
            0x55555554,
        },
        []u32{
            0xFFFFFFFD,
            0x00000010,
            0x0FFFFFFF,
        },
        []u32{
            0xFFFFFFFD,
            0x078644FA,
            0x00000022,
        },
        []u32{
            0xFFFFFFFD,
            0x0747AE14,
            0x00000023,
        },
        []u32{
            0xFFFFFFFD,
            0x7FFFFFFF,
            0x00000001,
        },
        []u32{
            0xFFFFFFFD,
            0x80000000,
            0x00000001,
        },
        []u32{
            0xFFFFFFFD,
            0xFFFFFFFD,
            0x00000001,
        },
        []u32{
            0xFFFFFFFD,
            0xFFFFFFFE,
            0x00000000,
        },
        []u32{
            0xFFFFFFFD,
            0xFFFFFFFF,
            0x00000000,
        },
        []u32{
            0xFFFFFFFE,
            0x00000001,
            0xFFFFFFFE,
        },
        []u32{
            0xFFFFFFFE,
            0x00000002,
            0x7FFFFFFF,
        },
        []u32{
            0xFFFFFFFE,
            0x00000003,
            0x55555554,
        },
        []u32{
            0xFFFFFFFE,
            0x00000010,
            0x0FFFFFFF,
        },
        []u32{
            0xFFFFFFFE,
            0x078644FA,
            0x00000022,
        },
        []u32{
            0xFFFFFFFE,
            0x0747AE14,
            0x00000023,
        },
        []u32{
            0xFFFFFFFE,
            0x7FFFFFFF,
            0x00000002,
        },
        []u32{
            0xFFFFFFFE,
            0x80000000,
            0x00000001,
        },
        []u32{
            0xFFFFFFFE,
            0xFFFFFFFD,
            0x00000001,
        },
        []u32{
            0xFFFFFFFE,
            0xFFFFFFFE,
            0x00000001,
        },
        []u32{
            0xFFFFFFFE,
            0xFFFFFFFF,
            0x00000000,
        },
        []u32{
            0xFFFFFFFF,
            0x00000001,
            0xFFFFFFFF,
        },
        []u32{
            0xFFFFFFFF,
            0x00000002,
            0x7FFFFFFF,
        },
        []u32{
            0xFFFFFFFF,
            0x00000003,
            0x55555555,
        },
        []u32{
            0xFFFFFFFF,
            0x00000010,
            0x0FFFFFFF,
        },
        []u32{
            0xFFFFFFFF,
            0x078644FA,
            0x00000022,
        },
        []u32{
            0xFFFFFFFF,
            0x0747AE14,
            0x00000023,
        },
        []u32{
            0xFFFFFFFF,
            0x7FFFFFFF,
            0x00000002,
        },
        []u32{
            0xFFFFFFFF,
            0x80000000,
            0x00000001,
        },
        []u32{
            0xFFFFFFFF,
            0xFFFFFFFD,
            0x00000001,
        },
        []u32{
            0xFFFFFFFF,
            0xFFFFFFFE,
            0x00000001,
        },
        []u32{
            0xFFFFFFFF,
            0xFFFFFFFF,
            0x00000001,
        },
    };

    for (cases) |case| {
        test_one_udivsi3(case[0], case[1], case[2]);
    }
}

fn test_one_udivsi3(a: u32, b: u32, expected_q: u32) void {
    const q: u32 = __udivsi3(a, b);
    testing.expect(q == expected_q);
}
