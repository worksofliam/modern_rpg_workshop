**FREE

Ctl-Opt DFTACTGRP(*No) BNDDIR('WORKSHOP');

/copy qrpgleref,wrkshpdta

Dcl-ds activity likeds(Activity_t);

activity.number = 120;

activity = GetActivity(activity.number);

Return;