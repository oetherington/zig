const std = @import("../../std.zig");
const testing = std.testing;
const math = std.math;
const cmath = math.complex;
const Complex = cmath.Complex;

pub fn conj(z: var) Complex(@typeOf(z.re)) {
    const T = @typeOf(z.re);
    return Complex(T).new(z.re, -z.im);
}

test "complex.conj" {
    const a = Complex(f32).new(5, 3);
    const c = a.conjugate();

    testing.expect(c.re == 5 and c.im == -3);
}
