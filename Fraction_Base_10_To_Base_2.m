% Fraction base 10 to base 2
% x = input("Fraction written in decimal number in base 10: ")
function Fraction_Base_10_To_Base_2(x,n)
%n = input("The number of decimal place ")
b = []
i=0
if x == 0
  disp(b)
else
  while i<n 
    x = x*2
    if x>=1
      b = [b,1]
      x = x-1
    else
      b = [b,0]
    endif
   i+=1 
   endwhile
   disp(b)
endif
endfunction