function [ y ] = T_34(q4)

b = sqrt(2)/2;

    y = [cos(q4)    -sin(q4)    0  1.8;
         sin(q4)*b  cos(q4)*b   -b   0;
         sin(q4)*b  cos(q4)*b   b    0;
         0          0           0    1];
         

end

