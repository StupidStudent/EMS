/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2015/11/10 21:34:10                          */
/*==============================================================*/


drop table if exists book;

drop table if exists classTeam;

drop table if exists classroom;

drop table if exists course;

drop table if exists exam;

drop table if exists laboratory;

drop table if exists profession;

drop table if exists student;

drop table if exists syllabus;

drop table if exists teacher;

drop table if exists user;

/*==============================================================*/
/* User: dbo                                                    */
/*==============================================================*/
create user dbo;

/*==============================================================*/
/* Table: book                                                  */
/*==============================================================*/
create table book
(
   bookId               int not null auto_increment,
   name                 varchar(50) not null,
   author               varchar(50) not null,
   price                float,
   version              int not null,
   publish              varchar(50) not null,
   primary key (bookId)
);

/*==============================================================*/
/* Table: classTeam                                             */
/*==============================================================*/
create table classTeam
(
   classId              int not null,
   proId                int,
   instructor           int,
   name                 varchar(50),
   grade                int,
   primary key (classId)
);

/*==============================================================*/
/* Table: classroom                                             */
/*==============================================================*/
create table classroom
(
   classroomId          varchar(10) not null,
   primary key (classroomId)
);

/*==============================================================*/
/* Table: course                                                */
/*==============================================================*/
create table course
(
   courseId             int not null,
   bookId               int,
   name                 varchar(50),
   instruction          varchar(200),
   teachPlan            varchar(1000),
   primary key (courseId)
);

/*==============================================================*/
/* Table: exam                                                  */
/*==============================================================*/
create table exam
(
   examId               int not null auto_increment,
   syllabusId           int,
   teaId                int,
   time                 datatime,
   classroom            varchar(10),
   primary key (examId)
);

/*==============================================================*/
/* Table: laboratory                                            */
/*==============================================================*/
create table laboratory
(
   laboratoryId         varchar(10) not null,
   primary key (laboratoryId)
);

/*==============================================================*/
/* Table: profession                                            */
/*==============================================================*/
create table profession
(
   proId                int not null,
   name                 varchar(50),
   introduction         varchar(500),
   teachPlan            varchar(2000),
   primary key (proId)
);

/*==============================================================*/
/* Table: student                                               */
/*==============================================================*/
create table student
(
   stuId                int not null,
   classId              int,
   userId               int,
   name                 varchar(20),
   age                  int,
   address              varchar(200),
   primary key (stuId)
);

/*==============================================================*/
/* Table: syllabus                                              */
/*==============================================================*/
create table syllabus
(
   syllabusId           int not null,
   courseId             int,
   classId              int,
   teaId                int,
   time                 timestamp,
   hour                 int,
   classroom            varchar(10),
   primary key (syllabusId)
);

/*==============================================================*/
/* Table: teacher                                               */
/*==============================================================*/
create table teacher
(
   teaId                int not null,
   userId               int,
   name                 varchar(20),
   age                  int,
   rank                 varchar(20),
   primary key (teaId)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   userId               int not null,
   password             varchar(64),
   kind                 varchar(4),
   primary key (userId),
   check ([kind] IS NULL OR ([kind]='主管院长' OR [kind]='教研室主任' OR [kind]='教务干事' OR [kind]='学生' OR [kind]='老师'))
);

alter table classTeam add constraint FK_CLASSTEA_REFERENCE_PROFESSI foreign key (proId)
      references profession (proId);

alter table classTeam add constraint FK_CLASSTEA_REFERENCE_TEACHER foreign key (instructor)
      references teacher (teaId);

alter table course add constraint FK_Reference_9 foreign key (bookId)
      references book (bookId);

alter table exam add constraint FK_Reference_10 foreign key (syllabusId)
      references syllabus (syllabusId);

alter table exam add constraint FK_Reference_11 foreign key (teaId)
      references teacher (teaId);

alter table student add constraint FK_STUDENT_REFERENCE_CLASSTEA foreign key (classId)
      references classTeam (classId);

alter table student add constraint FK_STUDENT_REFERENCE_USER foreign key (userId)
      references user (userId);

alter table syllabus add constraint FK_SYLLABUS_REFERENCE_CLASSTEA foreign key (classId)
      references classTeam (classId);

alter table syllabus add constraint FK_SYLLABUS_REFERENCE_COURSE foreign key (courseId)
      references course (courseId);

alter table syllabus add constraint FK_SYLLABUS_REFERENCE_TEACHER foreign key (teaId)
      references teacher (teaId);

alter table teacher add constraint FK_TEACHER_REFERENCE_USER foreign key (userId)
      references user (userId);

