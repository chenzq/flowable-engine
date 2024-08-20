drop index FLW_IDX_BATCH_PART on FLW_RU_BATCH_PART;

alter table FLW_RU_BATCH_PART
    drop foreign key FLW_FK_BATCH_PART_PARENT;

drop table if exists FLW_RU_BATCH_PART;
drop table if exists FLW_RU_BATCH;

drop index ACT_IDX_ENT_LNK_SCOPE on ACT_RU_ENTITYLINK;
drop index ACT_IDX_ENT_LNK_REF_SCOPE on ACT_RU_ENTITYLINK;
drop index ACT_IDX_ENT_LNK_ROOT_SCOPE on ACT_RU_ENTITYLINK;
drop index ACT_IDX_ENT_LNK_SCOPE_DEF on ACT_RU_ENTITYLINK;

drop table if exists ACT_RU_ENTITYLINK;

drop index ACT_IDX_HI_ENT_LNK_SCOPE on ACT_HI_ENTITYLINK;
drop index ACT_IDX_HI_ENT_LNK_REF_SCOPE on ACT_HI_ENTITYLINK;
drop index ACT_IDX_HI_ENT_LNK_ROOT_SCOPE on ACT_HI_ENTITYLINK;
drop index ACT_IDX_HI_ENT_LNK_SCOPE_DEF on ACT_HI_ENTITYLINK;

drop table if exists ACT_HI_ENTITYLINK;

drop index ACT_IDX_EVENT_SUBSCR_CONFIG_ on ACT_RU_EVENT_SUBSCR;
drop index ACT_IDX_EVENT_SUBSCR_SCOPEREF_ on ACT_RU_EVENT_SUBSCR;

drop table if exists ACT_RU_EVENT_SUBSCR;

drop index ACT_IDX_IDENT_LNK_USER on ACT_RU_IDENTITYLINK;
drop index ACT_IDX_IDENT_LNK_GROUP on ACT_RU_IDENTITYLINK;
drop index ACT_IDX_IDENT_LNK_SCOPE on ACT_RU_IDENTITYLINK;
drop index ACT_IDX_IDENT_LNK_SUB_SCOPE on ACT_RU_IDENTITYLINK;
drop index ACT_IDX_IDENT_LNK_SCOPE_DEF on ACT_RU_IDENTITYLINK;

drop table if exists ACT_RU_IDENTITYLINK;

drop index ACT_IDX_HI_IDENT_LNK_USER on ACT_HI_IDENTITYLINK;
drop index ACT_IDX_HI_IDENT_LNK_SCOPE on ACT_HI_IDENTITYLINK;
drop index ACT_IDX_HI_IDENT_LNK_SUB_SCOPE on ACT_HI_IDENTITYLINK;
drop index ACT_IDX_HI_IDENT_LNK_SCOPE_DEF on ACT_HI_IDENTITYLINK;

drop table if exists ACT_HI_IDENTITYLINK;

alter table ACT_RU_JOB
    drop foreign key ACT_FK_JOB_EXCEPTION;

alter table ACT_RU_JOB
    drop foreign key ACT_FK_JOB_CUSTOM_VALUES;

alter table ACT_RU_TIMER_JOB
    drop foreign key ACT_FK_TIMER_JOB_EXCEPTION;

alter table ACT_RU_TIMER_JOB
    drop foreign key ACT_FK_TIMER_JOB_CUSTOM_VALUES;

alter table ACT_RU_SUSPENDED_JOB
    drop foreign key ACT_FK_SUSPENDED_JOB_EXCEPTION;

alter table ACT_RU_SUSPENDED_JOB
    drop foreign key ACT_FK_SUSPENDED_JOB_CUSTOM_VALUES;

alter table ACT_RU_DEADLETTER_JOB
    drop foreign key ACT_FK_DEADLETTER_JOB_EXCEPTION;

alter table ACT_RU_DEADLETTER_JOB
    drop foreign key ACT_FK_DEADLETTER_JOB_CUSTOM_VALUES;

alter table ACT_RU_EXTERNAL_JOB
    drop foreign key ACT_FK_EXTERNAL_JOB_EXCEPTION;

alter table ACT_RU_EXTERNAL_JOB
    drop foreign key ACT_FK_EXTERNAL_JOB_CUSTOM_VALUES;

drop index ACT_IDX_JOB_EXCEPTION_STACK_ID on ACT_RU_JOB;
drop index ACT_IDX_JOB_CUSTOM_VALUES_ID on ACT_RU_JOB;
drop index ACT_IDX_JOB_CORRELATION_ID on ACT_RU_JOB;
drop index ACT_IDX_JOB_SCOPE on ACT_RU_JOB;
drop index ACT_IDX_JOB_SUB_SCOPE on ACT_RU_JOB;
drop index ACT_IDX_JOB_SCOPE_DEF on ACT_RU_JOB;

