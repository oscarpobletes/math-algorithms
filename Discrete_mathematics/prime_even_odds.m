%ÓSCAR POBLETE SÁENZ
%Given a range, recognize prime numbers and detect which ones are odd and even.

a=input('Give me a number: '); %ask user for range
q = ['The prime numbers from 2 to the given number are:'];
disp(q)
%Rem= remainder of a division
for x=2:a %We go from 2 to the given number
    divi=0;%We start by assuming that it is prime
    for b=2:x-1 %We use another loop to do the comparison
        if rem(x,b)==0 %If the number is divisible by another number that is not the same
            divi=1; %is not prime
        end
    end
  if divi==0 && rem(x,2)==0 %Check if it is prime and even
     par=[num2str(x), ' It is prime and even'];
     disp(par) %Print result
  else if divi==0 &&rem(x,2)not(0); %Check if it is prime and odd
    impar=[num2str(x), ' It is prime and odd'];
    disp(impar) %Print result
  end
  end
end
