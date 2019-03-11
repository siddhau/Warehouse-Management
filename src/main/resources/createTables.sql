USE warehouse;

CREATE TABLE WAREHOUSE (
  ID varchar(36) NOT NULL,
  WAREHOUSE_KEY varchar(40) NOT NULL,
  WAREHOUSE_NAME varchar(40) NOT NULL,
  CREATEUSERID varchar(40) NOT NULL,
  CREATEPROGID varchar(40) NOT NULL,
  MODIFYUSERID varchar(40) NOT NULL,
  MODIFYPROGID varchar(40) NOT NULL,
  CREATETS datetime DEFAULT current_timestamp(),
  MODIFYTS datetime DEFAULT current_timestamp(),
  DB_LOCK_VERSION bigint(20) DEFAULT 0,
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE SHELF_GROUP (
  ID varchar(36) NOT NULL,
  SHELF_GROUP_KEY varchar(40) NOT NULL,
  SHELF_GROUP_NAME varchar(40) NOT NULL,
  START_LATITUDE double NOT NULL,
  END_LATITUDE double NOT NULL,
  START_LONGITUDE double NOT NULL,
  END_LONGITUDE double NOT NULL,
  MAX_QUANTITY double NOT NULL,
  PRODUCT_KEY varchar(40) NOT NULL,
  WAREHOUSE_KEY varchar(40) NOT NULL,
  CREATEUSERID varchar(40) NOT NULL,
  CREATEPROGID varchar(40) NOT NULL,
  MODIFYUSERID varchar(40) NOT NULL,
  MODIFYPROGID varchar(40) NOT NULL,
  CREATETS datetime DEFAULT current_timestamp(),
  MODIFYTS datetime DEFAULT current_timestamp(),
  DB_LOCK_VERSION bigint(20) DEFAULT 0,
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE SHELF (
  SHELF_KEY varchar(40) NOT NULL,
  SHELF_NAME varchar(40) NOT NULL,
  SHELF_GROUP_KEY varchar(40) NOT NULL,
  LATITUDE double NOT NULL,
  LONGITUDE double NOT NULL,
  ELEVATION double NOT NULL,
  PRODUCT_QUANTITY double NOT NULL,
  MAX_QUANTITY double NOT NULL,
  ID varchar(36) NOT NULL,
  CREATEUSERID varchar(40) NOT NULL,
  CREATEPROGID varchar(40) NOT NULL,
  MODIFYUSERID varchar(40) NOT NULL,
  MODIFYPROGID varchar(40) NOT NULL,
  CREATETS datetime DEFAULT current_timestamp(),
  MODIFYTS datetime DEFAULT current_timestamp(),
  DB_LOCK_VERSION bigint(20) DEFAULT 0,
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE DROP_LOCATION (
  DROP_LOCATION_KEY varchar(40) NOT NULL,
  WAREHOUSE_KEY varchar(40) NOT NULL,
  LATITUDE double NOT NULL,
  LONGITUDE double NOT NULL,
  ID varchar(36) NOT NULL,
  CREATEUSERID varchar(40) NOT NULL,
  CREATEPROGID varchar(40) NOT NULL,
  MODIFYUSERID varchar(40) NOT NULL,
  MODIFYPROGID varchar(40) NOT NULL,
  CREATETS datetime DEFAULT current_timestamp(),
  MODIFYTS datetime DEFAULT current_timestamp(),
  DB_LOCK_VERSION bigint(20) DEFAULT 0,
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE PRODUCT (
  PRODUCT_KEY varchar(40) NOT NULL,
  PRODUCT_NAME varchar(40) NOT NULL,
  TOTAL_QUANTITY double NOT NULL,
  UNIT varchar(40) NOT NULL,
  TOTAL_QUANTITY_EMPTY double NOT NULL,
  ID varchar(36) NOT NULL,
  CREATEUSERID varchar(40) NOT NULL,
  CREATEPROGID varchar(40) NOT NULL,
  MODIFYUSERID varchar(40) NOT NULL,
  MODIFYPROGID varchar(40) NOT NULL,
  CREATETS datetime DEFAULT current_timestamp(),
  MODIFYTS datetime DEFAULT current_timestamp(),
  DB_LOCK_VERSION bigint(20) DEFAULT 0,
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;