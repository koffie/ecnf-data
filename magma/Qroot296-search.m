print "Field 2.2.296.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - 74);
OK := Integers(K);
Plist := [];
Append(~Plist,(2)*OK+(w)*OK);
Append(~Plist,(5)*OK+(w + 2)*OK);
Append(~Plist,(5)*OK+(w + 3)*OK);
Append(~Plist,(-w - 9)*OK);
Append(~Plist,(w - 9)*OK);
Append(~Plist,(3)*OK);
Append(~Plist,(13)*OK+(w + 3)*OK);
Append(~Plist,(13)*OK+(w + 10)*OK);
Append(~Plist,(19)*OK+(w + 6)*OK);
Append(~Plist,(19)*OK+(w + 13)*OK);
Append(~Plist,(29)*OK+(w + 4)*OK);
Append(~Plist,(29)*OK+(w + 25)*OK);
Append(~Plist,(37)*OK+(w)*OK);
Append(~Plist,(3*w - 25)*OK);
Append(~Plist,(-3*w - 25)*OK);
Append(~Plist,(43)*OK+(w + 17)*OK);
Append(~Plist,(43)*OK+(w + 26)*OK);
Append(~Plist,(w + 11)*OK);
Append(~Plist,(w - 11)*OK);
Append(~Plist,(59)*OK+(w + 29)*OK);
Append(~Plist,(59)*OK+(w + 30)*OK);
Append(~Plist,(61)*OK+(w + 14)*OK);
Append(~Plist,(61)*OK+(w + 47)*OK);
Append(~Plist,(-2*w + 15)*OK);
Append(~Plist,(2*w + 15)*OK);
Append(~Plist,(w + 1)*OK);
Append(~Plist,(w - 1)*OK);
Append(~Plist,(109)*OK+(w + 40)*OK);
Append(~Plist,(109)*OK+(w + 69)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(-2*w + 13)*OK);
Append(~Plist,(2*w + 13)*OK);
Append(~Plist,(131)*OK+(w + 27)*OK);
Append(~Plist,(131)*OK+(w + 104)*OK);
Append(~Plist,(-3*w + 23)*OK);
Append(~Plist,(3*w + 23)*OK);
Append(~Plist,(w + 15)*OK);
Append(~Plist,(w - 15)*OK);
Append(~Plist,(163)*OK+(w + 20)*OK);
Append(~Plist,(163)*OK+(w + 143)*OK);
Append(~Plist,(179)*OK+(w + 49)*OK);
Append(~Plist,(179)*OK+(w + 130)*OK);
Append(~Plist,(-4*w + 31)*OK);
Append(~Plist,(4*w + 31)*OK);
Append(~Plist,(227)*OK+(w + 55)*OK);
Append(~Plist,(227)*OK+(w + 172)*OK);
Append(~Plist,(-2*w + 23)*OK);
Append(~Plist,(2*w + 23)*OK);
Append(~Plist,(251)*OK+(w + 24)*OK);
Append(~Plist,(251)*OK+(w + 227)*OK);
Append(~Plist,(6*w + 49)*OK);
Append(~Plist,(-6*w + 49)*OK);
Append(~Plist,(-2*w + 5)*OK);
Append(~Plist,(-2*w - 5)*OK);
Append(~Plist,(277)*OK+(w + 118)*OK);
Append(~Plist,(277)*OK+(w + 159)*OK);
Append(~Plist,(283)*OK+(w + 91)*OK);
Append(~Plist,(283)*OK+(w + 192)*OK);
Append(~Plist,(17)*OK);
Append(~Plist,(331)*OK+(w + 111)*OK);
Append(~Plist,(331)*OK+(w + 220)*OK);
Append(~Plist,(-4*w - 39)*OK);
Append(~Plist,(4*w - 39)*OK);
Append(~Plist,(347)*OK+(w + 132)*OK);
Append(~Plist,(347)*OK+(w + 215)*OK);
Append(~Plist,(-5*w - 47)*OK);
Append(~Plist,(5*w - 47)*OK);
Append(~Plist,(w + 21)*OK);
Append(~Plist,(w - 21)*OK);
Append(~Plist,(389)*OK+(w + 117)*OK);
Append(~Plist,(389)*OK+(w + 272)*OK);
Append(~Plist,(421)*OK+(w + 186)*OK);
Append(~Plist,(421)*OK+(w + 235)*OK);
Append(~Plist,(-2*w + 27)*OK);
Append(~Plist,(2*w + 27)*OK);
Append(~Plist,(461)*OK+(w + 205)*OK);
Append(~Plist,(461)*OK+(w + 256)*OK);
Append(~Plist,(467)*OK+(w + 169)*OK);
Append(~Plist,(467)*OK+(w + 298)*OK);
Append(~Plist,(499)*OK+(w + 81)*OK);
Append(~Plist,(499)*OK+(w + 418)*OK);
Append(~Plist,(-10*w - 89)*OK);
Append(~Plist,(-10*w + 89)*OK);
Append(~Plist,(523)*OK+(w + 86)*OK);
Append(~Plist,(523)*OK+(w + 437)*OK);
Append(~Plist,(23)*OK);
Append(~Plist,(541)*OK+(w + 34)*OK);
Append(~Plist,(541)*OK+(w + 507)*OK);
Append(~Plist,(547)*OK+(w + 53)*OK);
Append(~Plist,(547)*OK+(w + 494)*OK);
Append(~Plist,(557)*OK+(w + 155)*OK);
Append(~Plist,(557)*OK+(w + 402)*OK);
Append(~Plist,(563)*OK+(w + 168)*OK);
Append(~Plist,(563)*OK+(w + 395)*OK);
Append(~Plist,(587)*OK+(w + 240)*OK);
Append(~Plist,(587)*OK+(w + 347)*OK);
Append(~Plist,(8*w - 73)*OK);
Append(~Plist,(8*w + 73)*OK);
Append(~Plist,(-7*w - 65)*OK);
Append(~Plist,(7*w - 65)*OK);
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

