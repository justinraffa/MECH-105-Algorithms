clc
base10 = 2

if base10 == 0
    base2 =0
else
    c=0
    widthtest = base10
    while(widthtest > 0)
          widthtest = widthtest/2
          widthtest = round(widthtest-0.1)
           c=c+1
    end

    w=c
    A=zeros(1,w)

    n=0 
    while(base10 > 0)
          q = base10/2
          if q == round(q)
           A(1,w - n) = 0
          else
           A(1,w - n) = 1
          end
       base10 = round(q-0.1)
        n=n+1
    end

    base2 = A
end