drop index ACT_IDX_TIMER_JOB_EXCEPTION_STACK_ID on ACT_RU_TIMER_JOB;
drop index ACT_IDX_TIMER_JOB_CUSTOM_VALUES_ID on ACT_RU_TIMER_JOB;
drop index ACT_IDX_TIMER_JOB_CORRELATION_ID on ACT_RU_TIMER_JOB;
drop index ACT_IDX_TIMER_JOB_DUEDATE on ACT_RU_TIMER_JOB;
drop index ACT_IDX_TJOB_SCOPE on ACT_RU_TIMER_JOB;
drop index ACT_IDX_TJOB_SUB_SCOPE on ACT_RU_TIMER_JOB;
drop index ACT_IDX_TJOB_SCOPE_DEF on ACT_RU_TIMER_JOB;

drop index ACT_IDX_SUSPENDED_JOB_EXCEPTION_STACK_ID on ACT_RU_SUSPENDED_JOB;
drop index ACT_IDX_SUSPENDED_JOB_CUSTOM_VALUES_ID on ACT_RU_SUSPENDED_JOB;
drop index ACT_IDX_SUSPENDED_JOB_CORRELATION_ID on ACT_RU_SUSPENDED_JOB;
drop index ACT_IDX_SJOB_SCOPE on ACT_RU_SUSPENDED_JOB;
drop index ACT_IDX_SJOB_SUB_SCOPE on ACT_RU_SUSPENDED_JOB;
drop index ACT_IDX_SJOB_SCOPE_DEF on ACT_RU_SUSPENDED_JOB;

drop index ACT_IDX_DEADLETTER_JOB_EXCEPTION_STACK_ID on ACT_RU_DEADLETTER_JOB;
drop index ACT_IDX_DEADLETTER_JOB_CUSTOM_VALUES_ID on ACT_RU_DEADLETTER_JOB;
drop index ACT_IDX_DEADLETTER_JOB_CORRELATION_ID on ACT_RU_DEADLETTER_JOB;
drop index ACT_IDX_DJOB_SCOPE on ACT_RU_DEADLETTER_JOB;
drop index ACT_IDX_DJOB_SUB_SCOPE on ACT_RU_DEADLETTER_JOB;
drop index ACT_IDX_DJOB_SCOPE_DEF on ACT_RU_DEADLETTER_JOB;

drop index ACT_IDX_EXTERNAL_JOB_EXCEPTION_STACK_ID on ACT_RU_EXTERNAL_JOB;
drop index ACT_IDX_EXTERNAL_JOB_CUSTOM_VALUES_ID on ACT_RU_EXTERNAL_JOB;
drop index ACT_IDX_EXTERNAL_JOB_CORRELATION_ID on ACT_RU_EXTERNAL_JOB;
drop index ACT_IDX_EJOB_SCOPE on ACT_RU_EXTERNAL_JOB;
drop index ACT_IDX_EJOB_SUB_SCOPE on ACT_RU_EXTERNAL_JOB;
drop index ACT_IDX_EJOB_SCOPE_DEF on ACT_RU_EXTERNAL_JOB;

drop table if exists ACT_RU_JOB;
drop table if exists ACT_RU_TIMER_JOB;
drop table if exists ACT_RU_SUSPENDED_JOB;
drop table if exists ACT_RU_DEADLETTER_JOB;
drop table if exists ACT_RU_HISTORY_JOB;
drop table if exists ACT_RU_EXTERNAL_JOB;

drop index ACT_IDX_TASK_CREATE on ACT_RU_TASK;
drop index ACT_IDX_TASK_SCOPE on ACT_RU_TASK;
drop index ACT_IDX_TASK_SUB_SCOPE on ACT_RU_TASK;
drop index ACT_IDX_TASK_SCOPE_DEF on ACT_RU_TASK;

drop table if exists ACT_RU_TASK;

drop index ACT_IDX_ACT_HI_TSK_LOG_TASK on ACT_HI_TSK_LOG;

drop table if exists ACT_HI_TSK_LOG;

drop index ACT_IDX_HI_TASK_SCOPE on ACT_HI_TASKINST;
drop index ACT_IDX_HI_TASK_SUB_SCOPE on ACT_HI_TASKINST;
drop index ACT_IDX_HI_TASK_SCOPE_DEF on ACT_HI_TASKINST;

drop table if exists ACT_HI_TASKINST;

alter table ACT_RU_VARIABLE
    drop FOREIGN KEY ACT_FK_VAR_BYTEARRAY;
    
drop index ACT_IDX_RU_VAR_SCOPE_ID_TYPE on ACT_RU_VARIABLE;
drop index ACT_IDX_RU_VAR_SUB_ID_TYPE on ACT_RU_VARIABLE;    

drop table if exists ACT_RU_VARIABLE;

drop index ACT_IDX_HI_PROCVAR_NAME_TYPE on ACT_HI_VARINST;
drop index ACT_IDX_HI_VAR_SCOPE_ID_TYPE on ACT_HI_VARINST;
drop index ACT_IDX_HI_VAR_SUB_ID_TYPE on ACT_HI_VARINST;

drop table if exists ACT_HI_VARINST;


drop table if exists ACT_GE_BYTEARRAY;
drop table if exists ACT_GE_PROPERTY;

