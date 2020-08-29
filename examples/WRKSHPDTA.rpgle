**FREE

Dcl-Ds Activity_t Qualified Template;
  number int(5);
  keyword char(6);
  description varchar(20);
End-Ds;

Dcl-Ds Department_t Qualified Template;
  number Char(3);
  name varchar(36);
  manager_number char(6); //Nullable
  parent_department char(3);
  location char(16); //Nullable
End-ds;

Dcl-Pr GetActivity LikeDS(Activity_t) ExtProc;
  number Like(Activity_t.number) const;
End-Pr;

Dcl-Pr Department_IsOk Ind ExtProc;
End-Pr;

Dcl-Pr Department_Open Ind ExtProc;
End-Pr;

Dcl-Pr Department_FetchNext LikeDS(Department_t) ExtProc;
End-Pr;

Dcl-Pr Department_Close ExtProc;
End-Pr;