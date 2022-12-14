function [Ac, Bc, C, D] = gen_ss(thetaVec)

m = exp(thetaVec(1));

omg = exp(thetaVec(2));

zeta = exp(thetaVec(3));

ndof = 1;

Ac = [ zeros(ndof)  eye(ndof);
       - omg^2     -2*zeta*omg];

Bc = [zeros(ndof); m\eye(ndof)];

getidx = ndof+1:2*ndof;
C = Ac(getidx,:);

D = Bc(getidx,:);

end