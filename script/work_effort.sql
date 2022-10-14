/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2022/10/14 16:54:26                          */
/*==============================================================*/


alter table Asset 
   drop foreign key FK_ASSET_REL_13_ASSETTYP;

alter table Asset 
   drop foreign key FK_ASSET_RESOURCE_RESOURCE;

alter table AssetType 
   drop foreign key FK_ASSETTYP_REL_14_ASSETTYP;

alter table Doctor 
   drop foreign key FK_DOCTOR_INHERITAN_ROLE;

alter table Employee 
   drop foreign key FK_EMPLOYEE_INHERITAN_ROLE;

alter table ExternalEmployee 
   drop foreign key FK_EXTERNAL_INHERITAN_ROLE;

alter table Nurse 
   drop foreign key FK_NURSE_INHERITAN_ROLE;

alter table Person 
   drop foreign key FK_PERSON_RESOURCE2_RESOURCE;

alter table ResourceAttribute 
   drop foreign key FK_RESOURCE_REL_8_RESOURCE;

alter table ResourceAttribute 
   drop foreign key FK_RESOURCE_REL_9_RESOURCE;

alter table ResourceAttributeCategory 
   drop foreign key FK_RESOURCE_REL_7_RESOURCE;

alter table ResourceClassification 
   drop foreign key FK_RESOURCE_REL_19_RESOURCE;

alter table ResourceClassification 
   drop foreign key FK_RESOURCE_REL_6_RESOURCE;

alter table ResourceType 
   drop foreign key FK_RESOURCE_REL_18_RESOURCE;

alter table Role 
   drop foreign key FK_ROLE_REL_1_ROLETYPE;

alter table Role 
   drop foreign key FK_ROLE_REL_17_PERSON;

alter table RoleType 
   drop foreign key FK_ROLETYPE_REL_2_ROLETYPE;

alter table SystemUser 
   drop foreign key FK_SYSTEMUS_INHERITAN_ROLE;

alter table UsableRangeRule 
   drop foreign key FK_USABLERA_REL_15_USABLERA;

alter table UsableRangeRule 
   drop foreign key FK_USABLERA_REL_16_RESOURCE;

alter table WorkEffort 
   drop foreign key FK_WORKEFFO_REL_10_SERVICER;

alter table WorkEffortAssignment 
   drop foreign key FK_WORKEFFO_REL_11_WORKEFFO;

alter table WorkEffortAssignment 
   drop foreign key FK_WORKEFFO_REL_12_RESOURCE;


alter table Asset 
   drop foreign key FK_ASSET_REL_13_ASSETTYP;

alter table Asset 
   drop foreign key FK_ASSET_RESOURCE_RESOURCE;

drop table if exists Asset;


alter table AssetType 
   drop foreign key FK_ASSETTYP_REL_14_ASSETTYP;

drop table if exists AssetType;


alter table Doctor 
   drop foreign key FK_DOCTOR_INHERITAN_ROLE;

drop table if exists Doctor;


alter table Employee 
   drop foreign key FK_EMPLOYEE_INHERITAN_ROLE;

drop table if exists Employee;


alter table ExternalEmployee 
   drop foreign key FK_EXTERNAL_INHERITAN_ROLE;

drop table if exists ExternalEmployee;


alter table Nurse 
   drop foreign key FK_NURSE_INHERITAN_ROLE;

drop table if exists Nurse;


alter table Person 
   drop foreign key FK_PERSON_RESOURCE2_RESOURCE;

drop table if exists Person;

drop table if exists Resource;


alter table ResourceAttribute 
   drop foreign key FK_RESOURCE_REL_8_RESOURCE;

alter table ResourceAttribute 
   drop foreign key FK_RESOURCE_REL_9_RESOURCE;

drop table if exists ResourceAttribute;


alter table ResourceAttributeCategory 
   drop foreign key FK_RESOURCE_REL_7_RESOURCE;

drop table if exists ResourceAttributeCategory;


alter table ResourceClassification 
   drop foreign key FK_RESOURCE_REL_6_RESOURCE;

alter table ResourceClassification 
   drop foreign key FK_RESOURCE_REL_19_RESOURCE;

