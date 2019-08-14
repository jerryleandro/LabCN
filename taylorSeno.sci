function [a] = taylorSeno(x0 , t , x)
    
    a = sin(x0);
    
    for i = 2 : t
        if modulo(i,4) == 0
            a = a + (-cos(x0)*(x - x0)^(i -1))/ factorial(i -1)
        elseif modulo(i,4) == 1  
            a = a + (sin(x0)*(x - x0)^(i -1))/ factorial(i -1)  
        elseif modulo(i,4) == 2  
            a = a + (cos(x0)*(x - x0)^(i -1))/ factorial(i -1) 
        elseif modulo(i,4) == 3
            a = a + (-sin(x0)*(x - x0)^(i -1))/ factorial(i -1)
            
        end    
    end
endfunction
