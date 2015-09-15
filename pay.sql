create table TB_ADJUST_BANK
(
  id int(11) NOT NULL AUTO_INCREMENT,
  bank_code          VARCHAR(10),
  bank_names         VARCHAR(50),
  bank_authorityname VARCHAR(100),
  trade_type         VARCHAR(1),
  bank_type          VARCHAR(10)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_BIND_BANK
(
  id int(11) NOT NULL AUTO_INCREMENT,
  type           VARCHAR(1),
  bank_accountno VARCHAR(32),
  note           VARCHAR(100)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_ERRORLOG
(
  id int(11) NOT NULL AUTO_INCREMENT,
  name        VARCHAR(50),
  type        VARCHAR(50),
  key_value   VARCHAR(50),
  create_time DATE,
  summary     VARCHAR(100),
  error_msg   LONGBLOB
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_LOG
(
  id int(11) NOT NULL AUTO_INCREMENT,
  name        VARCHAR(50),
  type        VARCHAR(50),
  key_value   VARCHAR(50),
  json_str    VARCHAR(1000),
  create_time DATE,
  summary     VARCHAR(100)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_PAY_BANKCODE
(
  bank_code VARCHAR(12) not null,
  bank_name VARCHAR(200) not null
  
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_PAY_BATCH
(
  batch_id              VARCHAR(7) not null,
  batch_date            DATE,
  batch_count           double,
  batch_amount          double(15,2),
  batch_chanel          double,
  batch_chanelname      VARCHAR(50),
  batch_status          VARCHAR(1) not null,
  batch_type            VARCHAR(1),
  batch_style           VARCHAR(6),
  batch_donedate        DATE,
  batch_note            VARCHAR(50),
  batch_chanelsyscode   VARCHAR(50),
  batch_chanelaccountno VARCHAR(33),
  batch_sysioflag       VARCHAR(1)
  ,PRIMARY KEY (BATCH_ID)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_PAY_TRADE
(
  trade_id         VARCHAR(17) not null,
  trade_code       VARCHAR(10) not null,
  batch_id         VARCHAR(7),
  trade_cardnum    VARCHAR(33) not null,
  trade_cardname   VARCHAR(50) not null,
  trade_bank       VARCHAR(50),
  trade_branchbank VARCHAR(50),
  trade_subbank    VARCHAR(50),
  trade_province   VARCHAR(50),
  trade_city       VARCHAR(50),
  trade_acctype    VARCHAR(1) default 0 not null,
  trade_amount     double(12,2) not null,
  trade_amttype    VARCHAR(3) not null,
  trade_usercode   VARCHAR(30),
  trade_certtype   VARCHAR(50),
  trade_certno     VARCHAR(50),
  trade_note       VARCHAR(50),
  out_tradeorder   VARCHAR(50),
  trade_subdate    DATE,
  trade_status     VARCHAR(2) not null,
  trade_reason     VARCHAR(500),
  trade_donedate   DATE,
  trade_note1      VARCHAR(30),
  trade_note2      VARCHAR(30),
  trade_type       VARCHAR(1),
  trade_name       VARCHAR(50),
  trade_cardtype   VARCHAR(2),
  trade_batchseqno double(12,0),
  checkway         VARCHAR(255)
  ,PRIMARY KEY (TRADE_ID)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_PAY_TRADETYPE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  pay_code VARCHAR(10) not null,
  pay_name VARCHAR(50) not null,
  pay_type VARCHAR(1) not null,
  note     VARCHAR(100)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