drop table if exists ResourceClassification;


alter table ResourceType 
   drop foreign key FK_RESOURCE_REL_18_RESOURCE;

drop table if exists ResourceType;


alter table Role 
   drop foreign key FK_ROLE_REL_17_PERSON;

alter table Role 
   drop foreign key FK_ROLE_REL_1_ROLETYPE;

drop table if exists Role;


alter table RoleType 
   drop foreign key FK_ROLETYPE_REL_2_ROLETYPE;

drop table if exists RoleType;

drop table if exists ServiceRequirement;


alter table SystemUser 
   drop foreign key FK_SYSTEMUS_INHERITAN_ROLE;

drop table if exists SystemUser;


alter table UsableRangeRule 
   drop foreign key FK_USABLERA_REL_15_USABLERA;

alter table UsableRangeRule 
   drop foreign key FK_USABLERA_REL_16_RESOURCE;

drop table if exists UsableRangeRule;

drop table if exists UsableRangeRuleType;


alter table WorkEffort 
   drop foreign key FK_WORKEFFO_REL_10_SERVICER;

drop table if exists WorkEffort;


alter table WorkEffortAssignment 
   drop foreign key FK_WORKEFFO_REL_11_WORKEFFO;

alter table WorkEffortAssignment 
   drop foreign key FK_WORKEFFO_REL_12_RESOURCE;

drop table if exists WorkEffortAssignment;

/*==============================================================*/
/* Table: Asset                                                 */
/*==============================================================*/
create table Asset
(
   resource_id          bigint not null  comment '',
   asset_type_id        bigint not null  comment '',
   name                 varchar(256)  comment '',
   description          varchar(256)  comment '',
   rate                 float  comment '',
   primary key (resource_id)
);

alter table Asset comment 'Assets can be dynamicly add to system. Those attributes was ';

/*==============================================================*/
/* Table: AssetType                                             */
/*==============================================================*/
create table AssetType
(
   asset_type_id        bigint not null  comment '',
   Ass_asset_type_id    bigint  comment '',
   description          varchar(256)  comment '',
   primary key (asset_type_id)
);

alter table AssetType comment 'Computer
CT Device
Room';

/*==============================================================*/
/* Table: Doctor                                                */
/*==============================================================*/
create table Doctor
(
   role_id              bigint not null  comment '',
   title                varchar(256)  comment '',
   efficiency           varchar(256)  comment '',
   deduction            float  comment '',
   level                smallint  comment '',
   rate                 float  comment '',
   primary key (role_id)
);

/*==============================================================*/
/* Table: Employee                                              */
/*==============================================================*/
create table Employee
(
   role_id              bigint not null  comment '',
   primary key (role_id)
);

/*==============================================================*/
/* Table: ExternalEmployee                                      */
/*==============================================================*/
create table ExternalEmployee
(
   role_id              bigint not null  comment '',
   primary key (role_id)
);

/*==============================================================*/
/* Table: Nurse                                                 */
/*==============================================================*/
create table Nurse
(
   role_id              bigint not null  comment '',
   level                smallint  comment '',
   rate                 float  comment '',
   primary key (role_id)
);

/*==============================================================*/
/* Table: Person                                                */
/*==============================================================*/
create table Person
(
   resource_id          bigint not null  comment '',
   firstName            varchar(256)  comment '',
   lastName             varchar(256)  comment '',
   birthday             varchar(256)  comment '',
   primary key (resource_id)
);

/*==============================================================*/
/* Table: Resource                                              */
/*==============================================================*/
create table Resource
(
   resource_id          bigint not null  comment '',
   primary key (resource_id)
);

