
create table AC_ACCOUNT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version              double not null,
  account_name         VARCHAR(50) not null,
  account_no           VARCHAR(24) not null,
  account_type         VARCHAR(20) not null,
  balance              double not null,
  balance_of_direction VARCHAR(50) not null,
  currency             VARCHAR(20) not null,
  date_created         TIMESTAMP(6) not null,
  last_updated         TIMESTAMP(6) not null,
  parent_id            double,
  status               VARCHAR(10) not null,
  overdraft            tinyint(1)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table AC_DAIL_REPORT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version        double not null,
  account_id     double not null,
  account_no     VARCHAR(255) not null,
  balance        double not null,
  current_amount double not null,
  is_balancing   tinyint(1) not null,
  pre_balance    double not null,
  report_date    TIMESTAMP(6) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table AC_TRANSACTION
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version           double not null,
  amount            double not null,
  command_seqno     VARCHAR(36) not null,
  command_type      VARCHAR(20) not null,
  currency          VARCHAR(4),
  date_created      TIMESTAMP(6) not null,
  from_account_id   double,
  from_account_no   VARCHAR(24),
  note              VARCHAR(32),
  out_trade_no      VARCHAR(64),
  result_code       VARCHAR(4) not null,
  subjict           VARCHAR(1000),
  to_account_id     double,
  to_account_no     VARCHAR(24),
  trade_no          VARCHAR(36),
  transaction_code  VARCHAR(16) not null,
  transaction_order double not null,
  transfer_type     VARCHAR(16),
  srv_type          VARCHAR(20)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table AC_SEQUENTIAL
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version         double not null,
  account_id      double not null,
  account_no      VARCHAR(24) not null,
  balance         double not null,
  credit_amount   double not null,
  date_created    TIMESTAMP(6) not null,
  debit_amount    double not null,
  opposite_acc_id double not null,
  pre_balance     double not null,
  transaction_id  double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table AC_SEQ_ACCNO
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table AC_SEQ_TRANS_SEQ
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table AC_ST_LASTACSEQ
(
  id int(11) NOT NULL AUTO_INCREMENT,
  account_no  VARCHAR(20) not null,
  balance     double not null,
  dates       VARCHAR(8) not null,
  create_date DATE not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table AC_ST_TRX
(
  account_no    VARCHAR(20) not null,
  samount       double not null,
  scount        double not null,
  transfer_type VARCHAR(20) not null,
  dates         VARCHAR(8) not null,
  direction     VARCHAR(2) not null,
  createdate    DATE not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_ADJUST_TYPE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version double,
  name    VARCHAR(32) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;