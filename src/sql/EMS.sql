/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2005                    */
/* Created on:     2015/7/1 23:24:20                            */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.classTeam') and o.name = 'FK_CLASSTEA_REFERENCE_PROFESSI')
alter table dbo.classTeam
   drop constraint FK_CLASSTEA_REFERENCE_PROFESSI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.classTeam') and o.name = 'FK_CLASSTEA_REFERENCE_TEACHER')
alter table dbo.classTeam
   drop constraint FK_CLASSTEA_REFERENCE_TEACHER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.course') and o.name = 'FK_COURSE_REFERENCE_BOOK')
alter table dbo.course
   drop constraint FK_COURSE_REFERENCE_BOOK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('exam') and o.name = 'FK_EXAM_REFERENCE_SYLLABUS')
alter table exam
   drop constraint FK_EXAM_REFERENCE_SYLLABUS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('exam') and o.name = 'FK_EXAM_REFERENCE_TEACHER')
alter table exam
   drop constraint FK_EXAM_REFERENCE_TEACHER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.student') and o.name = 'FK_STUDENT_REFERENCE_CLASSTEA')
alter table dbo.student
   drop constraint FK_STUDENT_REFERENCE_CLASSTEA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.student') and o.name = 'FK_STUDENT_REFERENCE_USER')
alter table dbo.student
   drop constraint FK_STUDENT_REFERENCE_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.syllabus') and o.name = 'FK_SYLLABUS_REFERENCE_CLASSTEA')
alter table dbo.syllabus
   drop constraint FK_SYLLABUS_REFERENCE_CLASSTEA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.syllabus') and o.name = 'FK_SYLLABUS_REFERENCE_COURSE')
alter table dbo.syllabus
   drop constraint FK_SYLLABUS_REFERENCE_COURSE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.syllabus') and o.name = 'FK_SYLLABUS_REFERENCE_TEACHER')
alter table dbo.syllabus
   drop constraint FK_SYLLABUS_REFERENCE_TEACHER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.teacher') and o.name = 'FK_TEACHER_REFERENCE_USER')
alter table dbo.teacher
   drop constraint FK_TEACHER_REFERENCE_USER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.account')
            and   type = 'U')
   drop table dbo.account
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.book')
            and   type = 'U')
   drop table dbo.book
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.classTeam')
            and   type = 'U')
   drop table dbo.classTeam
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.classroom')
            and   type = 'U')
   drop table dbo.classroom
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.course')
            and   type = 'U')
   drop table dbo.course
go

if exists (select 1
            from  sysobjects
           where  id = object_id('exam')
            and   type = 'U')
   drop table exam
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.laboratory')
            and   type = 'U')
   drop table dbo.laboratory
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.profession')
            and   type = 'U')
   drop table dbo.profession
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.student')
            and   type = 'U')
   drop table dbo.student
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.syllabus')
            and   type = 'U')
   drop table dbo.syllabus
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.teacher')
            and   type = 'U')
   drop table dbo.teacher
go

execute sp_revokedbaccess dbo
go

/*==============================================================*/
/* User: dbo                                                    */
/*==============================================================*/
execute sp_grantdbaccess dbo
go

/*==============================================================*/
/* Table: account                                               */
/*==============================================================*/
create table dbo.account (
   userId               int                  not null,
   password             varchar(64)          null,
   kind                 varchar(4)           null,
   constraint PK_USER primary key nonclustered (userId)
         WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY],
   constraint CKC_KIND_USER check ([kind] IS NULL OR ([kind]='主管院长' OR [kind]='教研室主任' OR [kind]='教务干事' OR [kind]='学生' OR [kind]='老师'))
)
ON [PRIMARY]
END
go

/*==============================================================*/
/* Table: book                                                  */
/*==============================================================*/
create table dbo.book (
   bookId               int                  identity,
   name                 varchar(50)          not null,
   author               varchar(50)          not null,
   price                float                null,
   version              int                  not null,
   publish              varchar(50)          not null,
   constraint PK_book primary key (bookId)
         WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
)
ON [PRIMARY]
END
go

/*==============================================================*/
/* Table: classTeam                                             */
/*==============================================================*/
create table dbo.classTeam (
   classId              int                  not null,
   proId                int                  null,
   instructor           int                  null,
   name                 varchar(50)          null,
   grade                int                  null,
   constraint PK_CLASSTEAM primary key nonclustered (classId)
         WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
)
ON [PRIMARY]
END
go