alter table Resource comment 'Txonomy
0. Resource type (any: person/doctor/employee/';

/*==============================================================*/
/* Table: ResourceAttribute                                     */
/*==============================================================*/
create table ResourceAttribute
(
   resource_attribute_id bigint not null  comment '',
   resource_id          bigint not null  comment '',
   resource_type_id     bigint not null  comment '',
   resource_attribute_category_id bigint not null  comment '',
   value                varchar(1024)  comment '',
   from_date            date not null  comment '',
   to_date              date  comment '',
   primary key (resource_attribute_id)
);

/*==============================================================*/
/* Table: ResourceAttributeCategory                             */
/*==============================================================*/
create table ResourceAttributeCategory
(
   resource_type_id     bigint not null  comment '',
   resource_attribute_category_id bigint not null  comment '',
   primary key (resource_type_id, resource_attribute_category_id)
);

alter table ResourceAttributeCategory comment 'e.g.
Department
Color
Brand
Manufact';

/*==============================================================*/
/* Table: ResourceClassification                                */
/*==============================================================*/
create table ResourceClassification
(
   resource_type_id     bigint not null  comment '',
   resource_id          bigint not null  comment '',
   from_date            date  comment '',
   to_date              date  comment '',
   primary key (resource_type_id, resource_id)
);

alter table ResourceClassification comment 'A resource may be represented by more type of resource.';

/*==============================================================*/
/* Table: ResourceType                                          */
/*==============================================================*/
create table ResourceType
(
   resource_type_id     bigint not null  comment '',
   Res_resource_type_id bigint  comment '',
   description          varchar(256)  comment '',
   primary key (resource_type_id)
);

alter table ResourceType comment 'e.g.
Assets
Person
Computer
CT Devic';

/*==============================================================*/
/* Table: Role                                                  */
/*==============================================================*/
create table Role
(
   role_id              bigint not null  comment '',
   role_type_id         bigint not null  comment '',
   resource_id          bigint not null  comment '',
   from_date            date not null  comment '',
   to_date              date  comment '',
   primary key (role_id)
);

/*==============================================================*/
/* Table: RoleType                                              */
/*==============================================================*/
create table RoleType
(
   role_type_id         bigint not null  comment '',
   Rol_role_type_id     bigint  comment '',
   name                 varchar(256)  comment '',
   primary key (role_type_id)
);

/*==============================================================*/
/* Table: ServiceRequirement                                    */
/*==============================================================*/
create table ServiceRequirement
(
   service_requirement_id bigint not null  comment '',
   creation_date        date  comment '',
   description          varchar(256)  comment '',
   from_date            date  comment '',
   to_date              date  comment '',
   primary key (service_requirement_id)
);

/*==============================================================*/
/* Table: SystemUser                                            */
/*==============================================================*/
create table SystemUser
(
   role_id              bigint not null  comment '',
   primary key (role_id)
);

/*==============================================================*/
/* Table: UsableRangeRule                                       */
/*==============================================================*/
create table UsableRangeRule
(
   usable_range_rule_type_id bigint not null  comment '',
   resource_id          bigint not null  comment '',
   description          varchar(256)  comment '',
   invertion            bool not null default false  comment 'Excludsion if invertion is true',
   value1               varchar(256)  comment '',
   value2               varchar(256)  comment ''
);

alter table UsableRangeRule comment 'Time avaiable to work of someone
e.g.
1 1 2022-1';

/*==============================================================*/
/* Table: UsableRangeRuleType                                   */
/*==============================================================*/
create table UsableRangeRuleType
(
   usable_range_rule_type_id bigint not null  comment '',
   primary key (usable_range_rule_type_id)
);

alter table UsableRangeRuleType comment 'e.g.
1 Day
2 DayOfWeek
3 Holiday
4 W';

/*==============================================================*/
/* Table: WorkEffort                                            */
/*==============================================================*/
create table WorkEffort
(
   work_effort_id       bigint not null  comment '',
   service_requirement_id bigint not null  comment '',
   from_date            date  comment '',
   to_date              date  comment '',
   primary key (work_effort_id)
);

alter table WorkEffort comment 'NOTICE: foreign key must use UNIQUE.

Per depart';

/*==============================================================*/
/* Table: WorkEffortAssignment                                  */
/*==============================================================*/
create table WorkEffortAssignment
(
   work_effort_assignment_id bigint not null  comment '',
   work_effort_id       bigint not null  comment '',
   resource_id          bigint not null  comment '',
   from_date            date  comment '',
   to_date              date  comment '',
   primary key (work_effort_assignment_id)
);

alter table Asset add constraint FK_ASSET_REL_13_ASSETTYP foreign key (asset_type_id)
      references AssetType (asset_type_id) on delete restrict on update restrict;

alter table Asset add constraint FK_ASSET_RESOURCE_RESOURCE foreign key (resource_id)
      references Resource (resource_id) on delete restrict on update restrict;

alter table AssetType add constraint FK_ASSETTYP_REL_14_ASSETTYP foreign key (Ass_asset_type_id)
      references AssetType (asset_type_id) on delete restrict on update restrict;

alter table Doctor add constraint FK_DOCTOR_INHERITAN_ROLE foreign key (role_id)
      references Role (role_id) on delete restrict on update restrict;

alter table Employee add constraint FK_EMPLOYEE_INHERITAN_ROLE foreign key (role_id)
      references Role (role_id) on delete restrict on update restrict;

alter table ExternalEmployee add constraint FK_EXTERNAL_INHERITAN_ROLE foreign key (role_id)
      references Role (role_id) on delete restrict on update restrict;

alter table Nurse add constraint FK_NURSE_INHERITAN_ROLE foreign key (role_id)
      references Role (role_id) on delete restrict on update restrict;

alter table Person add constraint FK_PERSON_RESOURCE2_RESOURCE foreign key (resource_id)
      references Resource (resource_id) on delete restrict on update restrict;

alter table ResourceAttribute add constraint FK_RESOURCE_REL_8_RESOURCE foreign key (resource_type_id, resource_attribute_category_id)
      references ResourceAttributeCategory (resource_type_id, resource_attribute_category_id) on delete restrict on update restrict;

alter table ResourceAttribute add constraint FK_RESOURCE_REL_9_RESOURCE foreign key (resource_id)
      references Resource (resource_id) on delete restrict on update restrict;

alter table ResourceAttributeCategory add constraint FK_RESOURCE_REL_7_RESOURCE foreign key (resource_type_id)
      references ResourceType (resource_type_id) on delete restrict on update restrict;

alter table ResourceClassification add constraint FK_RESOURCE_REL_19_RESOURCE foreign key (resource_id)
      references Resource (resource_id) on delete restrict on update restrict;

alter table ResourceClassification add constraint FK_RESOURCE_REL_6_RESOURCE foreign key (resource_type_id)
      references ResourceType (resource_type_id) on delete restrict on update restrict;

alter table ResourceType add constraint FK_RESOURCE_REL_18_RESOURCE foreign key (Res_resource_type_id)
      references ResourceType (resource_type_id) on delete restrict on update restrict;

alter table Role add constraint FK_ROLE_REL_1_ROLETYPE foreign key (role_type_id)
      references RoleType (role_type_id) on delete restrict on update restrict;

alter table Role add constraint FK_ROLE_REL_17_PERSON foreign key (resource_id)
      references Person (resource_id) on delete restrict on update restrict;

alter table RoleType add constraint FK_ROLETYPE_REL_2_ROLETYPE foreign key (Rol_role_type_id)
      references RoleType (role_type_id) on delete restrict on update restrict;

alter table SystemUser add constraint FK_SYSTEMUS_INHERITAN_ROLE foreign key (role_id)
      references Role (role_id) on delete restrict on update restrict;

alter table UsableRangeRule add constraint FK_USABLERA_REL_15_USABLERA foreign key (usable_range_rule_type_id)
      references UsableRangeRuleType (usable_range_rule_type_id) on delete restrict on update restrict;

alter table UsableRangeRule add constraint FK_USABLERA_REL_16_RESOURCE foreign key (resource_id)
      references Resource (resource_id) on delete restrict on update restrict;

alter table WorkEffort add constraint FK_WORKEFFO_REL_10_SERVICER foreign key (service_requirement_id)
      references ServiceRequirement (service_requirement_id) on delete restrict on update restrict;

alter table WorkEffortAssignment add constraint FK_WORKEFFO_REL_11_WORKEFFO foreign key (work_effort_id)
      references WorkEffort (work_effort_id) on delete restrict on update restrict;

alter table WorkEffortAssignment add constraint FK_WORKEFFO_REL_12_RESOURCE foreign key (resource_id)
      references Resource (resource_id) on delete restrict on update restrict;

