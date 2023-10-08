CREATE TABLE `user_db` (
   `user_ID`   INT   NOT NULL   COMMENT 'auto_increment',
   `student_ID`   INT   NOT NULL,
   `name`   VARCHAR   NOT NULL,
   `user_type`   VARCHAR   NOT NULL,
   `part`   VARCHAR   NOT NULL,
   `position`   VARCHAR   NULL,
   `office`   VARCHAR   NULL,
   `HP`   INT   NOT NULL,
   `password`   VARCHAR   NOT NULL
);

CREATE TABLE `score_db` (
   `score_ID`   INT   NOT NULL   COMMENT 'auto_increment',
   `user_ID`   INT   NOT NULL   COMMENT,
   `score_title`   VARCHAR   NOT NULL,
   `score_date`   DATE   NOT NULL,
   `score_part`   VARCHAR   NOT NULL,
   `score_content`   VARCHAR   NULL,
   `score_file`   LONGBLOB   NOT NULL
);

CREATE TABLE `update_db` (
   `update_ID`   INT   NOT NULL   COMMENT 'auto_increment',
   `user_ID`   INT   NOT NULL   COMMENT,
   `update_title`   VARCHAR   NOT NULL,
   `update_date`   DATE   NOT NULL,
   `update_part`   VARCHAR   NOT NULL,
   `update_content`   VARCHAR   NULL,
   `update_file`   LONGBLOB   NOT NULL
);

CREATE TABLE `attendance_db` (
   `attendance_ID`   INT   NOT NULL   COMMENT 'auto_increment',
   `user_ID`   INT   NOT NULL   COMMENT,
   `date`   DATE   NOT NULL,
   `attendance`   VARCHAR   NOT NULL   DEFAULT attendance,
   `tardiness`   TIME   NULL
);

CREATE TABLE `request_db` (
   `update_ID`   INT   NOT NULL   COMMENT 'auto_increment',
   `user_ID`   INT   NOT NULL   COMMENT,
   `request_title`   VARCHAR   NOT NULL,
   `request_date`   VARCHAR   NOT NULL,
   `request_content`   VARCHAR   NOT NULL,
   `request_file`   LONGBLOB   NULL,
   `approval`   boolean   NOT NULL   DEFAULT false
);

ALTER TABLE `user_db` ADD CONSTRAINT `PK_USER_DB` PRIMARY KEY (
   `ID`
);

ALTER TABLE `score_db` ADD CONSTRAINT `PK_SCORE_DB` PRIMARY KEY (
   `score_ID`
);

ALTER TABLE `update_db` ADD CONSTRAINT `PK_UPDATE_DB` PRIMARY KEY (
   `update_ID`
);

ALTER TABLE `attendance_db` ADD CONSTRAINT `PK_ATTENDANCE_DB` PRIMARY KEY (
   `attendance_ID`
);

ALTER TABLE `request_db` ADD CONSTRAINT `PK_REQUEST_DB` PRIMARY KEY (
   `update_ID`
);