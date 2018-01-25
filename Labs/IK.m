%Inverse Kinematic 

final_pos = [.4, .6, -2.5, 1]';
current_pos = [0 0 0 1]';




% error threshold
th = 0.05;


error = sqrt((final_pos - current_pos)'*(final_pos - current_pos));
move = [pi*.25 pi*.25 pi*.5 0]';

history = [current_pos'];
err_history = [error];

while error > th
    
    delta = final_pos(1:3) - current_pos(1:3);
    
    move = move + pinv(Jacobian(move))* delta;
    
    current_pos = T_05(move) * [0 0 0 1]';
    error = sqrt((final_pos - current_pos)'*(final_pos - current_pos));
    
    history = [history; current_pos'];
    err_history = [err_history; error];
    
end
    
    
    
    

