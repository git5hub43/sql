
create table APP_NOTE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version  double not null,
  app_id   VARCHAR(255) not null,
  app_name VARCHAR(255) not null,
  app_note VARCHAR(255) not null,
  status   VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BANK_PAY_FEE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version                double not null,
  bo_acquirer_account_id double not null,
  fee_max                double not null,
  fee_min                double not null,
  fee_type               VARCHAR(1) not null,
  fee_value              double not null,
  transfer_type          VARCHAR(1)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BOSS_ROLE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  date_created TIMESTAMP(6) not null,
  role_name    VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_OPERATOR
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version          double not null,
  account          VARCHAR(255) not null,
  date_created     TIMESTAMP(6) not null,
  last_login_time  TIMESTAMP(6),
  last_updated     TIMESTAMP(6) not null,
  login_error_time double not null,
  name             VARCHAR(255) not null,
  password         VARCHAR(255) not null,
  role_set         VARCHAR(255) not null,
  status           VARCHAR(255) not null,
  email            VARCHAR(255),
  mobile           VARCHAR(255),
  role_id          double,
  last_change_time TIMESTAMP(6),
  last_change_date TIMESTAMP(6),
  branch_company   VARCHAR(255),
  branchcompay     VARCHAR(255),
  branchcompany    VARCHAR(255),
  login_ip         VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BOSS_LOGIN_LOG
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version        double not null,
  bo_operator_id double not null,
  date_created   TIMESTAMP(6) not null,
  login_ip       VARCHAR(20) not null,
  login_result   VARCHAR(50) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_ACCOUNT_ADJUST_INFO
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version         double not null,
  adjust_amount   FLOAT not null,
  approve_person  VARCHAR(30),
  approve_time    TIMESTAMP(6),
  approve_view    VARCHAR(1000),
  from_account_no VARCHAR(16) not null,
  remark          VARCHAR(1000) not null,
  status          VARCHAR(255) not null,
  to_account_no   VARCHAR(16) not null,
  sip             VARCHAR(50),
  sponsor         VARCHAR(30),
  sponsor_time    TIMESTAMP(6),
  adj_type        VARCHAR(255),
  invoice_id      double,
  choose_flag     tinyint(1) default 0
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_BANK_DIC
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version double not null,
  code    VARCHAR(24) not null,
  name    VARCHAR(100) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_ACQUIRER_ACCOUNT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version           double not null,
  alias_name        VARCHAR(40) not null,
  bank_id           double not null,
  bank_account_name VARCHAR(40) not null,
  bank_account_no   VARCHAR(32) not null,
  bank_account_type VARCHAR(16) not null,
  bank_no           VARCHAR(16) not null,
  branch_name       VARCHAR(64) not null,
  date_created      TIMESTAMP(6) not null,
  inner_acount_no   VARCHAR(24) not null,
  last_updated      TIMESTAMP(6) not null,
  status            VARCHAR(10) not null,
  name              VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_ACQUIRER_ACCOUNT_BAK
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version           double not null,
  alias_name        VARCHAR(40) not null,
  bank_id           double not null,
  bank_account_name VARCHAR(40) not null,
  bank_account_no   VARCHAR(32) not null,
  bank_account_type VARCHAR(16) not null,
  bank_no           VARCHAR(16) not null,
  branch_name       VARCHAR(64) not null,
  date_created      TIMESTAMP(6) not null,
  inner_acount_no   VARCHAR(24) not null,
  last_updated      TIMESTAMP(6) not null,
  status            VARCHAR(10) not null,
  name              VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_ADJUST_TYPE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version double,
  name    VARCHAR(32) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_AGENT_PAY_SERVICE_PARAMS