/*==============================================================*/
/* Table: classroom                                             */
/*==============================================================*/
create table dbo.classroom (
   classroomId          varchar(10)          not null,
   constraint PK_CLASSROOM primary key nonclustered (classroomId)
         WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
)
ON [PRIMARY]
END
go

/*==============================================================*/
/* Table: course                                                */
/*==============================================================*/
create table dbo.course (
   courseId             int                  not null,
   bookId               int                  null,
   name                 varchar(50)          null,
   instruction          varchar(200)         null,
   teachPlan            varchar(1000)        null,
   constraint PK_COURSE primary key (courseId)
         WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
)
ON [PRIMARY]
END
go

/*==============================================================*/
/* Table: exam                                                  */
/*==============================================================*/
create table exam (
   examId               int                  identity,
   syllabusId           int                  null,
   teaId                int                  null,
   time                 datatime             null,
   classroom            varchar(10)          null,
   constraint PK_EXAM primary key (examId)
)
go

/*==============================================================*/
/* Table: laboratory                                            */
/*==============================================================*/
create table dbo.laboratory (
   laboratoryId         varchar(10)          not null,
   constraint PK_LABORATORY primary key nonclustered (laboratoryId)
         WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
)
ON [PRIMARY]
END
go

/*==============================================================*/
/* Table: profession                                            */
/*==============================================================*/
create table dbo.profession (
   proId                int                  not null,
   name                 varchar(50)          null,
   introduction         varchar(500)         null,
   teachPlan            varchar(2000)        null,
   constraint PK_PROFESSION primary key nonclustered (proId)
         WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
)
ON [PRIMARY]
END
go

/*==============================================================*/
/* Table: student                                               */
/*==============================================================*/
create table dbo.student (
   stuId                int                  not null,
   classId              int                  null,
   userId               int                  null,
   name                 varchar(20)          null,
   age                  int                  null,
   address              varchar(200)         null,
   constraint PK_STUDENT primary key nonclustered (stuId)
         WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
)
ON [PRIMARY]
END
go

/*==============================================================*/
/* Table: syllabus                                              */
/*==============================================================*/
create table dbo.syllabus (
   syllabusId           int                  not null,
   courseId             int                  null,
   classId              int                  null,
   teaId                int                  null,
   time                 timestamp            null,
   hour                 int                  null,
   classroom            varchar(10)          null,
   constraint PK_SYLLABUS primary key (syllabusId)
         WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
)
ON [PRIMARY]
END
go

/*==============================================================*/
/* Table: teacher                                               */
/*==============================================================*/
create table dbo.teacher (
   teaId                int                  not null,
   userId               int                  null,
   name                 varchar(20)          null,
   age                  int                  null,
   rank                 varchar(20)          null,
   constraint PK_TEACHER primary key nonclustered (teaId)
         WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
)
ON [PRIMARY]
END
go

alter table dbo.classTeam
   add constraint FK_CLASSTEA_REFERENCE_PROFESSI foreign key (proId)
      references dbo.profession (proId)
go

alter table dbo.classTeam
   add constraint FK_CLASSTEA_REFERENCE_TEACHER foreign key (instructor)
      references dbo.teacher (teaId)
go

alter table dbo.course
   add constraint FK_COURSE_REFERENCE_BOOK foreign key (bookId)
      references dbo.book (bookId)
go

alter table exam
   add constraint FK_EXAM_REFERENCE_SYLLABUS foreign key (syllabusId)
      references dbo.syllabus (syllabusId)
go

alter table exam
   add constraint FK_EXAM_REFERENCE_TEACHER foreign key (teaId)
      references dbo.teacher (teaId)
go

alter table dbo.student
   add constraint FK_STUDENT_REFERENCE_CLASSTEA foreign key (classId)
      references dbo.classTeam (classId)
go

alter table dbo.student
   add constraint FK_STUDENT_REFERENCE_USER foreign key (userId)
      references dbo.account (userId)
go

alter table dbo.syllabus
   add constraint FK_SYLLABUS_REFERENCE_CLASSTEA foreign key (classId)
      references dbo.classTeam (classId)
go

alter table dbo.syllabus
   add constraint FK_SYLLABUS_REFERENCE_COURSE foreign key (courseId)
      references dbo.course (courseId)
go

alter table dbo.syllabus
   add constraint FK_SYLLABUS_REFERENCE_TEACHER foreign key (teaId)
      references dbo.teacher (teaId)
go

alter table dbo.teacher
   add constraint FK_TEACHER_REFERENCE_USER foreign key (userId)
      references dbo.account (userId)
go

