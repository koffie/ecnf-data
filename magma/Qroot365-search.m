print "Field 2.2.365.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 91);
OK := Integers(K);
Plist := [];
Append(~Plist,(2)*OK);
Append(~Plist,(5)*OK+(w + 2)*OK);
Append(~Plist,(7)*OK+(w)*OK);
Append(~Plist,(7)*OK+(w + 6)*OK);
Append(~Plist,(3)*OK);
Append(~Plist,(13)*OK+(w)*OK);
Append(~Plist,(13)*OK+(w + 12)*OK);
Append(~Plist,(17)*OK+(w + 2)*OK);
Append(~Plist,(17)*OK+(w + 14)*OK);
Append(~Plist,(w + 8)*OK);
Append(~Plist,(w - 9)*OK);
Append(~Plist,(w + 11)*OK);
Append(~Plist,(w - 12)*OK);
Append(~Plist,(43)*OK+(w + 17)*OK);
Append(~Plist,(43)*OK+(w + 25)*OK);
Append(~Plist,(47)*OK+(w + 20)*OK);
Append(~Plist,(47)*OK+(w + 26)*OK);
Append(~Plist,(53)*OK+(w + 21)*OK);
Append(~Plist,(53)*OK+(w + 31)*OK);
Append(~Plist,(w + 5)*OK);
Append(~Plist,(w - 6)*OK);
Append(~Plist,(w + 4)*OK);
Append(~Plist,(w - 5)*OK);
Append(~Plist,(73)*OK+(w + 36)*OK);
Append(~Plist,(w + 3)*OK);
Append(~Plist,(w - 4)*OK);
Append(~Plist,(83)*OK+(w + 22)*OK);
Append(~Plist,(83)*OK+(w + 60)*OK);
Append(~Plist,(w + 1)*OK);
Append(~Plist,(w - 2)*OK);
Append(~Plist,(103)*OK+(w + 28)*OK);
Append(~Plist,(103)*OK+(w + 74)*OK);
Append(~Plist,(107)*OK+(w + 38)*OK);
Append(~Plist,(107)*OK+(w + 68)*OK);
Append(~Plist,(-2*w + 17)*OK);
Append(~Plist,(2*w + 15)*OK);
Append(~Plist,(113)*OK+(w + 39)*OK);
Append(~Plist,(113)*OK+(w + 73)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(w + 15)*OK);
Append(~Plist,(w - 16)*OK);
Append(~Plist,(157)*OK+(w + 34)*OK);
Append(~Plist,(157)*OK+(w + 122)*OK);
Append(~Plist,(163)*OK+(w + 53)*OK);
Append(~Plist,(163)*OK+(w + 109)*OK);
Append(~Plist,(167)*OK+(w + 35)*OK);
Append(~Plist,(167)*OK+(w + 131)*OK);
Append(~Plist,(w + 16)*OK);
Append(~Plist,(w - 17)*OK);
Append(~Plist,(193)*OK+(w + 32)*OK);
Append(~Plist,(193)*OK+(w + 160)*OK);
Append(~Plist,(197)*OK+(w + 51)*OK);
Append(~Plist,(197)*OK+(w + 145)*OK);
Append(~Plist,(-2*w + 25)*OK);
Append(~Plist,(2*w + 23)*OK);
Append(~Plist,(233)*OK+(w + 41)*OK);
Append(~Plist,(233)*OK+(w + 191)*OK);
Append(~Plist,(w + 18)*OK);
Append(~Plist,(w - 19)*OK);
Append(~Plist,(263)*OK+(w + 37)*OK);
Append(~Plist,(263)*OK+(w + 225)*OK);
Append(~Plist,(-3*w - 22)*OK);
Append(~Plist,(3*w - 25)*OK);
Append(~Plist,(277)*OK+(w + 114)*OK);
Append(~Plist,(277)*OK+(w + 162)*OK);
Append(~Plist,(307)*OK+(w + 120)*OK);
Append(~Plist,(307)*OK+(w + 186)*OK);
Append(~Plist,(-2*w + 27)*OK);
Append(~Plist,(2*w + 25)*OK);
Append(~Plist,(313)*OK+(w + 64)*OK);
Append(~Plist,(313)*OK+(w + 248)*OK);
Append(~Plist,(337)*OK+(w + 49)*OK);
Append(~Plist,(337)*OK+(w + 287)*OK);
Append(~Plist,(-2*w + 5)*OK);
Append(~Plist,(-2*w - 3)*OK);
Append(~Plist,(-3*w + 23)*OK);
Append(~Plist,(3*w + 20)*OK);
Append(~Plist,(-4*w + 45)*OK);
Append(~Plist,(4*w + 41)*OK);
Append(~Plist,(-3*w - 19)*OK);
Append(~Plist,(3*w - 22)*OK);
Append(~Plist,(-2*w + 29)*OK);
Append(~Plist,(2*w + 27)*OK);
Append(~Plist,(433)*OK+(w + 47)*OK);
Append(~Plist,(433)*OK+(w + 385)*OK);
Append(~Plist,(-3*w + 37)*OK);
Append(~Plist,(3*w + 34)*OK);
Append(~Plist,(443)*OK+(w + 56)*OK);
Append(~Plist,(443)*OK+(w + 386)*OK);
Append(~Plist,(w + 23)*OK);
Append(~Plist,(w - 24)*OK);
Append(~Plist,(467)*OK+(w + 78)*OK);
Append(~Plist,(467)*OK+(w + 388)*OK);
Append(~Plist,(-3*w + 20)*OK);
Append(~Plist,(3*w + 17)*OK);
Append(~Plist,(-4*w - 29)*OK);
Append(~Plist,(4*w - 33)*OK);
Append(~Plist,(w + 24)*OK);
Append(~Plist,(w - 25)*OK);
Append(~Plist,(23)*OK);
effort := 400;
ECSearch := procedure(class_label, N, aplist);
print "Isogeny class ", class_label;
goodP := [P: P in Plist | Valuation(N,P) eq 0];
goodP := [goodP[i]: i in [1..#(aplist)]];
curves := EllipticCurveSearch(N,effort : Primes:=goodP, Traces:=aplist);
curves := [E: E in curves | &and[TraceOfFrobenius(E,goodP[i]) eq aplist[i] : i in [1..#(aplist)]]];
if #curves eq 0 then print "No curve found"; end if;
for E in curves do;
 a1,a2,a3,a4,a6:=Explode(aInvariants(E));
 printf "Curve [%o,%o,%o,%o,%o]\n",a1,a2,a3,a4,a6;
 end for;
end procedure;
SetColumns(0);

ECSearch("4.1-a",(2)*OK,[4, -3, -3, 5, 6, 6, 2, 2, 0, 0, -3, -3, 6, 6, 7, 7, -4, -4, -8, -8, -3, -3, 6, 15, 15, -14, -14, 15, 15]);
ECSearch("4.1-b",(2)*OK,[-4, 3, 3, 5, -6, -6, -2, -2, 0, 0, -3, -3, -6, -6, -7, -7, 4, 4, -8, -8, -3, -3, -6, 15, 15, 14, 14, 15, 15]);
ECSearch("7.1-a",(7)*OK+(w)*OK,[1, 2, -4, 2, -2, 6, 6, -2, 4, -4, -6, -6, -4, 0, 8, -4, -6, 2, -2, -2, 8, -8, 2, 16, 8, 12, 0, 10, 10]);
ECSearch("7.1-b",(7)*OK+(w)*OK,[1, -2, 4, 2, 2, -6, -6, 2, 4, -4, -6, -6, 4, 0, -8, 4, 6, -2, -2, -2, 8, -8, -2, 16, 8, -12, 0, 10, 10]);
ECSearch("7.2-a",(7)*OK+(w + 6)*OK,[1, 2, -4, 2, 6, -2, -2, 6, -4, 4, -6, -6, 0, -4, -4, 8, 2, -6, -2, -2, -8, 8, 2, 8, 16, 0, 12, 10, 10]);
ECSearch("7.2-b",(7)*OK+(w + 6)*OK,[1, -2, 4, 2, -6, 2, 2, -6, -4, 4, -6, -6, 0, 4, 4, -8, -2, 6, -2, -2, -8, 8, -2, 8, 16, 0, -12, 10, 10]);
