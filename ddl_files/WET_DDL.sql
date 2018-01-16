/*
Data Store: WET
Created: 2017-02-13T15:19:57.695Z
By: markv.admin
Appian Version: 16.3.0.0
Target Database: MySQL 5.7.16-log
Database Driver: MySQL Connector Java mysql-connector-java-5.1.39 ( Revision: 3289a357af6d09ecc1a10fd3c26e95183e5790ad )
*/

/* UPDATE DDL */
/* DROP AND CREATE DDL */
/* WARNING: The DDL commented out below will drop and re-create all tables.
    drop table if exists `WET_ACTIVITY_VW`;

    drop table if exists `WET_ACTIVITY`;

    drop table if exists `WET_ASSOCIATIONS_HISTORY_VW`;

    drop table if exists `WET_ASSOCIATION`;

    drop table if exists `WET_COMMENT`;

    drop table if exists `WET_EVENT`;

    drop table if exists `WET_REF_ACTIVITY_TYPE`;

    drop table if exists `WET_REF_COMMENT_TYPE`;

    drop table if exists `WET_REF_ENTITY_TYPE`;

    drop table if exists `WET_REF_EVENT_TYPE`;

    create table `WET_ACTIVITY_VW` (
        `ACTIVITY_ID` integer not null auto_increment,
        `ACTIVITY_TYPE_ID` integer,
        `ACTIVITY_TYPE` varchar(255),
        `APN_FOLDER_ID` integer,
        `CONTEXT_ENTITY_TYPE` integer,
        `CONTEXT_ENTITY_ID` varchar(255),
        primary key (`ACTIVITY_ID`)
    ) ENGINE=InnoDB;

    create table `WET_ACTIVITY` (
        `ACTIVITY_ID` integer not null auto_increment,
        `ACTIVITY_TYPE_ID` integer,
        `APN_FOLDER_ID` integer,
        `CONTEXT_ENTITY_TYPE` integer,
        `CONTEXT_ENTITY_ID` varchar(255),
        primary key (`ACTIVITY_ID`)
    ) ENGINE=InnoDB;

    create table `WET_ASSOCIATIONS_HISTORY_VW` (
        `EVENT_ID` integer not null,
        `ASSOC_ID` integer,
        `EVENT` varchar(255),
        `ACTION` varchar(255),
        `STATUS` varchar(255),
        `ENTITY1_ID` varchar(255),
        `ENTITY2_ID` varchar(255),
        `ASSIGNEE` varchar(255),
        `START_TIME` datetime,
        `COMPLETE_TIME` datetime,
        primary key (`EVENT_ID`)
    ) ENGINE=InnoDB;

    create table `WET_ASSOCIATION` (
        `ASSOCIATION_ID` integer not null auto_increment,
        `ACTIVITY_ID` integer,
        `ASSOCIATION_ENTITY_ID_1` varchar(255),
        `ASSOCIATION_ENTITY_ID_2` varchar(255),
        primary key (`ASSOCIATION_ID`)
    ) ENGINE=InnoDB;

    create table `WET_COMMENT` (
        `COMMENT_ID` integer not null auto_increment,
        `COMMENT_TYPE_ID` integer,
        `EVENT_ID` integer,
        `COMMENT` nvarchar(4000),
        primary key (`COMMENT_ID`)
    ) ENGINE=InnoDB;

    create table `WET_EVENT` (
        `EVENT_ID` integer not null auto_increment,
        `ACTIVITY_ID` integer,
        `EVENT_TYPE_ID` integer,
        `ASSOCIATION_ID` integer,
        `DESCRIPTION` varchar(255),
        `ACTION` varchar(255),
        `START_DTTM` datetime,
        `END_DTTM` datetime,
        `EVENT_OWNER` varchar(255),
        `TASK_LAG_TIME` datetime,
        `TASK_ASSIGNEE` varchar(255),
        primary key (`EVENT_ID`)
    ) ENGINE=InnoDB;

    create table `WET_REF_ACTIVITY_TYPE` (
        `ACTIVITY_TYPE_ID` integer not null auto_increment,
        `ACTIVITY_TYPE` varchar(255),
        `DESCRIPTION` varchar(255),
        `APPLICATION_NAME` varchar(255),
        `RELEASE_NUMBER` double precision,
        `ASSOCIATION_ENTITY_TYPE_1_ID` integer,
        `ASSOCIATION_ENTITY_TYPE_2_ID` integer,
        primary key (`ACTIVITY_TYPE_ID`)
    ) ENGINE=InnoDB;

    create table `WET_REF_COMMENT_TYPE` (
        `COMMENT_TYPE_ID` integer not null auto_increment,
        `DESCRIPTION` varchar(255),
        primary key (`COMMENT_TYPE_ID`)
    ) ENGINE=InnoDB;

    create table `WET_REF_ENTITY_TYPE` (
        `ENTITY_TYPE_ID` integer not null auto_increment,
        `NAME` varchar(255),
        `DESCRIPTION` varchar(255),
        primary key (`ENTITY_TYPE_ID`)
    ) ENGINE=InnoDB;

    create table `WET_REF_EVENT_TYPE` (
        `EVENT_TYPE_ID` integer not null auto_increment,
        `CLASS` varchar(255),
        `SUB_CLASS` varchar(255),
        `SORT_ORDER` integer,
        `ACTIVE` boolean,
        primary key (`EVENT_TYPE_ID`)
    ) ENGINE=InnoDB;
*/
