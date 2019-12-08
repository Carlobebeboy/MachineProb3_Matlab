function c = MP3(x);

x = input('Input n x 2 matrix: ')

L = length(x);

if L > 12
    len = 10;
else 
    len = length(x) - 1;
end
    

for i = 1:len
    
    c = polyfit(x(:,1), x(:,2), i);
    
    p1 = polyval(c, x(:,1));
    p2 =(x(:,2));
    
    P = norm(p2 - p1);
    
    X = [i,P];
    
    if i == 1
        
        y = X;
    end
    if y(2) >= X(2)
        z = X(1);
    end
    
end
 
c = polyfit(x(:,1), x(:,2), z);

end


        
        
      
    

    