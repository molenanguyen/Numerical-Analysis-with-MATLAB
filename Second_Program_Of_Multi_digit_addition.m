% add two single-digit numbers by completing the 10 method
x = input("First single-digit number? ")
y = input("Second single-digit number? ")
m = length(x)
n= length(y)
while m!= n
  if m>n
    y = [0,y]
   else
    x = [0,x]
  m = length(x)
  n= length(y)
endwhile

%complete_the_10_for_singledigitadd


i = m
a = []
b=[]

while i >=1
  if  
    
  c=(int2str(p))(i)
  d=(int2str(q))(i)
  a = [a,c]
  b=[b,d]
  i-=1
  
endwhile

g = []
j = 1
while j <=m
  e = a(j)
  f = b(j)
  sum = max(str2num(e),str2num(f))
  if e != 0 && f!= 0
    count = min(str2num(e),str2num(f))
  else
    count = 0
  endif
  if count >5
    while sum != 10
      sum += 1
      count -=1
    endwhile
    sum = strcat(num2str(1),num2str(count))
  else
    while count != 0
      sum +=1 
      count -=1
    endwhile
    sum = sum
  endif
  g = [g,sum]
  j+=1
endwhile


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


result = num2str(g(m))
z = m-1
while z >=1 
  result = strcat(result,num2str(g(z)))
  z-=1
endwhile
disp("result"),disp(result)
#}