function oscillo1(fwd_scale,rev_scale,phi)
    % Wy = 2*pi ==> Ty = 1
    % Ay = 1
    
    figure(1);
    hold on;
    for i = 1:200
        
        fwd_t = (i-1)*(fwd_scale+rev_scale):0.001:i*(fwd_scale+rev_scale)-rev_scale; %Ty = 1
        
        scaled_fwd_t = 0:0.001:fwd_scale;
        
        fwd_y = sin(2*pi.*fwd_t+phi);
        
        plot(scaled_fwd_t,fwd_y,'b','LineWidth',1);
        
        rev_t = i*(fwd_scale+rev_scale)-rev_scale:0.001*rev_scale/fwd_scale:i*(fwd_scale+rev_scale);
        
        scaled_rev_t = fwd_scale:-0.001:0;
        
        rev_y = sin(2*pi.*rev_t+phi);
        
        
        plot(scaled_rev_t,rev_y,'r--','LineWidth',0.5);
        
    end
    axis([0 fwd_scale -1.5 1.5])
    title('\it\bfOscillo');
    grid on;
    hold off;
end