**FREE

ctl-opt dftactgrp(*no);

Dcl-Ds person_t qualified template;
  name char(30);
  email varchar(30);
  height zoned(4:2);
end-ds;

dcl-ds person likeds(person_t) dim(5);

person(1).name = 'liam barry';
person(2).name = 'beth';
person(3) = getPerson();
//person(3).name = 'natasha'

Return;

dcl-proc getPerson;
  dcl-pi *n likeds(person_t);
  end-pi;

  dcl-ds returningPerson likeds(person_t);

  returningPerson.name = 'natasha';
  returningPerson.email = 'tash@me.com';
  returningPerson.height = 5.6;

  return returningPerson;
end-proc;