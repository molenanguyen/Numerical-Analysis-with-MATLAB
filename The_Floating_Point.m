% x = input("Fraction written in decimal number in base 10: ")
function The_Floating_Point(x,n)
%n = input("The number of decim0.6al place ")
y = idivide (x, 1, "floor")
x=x-y
b = Base_10_To_Base_2(y)
d = Fraction_Base_10_To_Base_2(x,n)
result = [b,d]
disp(result)
endfunction

