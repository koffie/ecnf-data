print "Field 2.2.408.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - 102);
OK := Integers(K);
Plist := [];
Append(~Plist,(w + 10)*OK);
Append(~Plist,(3)*OK+(w)*OK);
Append(~Plist,(7)*OK+(w + 2)*OK);
Append(~Plist,(7)*OK+(w + 5)*OK);
Append(~Plist,(11)*OK+(w + 5)*OK);
Append(~Plist,(11)*OK+(w + 6)*OK);
Append(~Plist,(17)*OK+(w)*OK);
Append(~Plist,(-w + 11)*OK);
Append(~Plist,(-w - 11)*OK);
Append(~Plist,(5)*OK);
Append(~Plist,(31)*OK+(w + 3)*OK);
Append(~Plist,(31)*OK+(w + 28)*OK);
Append(~Plist,(37)*OK+(w + 18)*OK);
Append(~Plist,(37)*OK+(w + 19)*OK);
Append(~Plist,(41)*OK+(w + 15)*OK);
Append(~Plist,(41)*OK+(w + 26)*OK);
Append(~Plist,(-3*w + 31)*OK);
Append(~Plist,(-3*w - 31)*OK);
Append(~Plist,(2*w - 19)*OK);
Append(~Plist,(2*w + 19)*OK);
Append(~Plist,(w + 7)*OK);
Append(~Plist,(w - 7)*OK);
Append(~Plist,(61)*OK+(w + 23)*OK);
Append(~Plist,(61)*OK+(w + 38)*OK);
Append(~Plist,(w + 13)*OK);
Append(~Plist,(w - 13)*OK);
Append(~Plist,(79)*OK+(w + 24)*OK);
Append(~Plist,(79)*OK+(w + 55)*OK);
Append(~Plist,(w + 1)*OK);
Append(~Plist,(w - 1)*OK);
Append(~Plist,(107)*OK+(w + 40)*OK);
Append(~Plist,(107)*OK+(w + 67)*OK);
Append(~Plist,(109)*OK+(w + 50)*OK);
Append(~Plist,(109)*OK+(w + 59)*OK);
Append(~Plist,(113)*OK+(w + 21)*OK);
Append(~Plist,(113)*OK+(w + 92)*OK);
Append(~Plist,(131)*OK+(w + 44)*OK);
Append(~Plist,(131)*OK+(w + 87)*OK);
Append(~Plist,(5*w - 49)*OK);
Append(~Plist,(5*w + 49)*OK);
Append(~Plist,(13)*OK);
Append(~Plist,(181)*OK+(w + 37)*OK);
Append(~Plist,(181)*OK+(w + 144)*OK);
Append(~Plist,(6*w - 59)*OK);
Append(~Plist,(6*w + 59)*OK);
Append(~Plist,(199)*OK+(w + 36)*OK);
Append(~Plist,(199)*OK+(w + 163)*OK);
Append(~Plist,(227)*OK+(w + 97)*OK);
Append(~Plist,(227)*OK+(w + 130)*OK);
Append(~Plist,(233)*OK+(w + 58)*OK);
Append(~Plist,(233)*OK+(w + 175)*OK);
Append(~Plist,(-2*w + 13)*OK);
Append(~Plist,(2*w + 13)*OK);
Append(~Plist,(-4*w - 37)*OK);
Append(~Plist,(4*w - 37)*OK);
Append(~Plist,(277)*OK+(w + 42)*OK);
Append(~Plist,(277)*OK+(w + 235)*OK);
Append(~Plist,(-3*w - 25)*OK);
Append(~Plist,(3*w - 25)*OK);
Append(~Plist,(-3*w - 35)*OK);
Append(~Plist,(3*w - 35)*OK);
Append(~Plist,(7*w + 73)*OK);
Append(~Plist,(-7*w + 73)*OK);
Append(~Plist,(347)*OK+(w + 141)*OK);
Append(~Plist,(347)*OK+(w + 206)*OK);
Append(~Plist,(-2*w + 7)*OK);
Append(~Plist,(-2*w - 7)*OK);
Append(~Plist,(367)*OK+(w + 48)*OK);
Append(~Plist,(367)*OK+(w + 319)*OK);
Append(~Plist,(-2*w + 5)*OK);
Append(~Plist,(-2*w - 5)*OK);
Append(~Plist,(-3*w + 23)*OK);
Append(~Plist,(3*w + 23)*OK);
Append(~Plist,(397)*OK+(w + 94)*OK);
Append(~Plist,(397)*OK+(w + 303)*OK);
Append(~Plist,(401)*OK+(w + 158)*OK);
Append(~Plist,(401)*OK+(w + 243)*OK);
Append(~Plist,(10*w + 103)*OK);
Append(~Plist,(-10*w + 103)*OK);
Append(~Plist,(419)*OK+(w + 85)*OK);
Append(~Plist,(419)*OK+(w + 334)*OK);
Append(~Plist,(-2*w + 29)*OK);
Append(~Plist,(2*w + 29)*OK);
Append(~Plist,(439)*OK+(w + 190)*OK);
Append(~Plist,(439)*OK+(w + 249)*OK);
Append(~Plist,(449)*OK+(w + 71)*OK);
Append(~Plist,(449)*OK+(w + 378)*OK);
Append(~Plist,(14*w - 143)*OK);
Append(~Plist,(-14*w - 143)*OK);
Append(~Plist,(11*w - 109)*OK);
Append(~Plist,(11*w + 109)*OK);
Append(~Plist,(487)*OK+(w + 104)*OK);
Append(~Plist,(487)*OK+(w + 383)*OK);
Append(~Plist,(-7*w - 67)*OK);
Append(~Plist,(7*w - 67)*OK);
Append(~Plist,(521)*OK+(w + 86)*OK);
Append(~Plist,(521)*OK+(w + 435)*OK);
Append(~Plist,(w + 25)*OK);
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

ECSearch("1.1-a",(1)*OK,[0, -2, 0, 0, -6, -6, -6, -2, -2, 10, 0, 0, 0, 0, -6, -6, -10, -10, 0, 0, 0, 0, 0, 0, -14, -14, 0, 0, 0, 0]);
ECSearch("1.1-b",(1)*OK,[0, 2, 0, 0, 6, 6, 6, -2, -2, 10, 0, 0, 0, 0, 6, 6, -10, -10, 0, 0, 0, 0, 0, 0, -14, -14, 0, 0, 0, 0]);