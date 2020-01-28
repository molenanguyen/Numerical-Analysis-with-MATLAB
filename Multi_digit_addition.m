% my function complete_the_10_for_singledigitadd gets a count and a sum to
% calculate the result
% add two single-digit numbers by completing the 10 method
x = input("First single-digit number? ")
y = input("Second single-digit number? ")
p = max(x,y)
q = min(x,y)
m = length(int2str(p))
n = length(int2str(q))

while n < m
  q = strcat(0,int2str(q))
  n +=1
endwhile

i = m
a = []
b=[]

while i >=1
  c=(int2str(p))(i)
  d=(int2str(q))(i)
  a = [a,c]
  b=[b,d]
  i-=1
endwhile

g = []
e = a(1)
f = b(1)
j = 2
while j <=m
  sum = max(str2double(e),str2double(f))
  if e == 0 || f == 0 
    count = 0
  else
    count = min(str2double(e),str2double(f))
  endif

complete_the_10_for_singledigitadd(count,sum)

                                                    
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
    sum = sum
  endif
  g = [g,sum]
  disp("g is"),disp(g)
  j+=1
endwhile

e = a(1)
f = b(1)
k = 1
while k <=m-1 
  if g(k) <10
    g(k) = g(k)
  else
    g(k) = g(k)-10
    g(k+1)+=1
   endif
   k+=1
endwhile


result = int2str(g(m))
z = m-1
while z >=1 
  result = strcat(result,num2str(g(z)))
  z-=1
endwhile
disp("The sum is"),disp(result)
