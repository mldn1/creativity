drop table if exists task;
create TABLE task(
    taskid BIGINT AUTO_INCREMENT ,
    rid BIGINT ,
    founder BIGINT ,
    assigned BIGINT ,
    finisher BIGINT ,
    title VARCHAR(100) ,
    description TEXT ,
    type int ,
    note TEXT ,
    period int ,
    workhours int ,
    startdate DATETIME ,
    enddate DATETIME ,
    send BIGINT ,
    appendix VARCHAR(100) ,
    state int ,
    CONSTRAINT pk_taskid PRIMARY KEY(taskid)
)engine=innodb ;

drop table if exists task_state;
create TABLE task_state(
    tsid int AUTO_INCREMENT ,
    title varchar(100) ,
    CONSTRAINT pk_tsid PRIMARY KEY(tsid)
)engine=innodb ;

drop table if exists bug;
create TABLE bug(
    bugid BIGINT AUTO_INCREMENT ,
    rid BIGINT ,
    tid BIGINT ,
    title VARCHAR(100) ,
    period int ,
    createdate DATETIME ,
    state int ,
    founder BIGINT ,
    assigned BIGINT ,
    send BIGINT ,
    completor BIGINT ,
    resolvdate DATETIME ,
    description TEXT ,
    system VARCHAR(100) ,
    browser VARCHAR(100) ,
    CONSTRAINT pk_bugid PRIMARY KEY(bugid)
)engine=innodb ;

drop table if exists bug_state;
create TABLE bug_state(
    bsid int AUTO_INCREMENT ,
    title varchar(100) ,
    CONSTRAINT pk_bsid PRIMARY KEY(bsid)
)engine=innodb ;

drop table if exists text;
create TABLE text(
    docid BIGINT AUTO_INCREMENT ,
    proid BIGINT ,
    title varchar(100) ,
    keyword varchar(100) ,
    type int ,
    founder BIGINT ,
    createdate DATETIME ,
    link varchar (100) ,
    content text ,
    appendix varchar(100) ,
    CONSTRAINT pk_textid PRIMARY KEY(docid)
)engine=innodb ;

drop table if exists version;
create TABLE version(
    verid BIGINT AUTO_INCREMENT ,
    proid BIGINT ,
    founder BIGINT ,
    version varchar(100) ,
    packagedate DATETIME ,
    createdate DATETIME ,
    source varchar(100) ,
    download varchar(100) ,
    distribution varchar (100) ,
    description text ,
    CONSTRAINT pk_verid PRIMARY KEY(verid)
)engine=innodb ;

drop table if exists checkork;
create TABLE checkork(
    coid BIGINT AUTO_INCREMENT ,
    eid BIGINT ,
    datetime DATETIME ,
    state int ,
    ip varchar (15) ,
    CONSTRAINT pk_coid PRIMARY KEY(coid)
)engine=innodb ;

drop table if exists ask_leave;
create TABLE ask_leave(
    alid BIGINT AUTO_INCREMENT ,
    eid BIGINT ,
    type int ,
    startdate DATETIME ,
    enddate DATETIME ,
    reason text ,
    picture varchar(100) ,
    approver BIGINT ,
    note text ,
    state int ,
    result int ,
    progress int ,
    CONSTRAINT pk_alid PRIMARY KEY(alid)
)engine=innodb ;

drop table if exists leave_type;
create TABLE leave_type(
    ltid BIGINT AUTO_INCREMENT ,
    title varchar(100) ,
    CONSTRAINT pk_ltid PRIMARY KEY(ltid)
)engine=innodb ;

drop table if exists overtime;
create TABLE overtime (
    otid BIGINT AUTO_INCREMENT ,
    eid BIGINT ,
    startdate DATETIME ,
    enddate DATETIME ,
    time int ,
    method int ,
    islegalholiday int ,
    reason text ,
    approver BIGINT ,
    note text ,
    state int ,
    result int ,
    progress int ,
    CONSTRAINT pk_otid PRIMARY KEY(otid)
)engine=innodb ;

drop table if exists reimbursement;
create TABLE reimbursement(
    reiid BIGINT AUTO_INCREMENT ,
    eid BIGINT ,
    type varchar(100) ,
    money double ,
    details text ,
    picture varchar(100) ,
    approver BIGINT ,
    note text ,
    state int ,
    result int ,
    progress int ,
    CONSTRAINT pk_reiid PRIMARY KEY(reiid)
)engine=innodb ;

drop table if exists evection;
create TABLE evection(
    eveid BIGINT AUTO_INCREMENT ,
    eid bigint ,
    aim varchar(100) ,
    startdate datetime ,
    endtime datetime ,
    days int ,
    reason text ,
    picture varchar(100) ,
    approver bigint ,
    note text ,
    state int ,
    result int ,
    progress int ,
    CONSTRAINT pk_eveid PRIMARY KEY(eveid)
)engine=innodb ;

drop table if exists trip;
create TABLE trip(
    tripid BIGINT AUTO_INCREMENT ,
    eid BIGINT ,
    aim varchar(100) ,
    startdate datetime ,
    endtime datetime ,
    time int ,
    reason text ,
    picture varchar(100) ,
    approver bigint ,
    note text ,
    state int ,
    result int ,
    progress int ,
    CONSTRAINT pk_tripid PRIMARY KEY(tripid)
)engine=innodb ;

drop table if exists supplies;
create TABLE supplies(
    supid BIGINT AUTO_INCREMENT ,
    eid bigint ,
    purpose varchar(100) ,
    name varchar(100) ,
    count int ,
    details text ,
    picture varchar(100) ,
    approver bigint ,
    note text ,
    state int ,
    result int ,
    progress int ,
    CONSTRAINT pk_supid PRIMARY KEY(supid)
)engine=innodb ;

drop table if exists approval_result;
create TABLE approval_result(
    arid BIGINT AUTO_INCREMENT ,
    result int ,
    CONSTRAINT pk_arid PRIMARY KEY(arid)
)engine=innodb ;

drop table if exists apply_state;
create TABLE apply_state(
    asid BIGINT AUTO_INCREMENT ,
    state int ,
    CONSTRAINT pk_asid PRIMARY KEY(asid)
)engine=innodb ;

drop table if exists resume;
create TABLE resume(
    resid BIGINT AUTO_INCREMENT ,
    name varchar(100) ,
    sex int ,
    phone int(11) ,
    birthday date ,
    eduid int ,
    wyid int ,
    note text ,
    appendix varchar(100) ,
    state int ,
    eid bigint ,
    CONSTRAINT pk_resid PRIMARY KEY(resid)
)engine=innodb ;

drop table if exists education;
create TABLE education(
    eduid BIGINT AUTO_INCREMENT ,
    title varchar (100) ,
    CONSTRAINT pk_eduid PRIMARY KEY(eduid)
)engine=innodb ;

drop table if exists work_years;
create TABLE work_years(
    wyid BIGINT AUTO_INCREMENT ,
    title varchar(100) ,
    CONSTRAINT pk_wyid PRIMARY KEY(wyid)
)engine=innodb ;

drop table if exists resume_state;
create TABLE resume_state(
    rsid BIGINT AUTO_INCREMENT ,
    title varchar(100) ,
    CONSTRAINT pk_rsid PRIMARY KEY(rsid)
)engine=innodb ;

drop table if exists album;
create TABLE album(
    albid BIGINT AUTO_INCREMENT ,
    eid bigint ,
    picture varchar(100) ,
    CONSTRAINT pk_albid PRIMARY KEY(albid)
)engine=innodb ;