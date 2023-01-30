function j = jacobiana(x1, x2, x3);
  j = [dpx1f1(x1,x2,x3) dpx2f1(x1,x2,x3) dpx3f1(x1,x2,x3); dpx1f2(x1,x2,x3) dpx2f2(x1,x2,x3) dpx3f2(x1,x2,x3); dpx1f3(x1,x2,x3) dpx2f3(x1,x2,x3) dpx3f3(x1,x2,x3)];
end