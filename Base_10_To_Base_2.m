% Base 10 to Base 2
x = input("Number in base 10: ")
b = []
if x == 0
  disp(b)
else
  while x > 0 
    if mod(x,2) == 0
      b = [0,b]
      x = x/2
    else
      b = [1,b]
      x = x-1
      x =x/ 2
    endif
  endwhile
  disp(b)
 endif
