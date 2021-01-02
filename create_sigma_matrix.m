function [sigma_out, u_out] = create_sigma_matrix(uy, ux, C)
%   Returns to output covariance matrix sigma after uncertainty propagation

sigma = [uy^2, 0; 0, ux^2];

sigma_out = C*sigma*C';
u_out = sqrt(diag(sigma_out));

end

