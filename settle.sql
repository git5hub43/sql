create table FT_FEE_CHANNEL
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version        double not null,
  code           VARCHAR(30) not null,
  ft_srv_type_id double not null,
  name           VARCHAR(50) not null,
  type           VARCHAR(30) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table FT_FOOT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version       double not null,
  amount        double not null,
  auto_check    double,
  auto_withdraw double,
  check_date    TIMESTAMP(6),
  check_op_id   double,
  check_status  double not null,
  create_op_id  double,
  customer_no   VARCHAR(24) not null,
  fee_type      double not null,
  foot_date     TIMESTAMP(6) not null,
  foot_no       VARCHAR(30) not null,
  freeze_amount double,
  post_fee      double not null,
  pre_fee       double not null,
  reject_reason VARCHAR(255),
  srv_code      VARCHAR(20) not null,
  trade_code    VARCHAR(20) not null,
  trans_num     double not null,
  type          double not null,
  withdraw      double
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table FT_LIQUIDATE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version          double not null,
  amount           double not null,
  channel_code     VARCHAR(20),
  customer_no      VARCHAR(24) not null,
  date_created     TIMESTAMP(6) not null,
  fee_type         double not null,
  foot_no          VARCHAR(30),
  freeze_amount    double,
  liq_acc_no       VARCHAR(255) not null,
  liq_date         TIMESTAMP(6) not null,
  liquidate_no     VARCHAR(24) not null,
  post_fee         FLOAT not null,
  post_foot_no     VARCHAR(30),
  post_foot_status double not null,
  pre_fee          FLOAT not null,
  redo             tinyint(1) not null,
  redo_time        TIMESTAMP(6),
  settle_type      double,
  srv_code         VARCHAR(20) not null,
  status           double not null,
  trade_code       VARCHAR(20) not null,
  trans_num        double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table FT_SRV_TYPE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version  double not null,
  srv_code VARCHAR(20) not null,
  srv_name VARCHAR(30) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table FT_SRV_TRADE_TYPE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version    double not null,
  net_weight double not null,
  srv_id     double not null,
  trade_code VARCHAR(20) not null,
  trade_name VARCHAR(50) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table FT_SRV_FOOT_SETTING
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version        double not null,
  customer_no    VARCHAR(24) not null,
  foot_amount    FLOAT not null,
  foot_expr      VARCHAR(100) not null,
  foot_times     double not null,
  foot_type      double not null,
  last_foot_date TIMESTAMP(6),
  mort_day       double not null,
  next_foot_date TIMESTAMP(6),
  srv_id         double not null,
  trade_type_id  double not null,
  type           double,
  withdraw       double
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table FT_TRADE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version          double not null,
  amount           double not null,
  bill_date        TIMESTAMP(6) not null,
  channel_code     VARCHAR(20),
  channel_code_cal VARCHAR(20),
  customer_no      VARCHAR(24) not null,
  date_created     TIMESTAMP(6) not null,
  fee_type         double,
  freeze_amount    double,
  liq_date         TIMESTAMP(6),
  liquidate_no     VARCHAR(255),
  net_amount       double,
  post_fee         double,
  pre_fee          double,
  realtime_settle  double not null,
  redo             tinyint(1),
  redo_time        TIMESTAMP(6),
  seq_no           VARCHAR(24) not null,
  srv_code         VARCHAR(20) not null,
  trade_code       VARCHAR(20) not null,
  trade_date       TIMESTAMP(6) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table FT_TRADE_FEE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version           double not null,
  channel_code      VARCHAR(255),
  customer_no       VARCHAR(24) not null,
  date_begin        TIMESTAMP(6) not null,
  date_end          TIMESTAMP(6) not null,
  fee_max           FLOAT,
  fee_min           FLOAT,
  fee_model         double not null,
  fee_type          double,
  fee_value         FLOAT,
  fetch_type        double not null,
  first_liq_date    TIMESTAMP(6),
  pack_len          double,
  pack_type         double,
  srv_id            double not null,
  trade_type_id     double not null,
  trade_weight      double not null,
  is_view_date      tinyint(1),
  fee_flow          FLOAT,
  fee_pre           FLOAT,
  fee_used_flow     double,
  foot_no           VARCHAR(255),
  is_view_over      tinyint(1),
  is_view_over_mail tinyint(1),
  is_view_per       tinyint(1),
  is_view_per_mail  tinyint(1),
  isverify          VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table FT_TRADE_FEE_STEP
(
  id int(11) NOT NULL AUTO_INCREMENT,
  last_step_amount double,
  step1fee_max     FLOAT,
  step1fee_min     FLOAT,
  step1fee_type    double,
  step1fee_value   FLOAT,
  step1from        FLOAT,
  step1to          FLOAT,
  step2fee_max     FLOAT,
  step2fee_min     FLOAT,
  step2fee_type    double,
  step2fee_value   FLOAT,
  step2from        FLOAT,
  step2to          FLOAT,
  step3fee_max     FLOAT,
  step3fee_min     FLOAT,
  step3fee_type    double,
  step3fee_value   FLOAT,
  step3from        FLOAT,
  step3to          FLOAT,
  step4fee_max     FLOAT,
  step4fee_min     FLOAT,
  step4fee_type    double,
  step4fee_value   FLOAT,
  step4from        FLOAT,
  step4to          FLOAT,
  step5fee_max     FLOAT,
  step5fee_min     FLOAT,
  step5fee_type    double,
  step5fee_value   FLOAT,
  step5from        FLOAT,
  step5to          FLOAT,
  update_step_date TIMESTAMP(6)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

