% default position

p_5 = [0 0 0 1]';

q = [pi*.25 pi*.25 pi*.5 0];

% default position in world coords, FK result
p_o = T_05(q) * p_5;