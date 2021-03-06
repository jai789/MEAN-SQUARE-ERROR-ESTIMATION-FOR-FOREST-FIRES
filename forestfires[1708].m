clc
datasheet=xlsread('forestfires.csv');
x1=datasheet(1:400,5);
x2=datasheet(1:400,6);
x3=datasheet(1:400,7);
y=datasheet(1:400,2);
e1=x1'*y;
e2=x2'*y;
e3=x3'*y;
R01=[e1/400;e2/400;e3/400];
e4=x1'*x1;
e5=x1'*x2;
e6=x1'*x3;
e7=x2'*x1;
e8=x2'*x2;
e9=x2'*x3;
e10=x3'*x1;
e11=x3'*x2;
e12=x3'*x3;
R1=[e4/400,e5/400,e6/400;e7/400,e8/400,e9/400;e10/400,e11/400,e12/400];
A1=R1\R01;
esty1=(A1(1,1)*datasheet(401:517,5))+(A1(2,1)*datasheet(401:517,6))+(A1(3,1)*datasheet(401:517,7));
MSE1=(esty1(1:117)-datasheet(401:517,2));
OP1=MSE1.^2;
Z1=sum(OP1);
fop1=Z1/117;
x3=datasheet(1:400,6);
x4=datasheet(1:400,7);
x5=datasheet(1:400,8);
e4=x3'*y;
e5=x4'*y;
e6=x5'*y;
R02=[e4/400;e5/400;e6/400];
e7=x3'*x3;
e8=x3'*x4;
e9=x3'*x5;
e10=x4'*x3;
e11=x4'*x4;
e12=x4'*x5;
e13=x5'*x3;
e14=x5'*x4;
e15=x5'*x5;
R2=[e7/400,e8/400,e9/400;e10/400,e11/400,e12/400;e13/400,e14/400,e15/400];
A2=R2\R02;
esty2=(A2(1,1)*datasheet(401:517,6))+(A2(2,1)*datasheet(401:517,7))+(A2(3,1)*datasheet(401:517,8));
MSE2=(esty2(1:117)-datasheet(401:517,2));
OP2=MSE2.^2;
Z2=sum(OP2);
fop2=Z2/117;
x6=datasheet(1:400,8);
x7=datasheet(1:400,9);
x8=datasheet(1:400,10);
e16=x6'*y;
e17=x7'*y;
e18=x8'*y;
R03=[e16/400;e17/400;e18/400];
e19=x6'*x6;
e20=x6'*x7;
e21=x6'*x8;
e22=x7'*x6;
e23=x7'*x7;
e24=x7'*x8;
e25=x8'*x6;
e26=x8'*x7;
e27=x8'*x8;
R3=[e19/400,e20/400,e21/400;e22/400,e23/400,e24/400;e25/400,e26/400,e27/400];
A3=R3\R03;
esty3=(A3(1,1)*datasheet(401:517,8))+(A3(2,1)*datasheet(401:517,9))+(A3(3,1)*datasheet(401:517,10));
MSE3=(esty3(1:117)-datasheet(401:517,2));
OP3=MSE3.^2;
Z3=sum(OP3);
fop3=Z3/117;
display(fop1)
display(fop2)
display(fop3)
x=[fop1 fop2 fop3];
y=[1 2 3];
stem(y,x)
xlabel('no of input combinations')
ylabel('MSE')
grid on



