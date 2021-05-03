function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

if length(x) ~= length(y), error('Inputs are not the same length'), end
test= x(2) -x(1)
    for c=2:length(x)
        if test ~= x(c)-x(c-1)
            error('Input is not evenly spaced')
        end
    end
    
if length(x)==2
    warning('the trapezoid rule will be used')
    I=(x(2)-x(1))*((y(1)+y(2))/2)
elseif length(x)==3
    I=((x(3)-x(1))/6)*(y(1)+4*y(2)+y(3))
else
    if rem(length(x),2) == 0      
        n=1
        I=0
        while n<=length(x)-3   
            est = ((x(n+2)-x(n))/6)*(y(n) + 4*y(n+1) +y(n+2))
            I = I + est
            n=n+2
        end
        warning('the trapezoid rule will be used')
        trap = (x(n+1)-x(n))*(y(n)+y(n+1))/2
        I = I+trap
    else
        n=1
        I=0
        while n<=length(x)-2   
            est = ((x(n+2)-x(n))/6)*(y(n) + 4*y(n+1) +y(n+2))
            I = I + est
            n=n+2
        end
    end
end

end