(
  id int(11) NOT NULL AUTO_INCREMENT,
  back_fee          VARCHAR(255),
  batch_version     VARCHAR(255),
  danger_money      double(15,3),
  day_limit_money   double(15,3),
  day_limit_trans   double,
  gather_way        VARCHAR(255),
  limit_money       double(15,3),
  month_limit_money double(15,3),
  month_limit_trans double,
  perprocedure_fee  double(15,3),
  procedure_fee     double(15,3),
  remark            VARCHAR(255),
  sett_cycle        VARCHAR(255),
  sett_cycle_day    VARCHAR(255),
  sett_way          VARCHAR(255),
  yearly_payment    double(15,3),
  cert_name         VARCHAR(50),
  cert_path         VARCHAR(200),
  cert_date         DATE,
  template_type     VARCHAR(2),
  ismp_check        VARCHAR(1),
  boss_check        VARCHAR(1),
  batch_channel     VARCHAR(9),
  single_channel    VARCHAR(9),
  interface_channel VARCHAR(9),
  batch_pub_fee     double(12,2),
  batch_pri_fee     double(12,2),
  single_pub_fee    double(12,2),
  single_pri_fee    double(12,2),
  interface_pub_fee double(12,2),
  interface_pri_fee double(12,2),
  pub_limit_money   double(15,3),
  pri_limit_money   double(15,3),
  message_notify    VARCHAR(255),
  cert_alias        VARCHAR(255),
  cert_pwd          VARCHAR(255),
  is_dq             VARCHAR(1),
  user_compactno    VARCHAR(50),
  dq_account_id     double,
  entrust_account   VARCHAR(255),
  entrust_email     VARCHAR(255),
  entrust_usercode  VARCHAR(255),
  isentrust         VARCHAR(255),
  window_time       double,
  is_mail_message   VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_ASSETS
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version    double not null,
  as_id      VARCHAR(64) not null,
  brand      VARCHAR(64) not null,
  model      VARCHAR(64) not null,
  name       VARCHAR(64) not null,
  num        double not null,
  remark     VARCHAR(255) not null,
  start_date TIMESTAMP(6) not null,
  status     VARCHAR(64) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_BALANCE_ACCOUNT_DATE_RULE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version                    double not null,
  acquire_syn_day_begin_time TIMESTAMP(6) not null,
  acquire_syn_day_end_time   TIMESTAMP(6) not null,
  bank_id                    double not null,
  settle_day_time            TIMESTAMP(6) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_BRANCH_COMPANY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  company_name VARCHAR(255) not null,
  date_created TIMESTAMP(6),
  address      VARCHAR(255),
  charge_man   VARCHAR(255),
  fax          VARCHAR(255),
  phone        VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_CHANNEL_RATE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version       double not null,
  fee_rate      FLOAT,
  fee_type      VARCHAR(5),
  is_refund_fee VARCHAR(5),
  merchant_id   double not null,
  is_current    tinyint(1)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_CUSTOMER_INVOICE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  batch_no               double not null,
  customer_id            double not null,
  customer_no            VARCHAR(24) not null,
  customer_name          VARCHAR(64) not null,
  customer_tax_no        VARCHAR(20),
  date_end               DATE not null,
  invoice_amt            double(18,2) not null,
  invoice_no             VARCHAR(64),
  invoice_time           DATE,
  invoice_input_time     TIMESTAMP(6),
  invoice_input_user     double,
  customer_contact       VARCHAR(32),
  customer_contact_phone VARCHAR(20),
  customer_location      VARCHAR(200),
  customer_zip_code      VARCHAR(10),
  express_name           VARCHAR(50) default '',
  express_no             VARCHAR(32),
  express_input_time     TIMESTAMP(6),
  express_input_user     double,
  status                 double(2) not null,
  canceled_time          TIMESTAMP(6),
  canceled_reason        VARCHAR(255),
  last_inv_date          DATE
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_CUSTOMER_INVOICE_BALANCE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  batch_no    double not null,
  customer_id double not null,
  customer_no VARCHAR(24) not null,
  date_end    DATE not null,
  amt         double(18,2) not null,
  amt_adj     double(18,2) not null,
  amt_total   double(18,2) not null,
  adj_reason  VARCHAR(255),
  canceled    double(2,0) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_CUSTOMER_INVOICE_DETAIL
(
  bill_type   double(2,0) not null,
  fee_type    double(2,0) not null,
  bill_id     double not null,
  bill_no     VARCHAR(64),
  customer_id double not null,
  bill_date   TIMESTAMP(6) not null,
  bill_amount double(18,2) not null,
  balance_id  double
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_CUSTOMER_INVOICE_INIT
(
  customer_id            double not null,
  customer_no            VARCHAR(24) not null,
  init_date              DATE,
  init_amount            double(18,2) default 0 not null,
  init_status            double(2,0) not null,
  last_inv_date          DATE,
  customer_status        VARCHAR(16) not null,
  customer_type          VARCHAR(1) not null,
  customer_name          VARCHAR(64),
  customer_tax_no        VARCHAR(20),
  customer_contact       VARCHAR(32),
  customer_contact_phone VARCHAR(20),
  customer_location      VARCHAR(200),
  customer_zip_code      VARCHAR(10),
  need_invoice           tinyint(1),
  account_no             VARCHAR(24),
  ap_srv_acc_no          VARCHAR(255),
  ap_fee_acc_no          VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_CUSTOMER_SERVICE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version                      double not null,
  check_date                   TIMESTAMP(6),
  check_operator_id            double,
  check_status                 VARCHAR(255),
  contract_no                  VARCHAR(20) not null,
  customer_id                  double not null,
  customer_manager_operator_id double,
  date_created                 TIMESTAMP(6) not null,
  enable                       tinyint(1) not null,
  fee_params                   VARCHAR(64),
  is_current                   tinyint(1) not null,
  last_updated                 TIMESTAMP(6) not null,
  service_code                 VARCHAR(20) not null,
  service_params               VARCHAR(512),
  srv_acc_no                   VARCHAR(255),
  end_time                     TIMESTAMP(6),
  start_time                   TIMESTAMP(6),
  fee_acc_no                   VARCHAR(255),
  belong_to_sale               VARCHAR(20),
  refund_model_type            VARCHAR(1),
  belong_to_area               VARCHAR(255),
  belong_to_bu                 VARCHAR(255),
  belong_to_business           VARCHAR(255),
  belong_to_branch_company     VARCHAR(255),
  branch_company               VARCHAR(255),
  is_fan_dian                  tinyint(1),
  fan_dian_amount              VARCHAR(64),
  is_view_date                 tinyint(1)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_CUSTOMER_WITHDRAW_CYCLE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version          double not null,
  amount_type      double,
  customer_no      VARCHAR(20) not null,
  cycle_expr       VARCHAR(500),
  cycle_times      double,
  cycle_type       double,
  holiday_withdraw double,
  keep_amount      double(19,2),
  last_foot_date   TIMESTAMP(6),
  next_foot_date   TIMESTAMP(6),
  withdraw_amount  double(19,2),
  withdraw_type    double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_CUSTOMER_WITHDRAW_SETTING
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version          double not null,
  customer_no      VARCHAR(20) not null,
  day_limit        double(19,2) not null,
  day_withdraw_sum double(19,2) not null,
  fee              double(19,2) not null,
  fee_from         double not null,
  fee_return       double not null,
  fee_type         double not null,
  max_fee          double(19,2) not null,
  min_amount       double(19,2) not null,
  min_fee          double(19,2) not null,
  withdraw_limit   double(19,2) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_DIRECT_PAY_BIND
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version         double not null,
  account_no      VARCHAR(255) not null,
  customer_no     VARCHAR(255) not null,
  limite_amount   FLOAT,
  pay_customer_no VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_DYNAMIC_KEY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version        double not null,
  bo_operator_id double not null,
  date_created   TIMESTAMP(6) not null,
  is_used        tinyint(1) not null,
  `key`            VARCHAR(32) not null,
  parameter      VARCHAR(36) not null,
  proc_method    VARCHAR(8) not null,
  send_to        VARCHAR(64) not null,
  send_type      VARCHAR(8) not null,
  time_expired   TIMESTAMP(6) not null,
  time_used      TIMESTAMP(6),
  use_type       VARCHAR(16) not null,
  verification   VARCHAR(36) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_INNER_ACCOUNT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version    double not null,
  account_no VARCHAR(255) not null,
  `key`        VARCHAR(255) not null,
  note       VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_MERCHANT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version             double not null,
  acquire_indexc      VARCHAR(20) not null,
  acquire_merchant    VARCHAR(64) not null,
  acquire_name        VARCHAR(20) not null,
  acquirer_account_id double not null,
  channel_desc        VARCHAR(128),
  channel_sts         VARCHAR(2) not null,
  channel_type        VARCHAR(2) not null,
  date_created        TIMESTAMP(6) not null,
  day_qutor           double not null,
  last_updated        TIMESTAMP(6) not null,
  payment_mode        VARCHAR(2) not null,
  payment_type        VARCHAR(2) not null,
  qutor               double not null,
  service_code        VARCHAR(10) not null,
  terminal            VARCHAR(10) not null,
  bank_type           VARCHAR(255),
  refund_channel      VARCHAR(255) default 0,
  search_channel      VARCHAR(255) default 0
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_NEWS
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  content      VARCHAR(255) not null,
  date_created TIMESTAMP(6) not null,
  msg_column   VARCHAR(255) not null,
  publisher_id double not null,
  reciever     VARCHAR(255),
  sys_id       VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_OFFLINE_CHARGE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  account_no   VARCHAR(25) not null,
  amount       double not null,
  authdate     TIMESTAMP(6),
  authdesc     VARCHAR(255),
  author_id    VARCHAR(255),
  author_name  VARCHAR(255),
  authsts      VARCHAR(2),
  batchnum     VARCHAR(255),
  billdate     VARCHAR(255),
  billext      VARCHAR(255),
  billmode     VARCHAR(10) not null,
  billref      VARCHAR(255),
  create_desc  VARCHAR(255),
  createdate   TIMESTAMP(6) not null,
  creator_id   VARCHAR(255),
  creator_name VARCHAR(255),
  note         VARCHAR(255),
  old_seq      VARCHAR(25),
  realamount   double not null,
  recepit      VARCHAR(25),
  recepitacct  VARCHAR(255),
  status       VARCHAR(2) not null,
  trx_seq      VARCHAR(25) not null,
  trxtype      VARCHAR(10) not null,
  branchcode   VARCHAR(255),
  branchname   VARCHAR(255),
  voidstatus   VARCHAR(255),
  account_name VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_OP_LOG
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  account      VARCHAR(255) not null,
  action       VARCHAR(255) not null,
  controller   VARCHAR(255) not null,
  date_created TIMESTAMP(6) not null,
  ip           VARCHAR(255) not null,
  params       CLOB not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_OP_RELATION
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version     double not null,
  actions     VARCHAR(255) not null,
  controllers VARCHAR(255) not null,
  names       VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_PAY_SRV_BANK
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version    double not null,
  bank_id    double not null,
  quota      double,
  service_id double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_PROMISSION
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version         double not null,
  promission_code VARCHAR(255) not null,
  promission_name VARCHAR(255) not null,
  status          VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_RECHARGE_TIME
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version     double not null,
  allow_hour  VARCHAR(4) not null,
  allow_mits  VARCHAR(4) not null,
  allowdate   VARCHAR(15),
  branch_code VARCHAR(25),
  branch_name VARCHAR(128),
  date_code   VARCHAR(10) not null,
  status      double not null,
  end_time    TIMESTAMP(6),
  start_time  TIMESTAMP(6)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_REFUND_MODEL
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version            double not null,
  customer_server_id VARCHAR(255) not null,
  refund_model       VARCHAR(32),
  pay_model          VARCHAR(32),
  transfer_model     VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_ROLE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version       double not null,
  permission_id VARCHAR(1024),
  role_code     VARCHAR(255) not null,
  role_name     VARCHAR(255) not null,
  status        VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_SECURITY_EVENTS
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version            double not null,
  bo_sort            VARCHAR(1) not null,
  bo_status          VARCHAR(1) not null,
  end_date_created   TIMESTAMP(6) not null,
  expatiate          VARCHAR(128) not null,
  sketch             VARCHAR(64) not null,
  start_date_created TIMESTAMP(6) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_VERIFY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version               double not null,
  account_name          VARCHAR(64),
  account_no            VARCHAR(18),
  date_created          TIMESTAMP(6),
  from_acq_id           double,
  in_bank_account_name  VARCHAR(64),
  in_bank_account_no    VARCHAR(32),
  in_bank_code          VARCHAR(10),
  in_bank_name          VARCHAR(64),
  in_remain_amount      double,
  note                  VARCHAR(100),
  oper_name             VARCHAR(255) not null,
  oper_no               VARCHAR(255) not null,
  out_amount            double,
  out_bank_account_name VARCHAR(40),
  out_bank_account_no   VARCHAR(32),
  out_bank_code         VARCHAR(10),
  out_bank_name         VARCHAR(64),
  out_remain_amount     double,
  status                VARCHAR(2),
  to_acq_id             double,
  type                  VARCHAR(2),
  app_date              TIMESTAMP(6),
  app_name              VARCHAR(255),
  app_no                VARCHAR(255),
  cz                    TIMESTAMP(6)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table DIRECT_BANK_SERVICE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  acquire_code VARCHAR(255),
  enable       tinyint(1),
  trade_code   VARCHAR(255),
  trade_port   VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table REPORT_ADJUST_DAILY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  bank_adjust_charge    double,
  bank_adjust_withdrawn double,
  bank_fee              double,
  credit_adjust_amount  double,
  credit_sum            double,
  date_created          TIMESTAMP(6),
  debit_adjust_amount   double,
  debit_sum             double,
  plat_fee              double,
  bank_ajust_withdrawn  double
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table REPORT_AGENTPAY_DAILY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  amount               FLOAT,
  count                double,
  customer_id          VARCHAR(255),
  customer_no          VARCHAR(255),
  customer_type        VARCHAR(255),
  daily                VARCHAR(255),
  net_amount           FLOAT,
  trade_amount_fail    FLOAT,
  trade_amount_success FLOAT,
  trade_count_fail     double,
  trade_count_success  double,
  trade_finishdate     TIMESTAMP(6),
  trade_settle_amount  FLOAT,
  trade_settle_fee     FLOAT,
  trade_type           VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table REPORT_ALL_SERVICES_DAILY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  agentcoll_trade_bank_fee   FLOAT,
  agentcoll_trade_count      double,
  agentcoll_trade_net_amount FLOAT,
  agentcoll_trade_net_fee    FLOAT,
  agentpay_trade_bank_fee    FLOAT,
  agentpay_trade_count       double,
  agentpay_trade_net_amount  FLOAT,
  agentpay_trade_net_fee     FLOAT,
  charge_trade_bank_fee      FLOAT,
  charge_trade_count         double,
  charge_trade_net_amount    FLOAT,
  charge_trade_net_fee       FLOAT,
  customer_id                VARCHAR(255),
  customer_no                VARCHAR(255),
  customer_type              VARCHAR(255),
  daily                      VARCHAR(255),
  online_trade_bank_fee      FLOAT,
  online_trade_count         double,
  online_trade_net_amount    FLOAT,
  online_trade_net_fee       FLOAT,
  royalty_trade_bank_fee     FLOAT,
  royalty_trade_count        double,
  royalty_trade_net_amount   FLOAT,
  royalty_trade_net_fee      FLOAT,
  service_code               VARCHAR(255),
  trade_finishdate           TIMESTAMP(6),
  transfer_trade_bank_fee    FLOAT,
  transfer_trade_count       double,
  transfer_trade_net_amount  FLOAT,
  transfer_trade_net_fee     FLOAT,
  withdrawn_trade_bank_fee   FLOAT,
  withdrawn_trade_count      double,
  withdrawn_trade_net_amount FLOAT,
  withdrawn_trade_net_fee    FLOAT
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table REPORT_ONLINE_PAY_DAILY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  area                  VARCHAR(32),
  balance_pay_amount    double,
  balance_pay_num       double,
  balance_refund_amount double,
  balance_refund_num    double,
  bank_pay_amount       double,
  bank_pay_num          double,
  bank_refund_amount    double,
  bank_refund_num       double,
  customer_id           VARCHAR(255),
  customer_name         VARCHAR(32),
  customer_no           VARCHAR(24) not null,
  customer_type         VARCHAR(255),
  daily_flag            VARCHAR(10) not null,
  date_created          TIMESTAMP(6) not null,
  fee_amount            double,
  settle_amount         double,
  trade_date            TIMESTAMP(6)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table REPORT_OTHER_BIZ_DAILY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  area                VARCHAR(255),
  charge_bank_cost    double,
  charge_fee          double,
  charge_total_amount double,
  charge_total_count  double,
  cus_accountid       double,
  cus_name            VARCHAR(255),
  date_created        TIMESTAMP(6),
  transfer_amount     double,
  transfer_bank_cost  double,
  transfer_count      double,
  transfer_fee        double,
  withdrawn_amount    double,
  withdrawn_bank_cost double,
  withdrawn_count     double,
  withdrawn_fee       double
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table REPORT_PORTAL_DAILY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  balance             double not null,
  bank_cost           double,
  charge_only_amount  double,
  charge_only_count   double,
  charge_other_amount double,
  charge_other_count  double,
  charge_total_amount double not null,
  charge_total_count  double not null,
  customer_total      double not null,
  customer_tradetotal double not null,
  date_created        TIMESTAMP(6) not null,
  in_fee              double,
  pay_amount          double not null,
  pay_count           double not null,
  refund_amount       double not null,
  refund_count        double not null,
  transfer_amount     double not null,
  transfer_count      double not null,
  withdrawn_amount    double not null,
  withdrawn_count     double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table REPORT_ROYALTY_DAILY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  area                  VARCHAR(32),
  customer_id           VARCHAR(255),
  customer_name         VARCHAR(32),
  customer_no           VARCHAR(24) not null,
  customer_type         VARCHAR(255),
  daily_flag            VARCHAR(10) not null,
  date_created          TIMESTAMP(6) not null,
  fee_amount            double,
  royalty_pay_amount    double,
  royalty_pay_num       double,
  royalty_refund_amount double,
  royalty_refund_num    double,
  settle_amount         double,
  trade_date            TIMESTAMP(6)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table ROLE_PERM
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version double not null,
  perm    VARCHAR(255) not null,
  role_id double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

