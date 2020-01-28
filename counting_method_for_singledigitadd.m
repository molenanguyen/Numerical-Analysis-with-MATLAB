% add two single-digit numbers by counting method
% x = input("First single-digit number? ")
% y = input("Second single-digit number? ")
function sum = counting_method_for_singledigitadd(x,y)
  if length(int2str(x)) ==1 & length(int2str(y)) == 1
    sum = max(x,y)
    count = min(x,y) 
    while count != 0
      sum +=1 
      count -=1
    endwhile
    disp("The sum is: "), disp(sum)
  else
    disp("Please re-run the program and enter two single-digit numbers")
  endif