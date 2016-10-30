% 標準入力の練習
m = input('Enter the number of data values \n');
reply = input('Is that correct, anster Y or N\n','s');
while~strcmp(reply,'Y')
  input('Enter the number of data values\n');
  reply = input('Is that correct, asnwer Y or N\n','s');
end;
disp(m)
disp('Thank you');