%ÓSCAR POBLETE SÁENZ
%Given a range check if the number is prime with a single instruction.

a=input('Give me a number: ');
q = ['The prime numbers from 2 to the given number are:'];
disp(q)
%Rem= remainder of a division
for x=2:a
    divi=0;
    for b=2:x-1
        if rem(x,b)==0
            divi=1;
        end
    end
  if divi==0
     disp(x)  
  end
end

