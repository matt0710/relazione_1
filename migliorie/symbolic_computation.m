function [C_sym] = symbolic_computation(a1, b1)
%   Compute symbolic calculation of transformation matrix from
%rectangular form to polar form
theta_sym = [(sqrt(a1^2 + b1^2)), atan2(b1, a1)];
x_sym = [a1, b1];
C_sym = simplify(jacobian(theta_sym,x_sym));

end