ECSearch("5.1-a",(5)*OK+(w + 2)*OK,[0, 0, 5, -1, 1, 4, 4, 4, -2, 0, 6, -2, 3, 3, -8, 10, 3, -3, 12, 0, 10, -8, -9, 15, 11, 5, 4, -8, -13]);
ECSearch("5.1-b",(5)*OK+(w + 2)*OK,[0, 0, 5, -1, 1, -4, -4, -4, 2, 0, -6, 2, 3, 3, 8, -10, 3, -3, -12, 0, -10, 8, -9, 15, 11, 5, -4, 8, -13]);
ECSearch("5.2-a",(5)*OK+(w + 3)*OK,[0, 0, -1, 5, 1, 4, 4, -2, 4, 6, 0, -2, 3, 3, 10, -8, -3, 3, 0, 12, -8, 10, 15, -9, 5, 11, -8, 4, -13]);
ECSearch("5.2-b",(5)*OK+(w + 3)*OK,[0, 0, -1, 5, 1, -4, -4, 2, -4, -6, 0, 2, 3, 3, -10, 8, -3, 3, 0, -12, 8, -10, 15, -9, 5, 11, 8, -4, -13]);
ECSearch("13.1-a",(13)*OK+(w + 3)*OK,[0, -4, -2, 1, 3, -1, -2, 8, -8, 0, 8, 8, -7, 3, -8, -4, 1, 7, -6, -14, 4, -6, 13, -9, 13, -1, 0, -4, 17]);
ECSearch("13.1-b",(13)*OK+(w + 3)*OK,[0, 4, 2, 1, 3, -1, 2, -8, 8, 0, -8, -8, -7, 3, 8, 4, 1, 7, 6, 14, -4, 6, 13, -9, 13, -1, 0, 4, 17]);
ECSearch("13.2-a",(13)*OK+(w + 10)*OK,[0, -2, -4, 3, 1, -1, -2, -8, 8, 8, 0, 8, 3, -7, -4, -8, 7, 1, -14, -6, -6, 4, -9, 13, -1, 13, -4, 0, 17]);
ECSearch("13.2-b",(13)*OK+(w + 10)*OK,[0, 2, 4, 3, 1, -1, 2, 8, -8, -8, 0, -8, 3, -7, 4, 8, 7, 1, 14, 6, 6, -4, -9, 13, -1, 13, 4, 0, 17]);
ECSearch("20.1-a",(10)*OK+(2*w + 4)*OK,[4, 5, 3, 1, -2, 6, -4, -2, -6, 4, 6, -5, -9, -2, 4, -5, -3, 2, 6, -8, 2, -9, 3, -9, 9, -4, -20, -17]);
ECSearch("20.1-b",(10)*OK+(2*w + 4)*OK,[-4, 5, 3, 1, 2, -6, 4, 2, 6, -4, -6, -5, -9, 2, -4, -5, -3, -2, -6, 8, -2, -9, 3, -9, 9, 4, 20, -17]);
ECSearch("20.2-a",(10)*OK+(2*w + 6)*OK,[4, 3, 5, 1, 6, -2, -2, -4, 4, -6, 6, -9, -5, 4, -2, -3, -5, 6, 2, 2, -8, 3, -9, 9, -9, -20, -4, -17]);
ECSearch("20.2-b",(10)*OK+(2*w + 6)*OK,[-4, 3, 5, 1, -6, 2, 2, 4, -4, 6, -6, -9, -5, -4, 2, -3, -5, -6, -2, -2, 8, 3, -9, 9, -9, 20, 4, -17]);
ECSearch("25.2-a",(w + 7)*OK,[-2, 2, -3, 3, 5, 6, 6, -6, 6, -4, 4, 12, 3, 3, -6, -6, 3, -3, 4, -4, 0, 0, 3, 3, -9, 9, -6, 6, -13]);
ECSearch("25.2-b",(w + 7)*OK,[2, -2, -3, 3, 5, -6, -6, 6, -6, 4, -4, -12, 3, 3, 6, 6, 3, -3, -4, 4, 0, 0, 3, 3, -9, 9, 6, -6, -13]);
ECSearch("25.3-a",(w - 7)*OK,[-2, 2, 3, -3, 5, 6, 6, 6, -6, 4, -4, 12, 3, 3, -6, -6, -3, 3, -4, 4, 0, 0, 3, 3, 9, -9, 6, -6, -13]);
ECSearch("25.3-b",(w - 7)*OK,[2, -2, 3, -3, 5, -6, -6, -6, 6, -4, 4, -12, 3, 3, 6, 6, -3, 3, 4, -4, 0, 0, 3, 3, 9, -9, -6, 6, -13]);
ECSearch("28.1-a",(-2*w - 18)*OK,[0, 3, 2, 1, 4, -2, 7, 7, 6, 9, -5, -9, 6, 10, 1, -9, 0, -3, 9, -2, -14, 0, -6, -1, 2, -14, 7, -10]);
ECSearch("28.1-b",(-2*w - 18)*OK,[0, -3, 2, 1, -4, 2, -7, -7, -6, -9, 5, -9, 6, -10, -1, -9, 0, 3, -9, 2, 14, 0, -6, -1, 2, 14, -7, -10]);
ECSearch("28.2-a",(2*w - 18)*OK,[3, 0, 2, 1, -2, 4, 7, 7, 9, 6, -5, 6, -9, 1, 10, 0, -9, 9, -3, -14, -2, -6, 0, 2, -1, 7, -14, -10]);
ECSearch("28.2-b",(2*w - 18)*OK,[-3, 0, 2, 1, 2, -4, -7, -7, -9, -6, 5, 6, -9, -1, -10, 0, -9, -9, 3, 14, 2, -6, 0, 2, -1, -7, 14, -10]);
ECSearch("32.1-a",(8)*OK+(4*w)*OK,[-2, -2, 0, 0, -6, 6, 6, 0, 0, -10, -10, -2, 10, 10, 0, 0, 0, 0, 0, 0, -10, -10, 0, 0, -6, -6, 6, 6, -22]);
ECSearch("32.1-b",(8)*OK+(4*w)*OK,[2, 2, 0, 0, -6, -6, -6, 0, 0, 10, 10, 2, 10, 10, 0, 0, 0, 0, 0, 0, 10, 10, 0, 0, -6, -6, -6, -6, -22]);