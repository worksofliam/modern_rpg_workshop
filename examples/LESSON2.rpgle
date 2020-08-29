**FREE

Ctl-Opt NOMAIN;

Dcl-Proc SUM Export;
  Dcl-Pi SUM Int(10);
    numa Int(10) const;
    numb Int(10) const;
  End-Pi;

  return numa + numb;
End-Proc;