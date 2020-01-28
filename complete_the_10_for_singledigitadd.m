% add two single-digit numbers by completing the 10 method
% x = input("First single-digit number? ")
% y = input("Second single-digit number? ")
% if length(int2str(x)) == 1 && length(int2str(y)) == 1
%    sum = max(x,y)
%    count = min(x,y)
function complete_the_10_for_singledigitadd (count,sum)
  if count >5
      while sum != 10
        sum += 1
        count -=1
      endwhile
      sum = strcat(int2str(1),int2str(count))
    else
      while count != 0
        sum +=1 
      count -=1
      endwhile
    endif
    disp("The sum is: "), disp(sum)
% else
%   disp("Please re-run the program and enter two single-digit numbers")
%  endif
end
