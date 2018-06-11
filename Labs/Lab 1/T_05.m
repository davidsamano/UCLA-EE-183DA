function y = T_05(q_vec)

q1 = q_vec(1);
q2 = q_vec(2);
q3 = q_vec(3);
q4 = q_vec(4);

y = T_01(q1) * T_12(q2) * T_23(q3) * T_34(q4) * T_45();

end

