function result_matrix=gauss_seidel(Bus_data,Y,PVBus_num,Bus_no,tolerance,max_iteration)
Q_new=Bus_data(3,:);
Q_diff=zeros(1,Bus_no);
Q_old=zeros(1,Bus_no);

V_new=Bus_data(1,:);
V_old=zeros(1,Bus_no);
V_diff=zeros(1,Bus_no);
delta_diff=zeros(1,Bus_no);  %delta for voltage angle
delta_old=zeros(1,Bus_no);
 Y_im= imag(Y).*i;

iteration =0;
tolerance
X_del = tolerance +1;

while (tolerance <= X_del  )
    max_temp=0;
    X_temporary = 0;
    Q_old=Q_new;
    V_old=V_new;
    delta_old=angle(V_new);
    
     
    
    for rachel=2:PVBus_num+1  %calculating values for PV buses
        YV_sum=sum(Y_im(rachel,:).*V_new(1,:))-Y_im(rachel,rachel).*V_new(1,rachel);
       
       
       Q_new(1,rachel)=-imag(conj(V_new(1,rachel))*(Y_im(rachel,rachel)*V_new(1,rachel)+YV_sum));
       
       
       V_new(1,rachel)=(1/Y_im(rachel,rachel))*(((Bus_data(2,rachel)-i*Q_new(1,rachel))/conj(V_new(1,rachel)))-YV_sum);
       V_new(1,rachel)=abs(Bus_data(1,rachel))*exp(i*angle(V_new(1,rachel)));
       V_new(1,rachel)=(1/Y_im(rachel,rachel))*(((Bus_data(2,rachel)-i*Q_new(1,rachel))/conj(V_new(1,rachel)))-YV_sum);
       V_new(1,rachel)=abs(Bus_data(1,rachel))*exp(i*angle(V_new(1,rachel)));  
       
       
       Q_diff(1,rachel)=abs(Q_new(1,rachel)-Q_old(1,rachel));  % Q delta
       
       if(delta_old(1,rachel)~=0)
           delta_diff(1,rachel)=abs((angle(V_new(1,rachel))-delta_old(1,rachel))/delta_old(1,rachel));  % difference of angle
       else
           delta_diff(1,rachel)=abs((angle(V_new(1,rachel))-delta_old(1,rachel)));
       end
    end
    
    
    for rachel=PVBus_num+2:Bus_no  % voltage in load buses
        
        YV_sum=sum(Y_im(rachel,:).*V_new(1,:))-Y_im(rachel,rachel).*V_new(1,rachel);
       
         V_new(1,rachel)=(1/Y_im(rachel,rachel))*(((Bus_data(2,rachel)-j*Q_new(1,rachel))/conj(V_new(1,rachel)))-YV_sum) ;        
         
         V_new(1,rachel)=(1/Y_im(rachel,rachel))*(((Bus_data(2,rachel)-j*Q_new(1,rachel))/conj(V_new(1,rachel)))-YV_sum);
          
          V_diff(1,rachel)=abs(V_new(1,rachel)-V_old(1,rachel));  % difference of voltage magnitude
         if(delta_old(1,rachel)~=0)
           delta_diff(1,rachel)=abs((angle(V_new(1,rachel))-delta_old(1,rachel))/delta_old(1,rachel)~=0);  % difference of angle
       else
           delta_diff(1,rachel)=abs((angle(V_new(1,rachel))-delta_old(1,rachel)));
       end
         
    end
   
        
      % calculating diffence between old and new
      max_temp=max(Q_diff);
      if X_temporary<max_temp
          X_temporary=max_temp;
          
      end
      
       max_temp=max(V_diff);
      if X_temporary<max_temp
          X_temporary=max_temp;
          
      end
      
       max_temp=max(delta_diff);
      if X_temporary<max_temp
          X_temporary=max_temp;
          
      end
      X_del = X_temporary;
 
      iteration=iteration+1;
      if ( iteration > max_iteration  && max_iteration ~= 0)
          break;
      end
end
Q_new;
V_new;


iteration
% end of iteration procedure 

%calculation for swing bus
YV_sum=sum(Y_im(1,:).*V_new(1,:))-Y_im(1,1).*V_new(1,1);

temp = conj(V_new(1,1))*((Y_im(1,1)*V_new(1,1)+YV_sum));
Q_new(1)=abs(-imag(temp));

Bus_data(2,1) = abs(real(temp));

Bus_data
result_matrix=[ V_new ; Bus_data(2,:); Q_new ];
    
