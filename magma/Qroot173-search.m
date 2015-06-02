print "Field 2.2.173.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 43);
OK := Integers(K);
Plist := [];
Append(~Plist,(2)*OK);
Append(~Plist,(3)*OK);
Append(~Plist,(-w - 5)*OK);
Append(~Plist,(-w + 6)*OK);
Append(~Plist,(w + 4)*OK);
Append(~Plist,(w - 5)*OK);
Append(~Plist,(5)*OK);
Append(~Plist,(w + 8)*OK);
Append(~Plist,(w - 9)*OK);
Append(~Plist,(w + 3)*OK);
Append(~Plist,(w - 4)*OK);
Append(~Plist,(w + 2)*OK);
Append(~Plist,(w - 3)*OK);
Append(~Plist,(w + 1)*OK);
Append(~Plist,(w - 2)*OK);
Append(~Plist,(w)*OK);
Append(~Plist,(w - 1)*OK);
Append(~Plist,(w + 9)*OK);
Append(~Plist,(w - 10)*OK);
Append(~Plist,(7)*OK);
Append(~Plist,(w + 10)*OK);
Append(~Plist,(w - 11)*OK);
Append(~Plist,(-2*w + 11)*OK);
Append(~Plist,(2*w + 9)*OK);
Append(~Plist,(-2*w + 17)*OK);
Append(~Plist,(2*w + 15)*OK);
Append(~Plist,(w + 11)*OK);
Append(~Plist,(w - 12)*OK);
Append(~Plist,(-2*w + 9)*OK);
Append(~Plist,(2*w + 7)*OK);
Append(~Plist,(w + 12)*OK);
Append(~Plist,(w - 13)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(-2*w + 7)*OK);
Append(~Plist,(2*w + 5)*OK);
Append(~Plist,(w + 13)*OK);
Append(~Plist,(w - 14)*OK);
Append(~Plist,(-3*w + 17)*OK);
Append(~Plist,(3*w + 14)*OK);
Append(~Plist,(-2*w + 19)*OK);
Append(~Plist,(2*w + 17)*OK);
Append(~Plist,(-2*w + 5)*OK);
Append(~Plist,(2*w + 3)*OK);
Append(~Plist,(-3*w + 25)*OK);
Append(~Plist,(3*w + 22)*OK);
Append(~Plist,(w + 14)*OK);
Append(~Plist,(w - 15)*OK);
Append(~Plist,(-2*w + 1)*OK);
Append(~Plist,(-3*w - 13)*OK);
Append(~Plist,(3*w - 16)*OK);
Append(~Plist,(w + 15)*OK);
Append(~Plist,(w - 16)*OK);
Append(~Plist,(-3*w - 23)*OK);
Append(~Plist,(3*w - 26)*OK);
Append(~Plist,(-2*w + 21)*OK);
Append(~Plist,(2*w + 19)*OK);
Append(~Plist,(w + 16)*OK);
Append(~Plist,(w - 17)*OK);
Append(~Plist,(-3*w + 14)*OK);
Append(~Plist,(3*w + 11)*OK);
Append(~Plist,(-4*w + 23)*OK);
Append(~Plist,(4*w + 19)*OK);
Append(~Plist,(-3*w - 10)*OK);
Append(~Plist,(3*w - 13)*OK);
Append(~Plist,(w + 17)*OK);
Append(~Plist,(w - 18)*OK);
Append(~Plist,(-4*w + 33)*OK);
Append(~Plist,(4*w + 29)*OK);
Append(~Plist,(17)*OK);
Append(~Plist,(-2*w + 23)*OK);
Append(~Plist,(2*w + 21)*OK);
Append(~Plist,(-3*w + 28)*OK);
Append(~Plist,(3*w + 25)*OK);
Append(~Plist,(-3*w - 7)*OK);
Append(~Plist,(3*w - 10)*OK);
Append(~Plist,(-4*w - 17)*OK);
Append(~Plist,(4*w - 21)*OK);
Append(~Plist,(w + 19)*OK);
Append(~Plist,(w - 20)*OK);
Append(~Plist,(-3*w + 8)*OK);
Append(~Plist,(3*w + 5)*OK);
Append(~Plist,(-3*w - 4)*OK);
Append(~Plist,(3*w - 7)*OK);
Append(~Plist,(19)*OK);
Append(~Plist,(-3*w - 26)*OK);
Append(~Plist,(3*w - 29)*OK);
Append(~Plist,(-5*w + 29)*OK);
Append(~Plist,(5*w + 24)*OK);
Append(~Plist,(-3*w - 1)*OK);
Append(~Plist,(3*w - 4)*OK);
Append(~Plist,(-3*w + 2)*OK);
Append(~Plist,(3*w - 1)*OK);
Append(~Plist,(-4*w - 31)*OK);
Append(~Plist,(4*w - 35)*OK);
Append(~Plist,(-5*w + 41)*OK);
Append(~Plist,(5*w + 36)*OK);
Append(~Plist,(w + 21)*OK);
Append(~Plist,(w - 22)*OK);
Append(~Plist,(5*w + 23)*OK);
Append(~Plist,(5*w - 28)*OK);
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

ECSearch("4.1-a",(2)*OK,[-3, 0, -6, 3, 3, -7, -2, -2, -7, 5, 4, -2, -3, -3, -4, 8, -1, -13, -6, -8, -2, -5, 7, 16, 4, 6, -18, 10, -2]);
ECSearch("4.1-b",(2)*OK,[5, 4, 4, -1, -1, 1, 0, 0, -3, -3, 8, 8, -3, -3, -6, -6, 3, 3, 10, -2, -2, -1, -1, -6, -6, -10, -10, 0, 0]);
ECSearch("4.1-c",(2)*OK,[-3, -6, 0, 3, 3, -7, -2, -2, 5, -7, -2, 4, -3, -3, 8, -4, -13, -1, -6, -2, -8, 7, -5, 4, 16, -18, 6, -2, 10]);