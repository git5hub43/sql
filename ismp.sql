-- 注：TRADE_BASE表中存在raw类型。

create table ACQUIRE_FAULT_TRX
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version          double not null,
  acquire_authcode VARCHAR(255),
  acquire_cardnum  VARCHAR(19),
  acquire_code     VARCHAR(255),
  acquire_date     VARCHAR(255),
  acquire_merchant VARCHAR(255) not null,
  acquire_refnum   VARCHAR(255),
  acquire_seq      VARCHAR(255),
  acquire_trxnum   VARCHAR(255) not null,
  auth_date        TIMESTAMP(6) not null,
  auth_oper        VARCHAR(255),
  auth_sts         VARCHAR(1) not null,
  change_applier   VARCHAR(255) not null,
  change_sts       double not null,
  create_date      TIMESTAMP(6) not null,
  datasrc          VARCHAR(9),
  fault_advice     VARCHAR(255),
  final_result     VARCHAR(255),
  final_sts        VARCHAR(9) not null,
  trxamount        double not null,
  trxdate          VARCHAR(8),
  trxid            VARCHAR(255),
  update_date      TIMESTAMP(6) not null,
  ini_sts          double,
  payer_ip         VARCHAR(255),
  batchnum         VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table ACQUIRE_SYN_RESULT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version          double not null,
  acquire_code     VARCHAR(255),
  acquire_merchant VARCHAR(1000),
  bank_account_no  VARCHAR(1000),
  bank_code        VARCHAR(255) not null,
  batchnum         VARCHAR(255) not null,
  create_date      TIMESTAMP(6) not null,
  dis_amount       double,
  dis_num          double,
  other_amount     double,
  other_num        double,
  over_amount      double,
  over_num         double,
  service_code     VARCHAR(2000) not null,
  short_amount     double,
  short_num        double,
  success_amount   double,
  success_num      double,
  syn_date_from    TIMESTAMP(6) not null,
  syn_date_to      TIMESTAMP(6) not null,
  syn_op           VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table ACQUIRE_SYN_TRX
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version          double not null,
  account_date     TIMESTAMP(6),
  acquire_authcode VARCHAR(255),
  acquire_cardnum  VARCHAR(255),
  acquire_code     VARCHAR(255),
  acquire_date     TIMESTAMP(6),
  acquire_merchant VARCHAR(1000),
  acquire_refnum   VARCHAR(255),
  acquire_seq      VARCHAR(255),
  amount           FLOAT,
  bank_account_no  VARCHAR(1000),
  bank_code        VARCHAR(255),
  batchnum         VARCHAR(255),
  create_date      TIMESTAMP(6),
  payer_ip         VARCHAR(255),
  remarks          VARCHAR(3000),
  service_code     VARCHAR(2000),
  syn_date_from    TIMESTAMP(6),
  syn_date_to      TIMESTAMP(6),
  syn_sts          double,
  trade_amount     FLOAT,
  trade_date       TIMESTAMP(6),
  trade_num        VARCHAR(255),
  trade_trxsts     double,
  trxid            VARCHAR(255),
  trxsts           double,
  servicecode      VARCHAR(255),
  fee              FLOAT,
  trade_fee        FLOAT
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table ATTESTATION_BANK
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version double not null,
  code    VARCHAR(24) not null,
  name    VARCHAR(100) not null,
  type    VARCHAR(10)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BALANCE_OF_ACCOUNT_LOG
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  custom_no    VARCHAR(24) not null,
  request_date VARCHAR(8) not null,
  requestip    VARCHAR(20) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_ROLE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  name         VARCHAR(32) not null,
  power        double not null,
  status       VARCHAR(16) not null,
  last_updated TIMESTAMP(6) not null,
  role_date    double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_TRADE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version    double not null,
  `limit`      double not null,
  rate       FLOAT not null,
  status     VARCHAR(16) not null,
  trade_name VARCHAR(50),
  from_type  VARCHAR(50),
  to_type    VARCHAR(50),
  trade_type VARCHAR(16) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table BO_USER
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version         double not null,
  department      VARCHAR(64),
  email           VARCHAR(64),
  last_login_time TIMESTAMP(6),
  last_updated    TIMESTAMP(6),
  name            VARCHAR(32) not null,
  password        VARCHAR(40),
  position        VARCHAR(64),
  role_id         double not null,
  status          VARCHAR(16) not null,
  telephone       VARCHAR(32),
  login_name      VARCHAR(24),
  user_date       double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CHANNEL_ROUTE_BY_AMOUNT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  amount_end   VARCHAR(16),
  amount_start VARCHAR(255) not null,
  bank_code    VARCHAR(255) not null,
  card_type    VARCHAR(255) not null,
  channel1     VARCHAR(255) not null,
  channel2     VARCHAR(16),
  channel3     VARCHAR(16),
  create_time  TIMESTAMP(6) not null,
  op_name      VARCHAR(255) not null,
  update_time  TIMESTAMP(6) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_APPLICATION_INFO
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version            double not null,
  belong_to_area     VARCHAR(200) not null,
  belong_to_business VARCHAR(20) not null,
  biz_email          VARCHAR(200) not null,
  bizmphone          VARCHAR(20) not null,
  biz_man            VARCHAR(50) not null,
  biz_phone          VARCHAR(20),
  company_website    VARCHAR(200) not null,
  date_created       TIMESTAMP(6) not null,
  last_updated       TIMESTAMP(6) not null,
  office_location    VARCHAR(200) not null,
  registration_name  VARCHAR(64) not null,
  registration_type  VARCHAR(1) not null,
  status             VARCHAR(1) not null,
  zip_code           VARCHAR(10) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_BACK_PLATE_RECORD
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version           double not null,
  amount            double not null,
  bank_name         VARCHAR(50) not null,
  batch             VARCHAR(10) not null,
  branch            VARCHAR(64) not null,
  create_date       VARCHAR(32) not null,
  feed_back_code    VARCHAR(100) not null,
  feed_back_reason  VARCHAR(64),
  partner           VARCHAR(20) not null,
  people            VARCHAR(20) not null,
  people_account_no VARCHAR(40) not null,
  serial_no         VARCHAR(10) not null,
  status            VARCHAR(10) not null,
  subbranch         VARCHAR(64) not null,
  trade_no          VARCHAR(64) not null,
  type              VARCHAR(10) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_BANK
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version double not null,
  code    VARCHAR(24) not null,
  name    VARCHAR(100) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_BAR_CHECK_RULE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version          double not null,
  branch_office    VARCHAR(512),
  branch_office_id VARCHAR(512),
  check_num        VARCHAR(512),
  check_rule       VARCHAR(512),
  check_rule_num   VARCHAR(512),
  code_size        double not null,
  is_check         VARCHAR(512),
  rule_info        VARCHAR(512),
  rule_num         double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_BAR_CODE_RULE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version       double not null,
  branch_office VARCHAR(255) not null,
  city          VARCHAR(255) not null,
  code_piece    double not null,
  code_rule     VARCHAR(255) not null,
  code_size     double not null,
  code_type     VARCHAR(255) not null,
  fft           VARCHAR(255) not null,
  organization  VARCHAR(16),
  province      VARCHAR(255) not null,
  proxy_type    VARCHAR(255) not null,
  remark        VARCHAR(512),
  valid_rule    VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_BINDING_MONEY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  amount       FLOAT,
  total_amount FLOAT
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_BUS_CARD
(
  id int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_CORPORATION_INFO
(
  id int(11) NOT NULL AUTO_INCREMENT,
  business_license_code     VARCHAR(20),
  business_scope            VARCHAR(500),
  check_date                TIMESTAMP(6),
  check_operator_id         double,
  check_status              VARCHAR(16),
  company_phone             VARCHAR(20),
  contact                   VARCHAR(32),
  contact_phone             VARCHAR(20),
  corporate                 VARCHAR(32),
  expected_turnover_of_year VARCHAR(20),
  license_expires           TIMESTAMP(6),
  note                      VARCHAR(128),
  number_of_staff           VARCHAR(20),
  office_location           VARCHAR(200),
  organization_code         VARCHAR(20),
  registered_funds          double(10,2),
  registered_place          VARCHAR(200),
  registration_date         TIMESTAMP(6),
  registration_name         VARCHAR(64),
  tax_registration_no       VARCHAR(20),
  zip_code                  VARCHAR(10),
  belong_to_area            VARCHAR(255),
  belong_to_business        VARCHAR(255),
  belong_to_sale            VARCHAR(255),
  branch_company            VARCHAR(255),
  access_mode               VARCHAR(255),
  biz_email                 VARCHAR(255),
  bizmphone                 VARCHAR(255),
  biz_man                   VARCHAR(255),
  biz_phone                 VARCHAR(255),
  company_website           VARCHAR(255),
  finance_email             VARCHAR(255),
  financemphone             VARCHAR(255),
  finance_man               VARCHAR(255),
  finance_phone             VARCHAR(255),
  grade                     VARCHAR(255),
  tech_email                VARCHAR(255),
  techmphone                VARCHAR(255),
  tech_man                  VARCHAR(255),
  tech_phone                VARCHAR(255),
  id_status                 VARCHAR(16),
  biz                       VARCHAR(255),
  fraud_check               VARCHAR(1),
  is_view_date              tinyint(1),
  controlling               VARCHAR(255),
  day_qutor                 FLOAT,
  day_qutor_count           FLOAT,
  identity_no               VARCHAR(255),
  identity_type             VARCHAR(8),
  legal                     VARCHAR(255),
  month_qutor               FLOAT,
  month_qutor_count         FLOAT,
  qutor                     FLOAT,
  qutor_count               FLOAT,
  qutor_num                 VARCHAR(255),
  qutor_num_count           VARCHAR(255),
  valid_time                TIMESTAMP(6),
  business_license_photo    VARCHAR(255),
  business_license_review   VARCHAR(255),
  id_opposite_photo         VARCHAR(255),
  id_opposite_review        VARCHAR(255),
  id_positive_photo         VARCHAR(255),
  id_positive_review        VARCHAR(255),
  tax_registration_photo    VARCHAR(255),
  tax_registration_review   VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_CREDIT_CARD
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version           double not null,
  bank_account_name VARCHAR(40) not null,
  bank_account_no   VARCHAR(32) not null,
  bank_code         VARCHAR(16) not null,
  bank_name         VARCHAR(100) not null,
  card_no_end_four  VARCHAR(4) not null,
  customer_no       VARCHAR(24) not null,
  inform_date       double not null,
  inform_email      VARCHAR(64),
  inform_moblie     VARCHAR(16),
  is_monthly        tinyint(1) not null,
  is_warn_by_email  tinyint(1) not null,
  is_warn_by_note   tinyint(1) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_CUST_INSTITUTION
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version          double not null,
  date_created     TIMESTAMP(6) not null,
  institution_name VARCHAR(32) not null,
  last_updated     TIMESTAMP(6) not null,
  status           VARCHAR(1) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_CUSTOMER
(
  id int(11) NOT NULL AUTO_INCREMENT,
  account_no             VARCHAR(24),
  api_key                VARCHAR(64),
  customer_no            VARCHAR(24) not null,
  date_created           TIMESTAMP(6) not null,
  last_updated           TIMESTAMP(6) not null,
  name                   VARCHAR(32) not null,
  status                 VARCHAR(16) not null,
  type                   VARCHAR(1) not null,
  version                double not null,
  need_invoice           tinyint(1),
  post_fee               FLOAT,
  customer_category      VARCHAR(255),
  cm_cust_institution_id double,
  cust_institution_id    double,
  is_view_date           tinyint(1),
  close_status           VARCHAR(255),
  open_status            VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_CUSTOMER_ACCOUNT_MAPPING
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  account_no   VARCHAR(24) not null,
  account_type VARCHAR(8) not null,
  customer_id  double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_ISMP_CUSTOMER
(
  id int(11) NOT NULL AUTO_INCREMENT,
  cer_status VARCHAR(16)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_CUSTOMER_ATTESTATION
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version           double not null,
  acount_type       VARCHAR(64) not null,
  attestation_no    VARCHAR(64) not null,
  bank_account_name VARCHAR(64) not null,
  bank_account_no   VARCHAR(64) not null,
  bank_name         VARCHAR(64) not null,
  branch            VARCHAR(64) not null,
  city              VARCHAR(64) not null,
  coin_type         VARCHAR(64) not null,
  customer_id       double not null,
  date_creat        TIMESTAMP(6) not null,
  money             VARCHAR(64) not null,
  protoco_no        VARCHAR(64) not null,
  province          VARCHAR(64) not null,
  purpose           VARCHAR(64) not null,
  subbranch         VARCHAR(64) not null,
  id_no             VARCHAR(20),
  date_ccomplete    TIMESTAMP(6)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_CUSTOMER_BANK_ACCOUNT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version           double not null,
  bank_account_name VARCHAR(40) not null,
  bank_account_no   VARCHAR(32) not null,
  bank_code         VARCHAR(16) not null,
  bank_no           VARCHAR(16),
  branch            VARCHAR(64) not null,
  customer_id       double not null,
  is_corporate      tinyint(1) not null,
  is_default        tinyint(1) not null,
  is_verify         tinyint(1) not null,
  note              VARCHAR(128),
  status            VARCHAR(16) not null,
  subbranch         VARCHAR(64),
  date_created      TIMESTAMP(6) not null,
  account_city      VARCHAR(255),
  account_province  VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_CUSTOMER_BANK_ACCOUNT_B
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version           double not null,
  bank_account_name VARCHAR(40) not null,
  bank_account_no   VARCHAR(32) not null,
  bank_code         VARCHAR(16) not null,
  bank_no           VARCHAR(16),
  branch            VARCHAR(64) not null,
  customer_id       double not null,
  is_corporate      tinyint(1) not null,
  is_default        tinyint(1) not null,
  is_verify         tinyint(1) not null,
  note              VARCHAR(128),
  status            VARCHAR(16) not null,
  subbranch         VARCHAR(64),
  date_created      TIMESTAMP(6) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_CUSTOMER_CHANNEL
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  bank_code    VARCHAR(64) not null,
  bank_type    VARCHAR(2) not null,
  channel_code VARCHAR(64) not null,
  channel_type VARCHAR(2) not null,
  customer_id  double not null,
  payment_mode VARCHAR(2) not null,
  payment_type VARCHAR(2) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_CUSTOMER_GAME_RECHARGE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  cardid           VARCHAR(255),
  cardnum          VARCHAR(255),
  customer_oper_id VARCHAR(255),
  game_area        VARCHAR(255),
  game_srv         VARCHAR(255),
  game_userid      VARCHAR(255),
  game_userid2     VARCHAR(255),
  game_userpsw     VARCHAR(255),
  re_charge_status VARCHAR(255),
  fee              double
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_CUSTOMER_LIMIT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version     double not null,
  customer_no VARCHAR(24) not null,
  is_valid    tinyint(1) not null,
  limit_date  double not null,
  limit_month double not null,
  limit_type  VARCHAR(16) not null,
  limit_value double not null,
  trade_type  VARCHAR(16) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_CUSTOMER_MOBLIE_RECHARGE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  cardid           VARCHAR(32),
  customer_oper_id VARCHAR(32),
  numbers          VARCHAR(32),
  re_charge_status VARCHAR(32),
  fee              double
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_CUSTOMER_OPERATOR
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version           double not null,
  customer_id       double not null,
  date_created      TIMESTAMP(6) not null,
  default_email     VARCHAR(64) not null,
  default_mobile    VARCHAR(16),
  last_login_time   TIMESTAMP(6),
  last_updated      TIMESTAMP(6) not null,
  login_error_time  double not null,
  login_password    VARCHAR(40),
  name              VARCHAR(32) not null,
  pay_password      VARCHAR(40),
  role_set          VARCHAR(64) not null,
  status            VARCHAR(16) not null,
  login_flag        VARCHAR(1),
  welcome_msg       VARCHAR(255),
  lastpwchange_time TIMESTAMP(6)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_DYNAMIC_KEY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  customer_id  double not null,
  date_created TIMESTAMP(6) not null,
  is_used      tinyint(1) not null,
  `key`          VARCHAR(32) not null,
  parameter    VARCHAR(36) not null,
  proc_method  VARCHAR(8) not null,
  send_to      VARCHAR(64) not null,
  send_type    VARCHAR(8) not null,
  time_expired TIMESTAMP(6) not null,
  time_used    TIMESTAMP(6),
  use_type     VARCHAR(16) not null,
  verification VARCHAR(36) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_ISMP_OPERATOR
(
  id int(11) NOT NULL AUTO_INCREMENT,
  mobile_satus          double not null,
  pass_protect_answer   VARCHAR(32) not null,
  pass_protect_question VARCHAR(8) not null,
  mobile_trun           VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_LIMIT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version     double not null,
  is_valid    tinyint(1) not null,
  limit_date  double not null,
  limit_month double not null,
  limit_type  VARCHAR(16) not null,
  limit_value double not null,
  trade_type  VARCHAR(16) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_LOGIN_CERTIFICATE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version              double not null,
  certificate_type     VARCHAR(8) not null,
  customer_operator_id double not null,
  date_created         TIMESTAMP(6) not null,
  is_verify            tinyint(1) not null,
  last_updated         TIMESTAMP(6) not null,
  login_certificate    VARCHAR(64) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_LOGIN_LOG
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version              double not null,
  customer_id          double not null,
  customer_operator_id double not null,
  date_created         TIMESTAMP(6) not null,
  login_certificate    VARCHAR(64) not null,
  login_ip             VARCHAR(20) not null,
  login_result         VARCHAR(8) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_OP_LOG
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  account      VARCHAR(255) not null,
  action       VARCHAR(255) not null,
  controller   VARCHAR(255) not null,
  customer_no  VARCHAR(255) not null,
  date_created TIMESTAMP(6) not null,
  ip           VARCHAR(255) not null,
  params       LONGBLOB not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_OP_RELATION
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version     double not null,
  actions     VARCHAR(255) not null,
  controllers VARCHAR(255) not null,
  names       VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_OTHER_SYS
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version       double not null,
  date_created  TIMESTAMP(6) not null,
  last_updated  TIMESTAMP(6) not null,
  merchant_id   VARCHAR(32),
  merchant_name VARCHAR(32),
  sign_key      VARCHAR(255),
  use_status    VARCHAR(6) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_OTHER_SYS_CUSTOMER
(
  id int(11) NOT NULL AUTO_INCREMENT,
  other_sys_name VARCHAR(32),
  bind_status    VARCHAR(16),
  merchant_id    VARCHAR(32)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_PAY_ANOTHER_RECORD
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version           double not null,
  account_type      VARCHAR(1) not null,
  amount            double not null,
  bank_account_name VARCHAR(40) not null,
  bank_account_no   VARCHAR(32) not null,
  bank_name         VARCHAR(100) not null,
  branch            VARCHAR(64) not null,
  city              VARCHAR(50),
  currency          VARCHAR(10) not null,
  detail_no         VARCHAR(64) not null,
  out_trade_no      VARCHAR(64),
  partner           VARCHAR(20) not null,
  protocol          VARCHAR(20),
  province          VARCHAR(50),
  remark            VARCHAR(100),
  serial_no         VARCHAR(10) not null,
  status            VARCHAR(10),
  subbranch         VARCHAR(64) not null,
  trade_date        double not null,
  trade_use         VARCHAR(50)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_PERSONAL_INFO
(
  id int(11) NOT NULL AUTO_INCREMENT,
  date_certification          TIMESTAMP(6),
  identity_no                 VARCHAR(32),
  identity_type               VARCHAR(8),
  is_certification            tinyint(1),
  version                     double,
  address                     VARCHAR(255),
  contact_way                 VARCHAR(255),
  gender                      VARCHAR(8),
  grade                       VARCHAR(16),
  nationality                 VARCHAR(8),
  occupation                  VARCHAR(8),
  valid_time                  TIMESTAMP(6),
  last_trxs_update_date       TIMESTAMP(6),
  limit_per_trx               FLOAT,
  month_qutor_count           FLOAT,
  total_amount_limit_permonth FLOAT,
  total_amountlimit_per_day   FLOAT,
  trade_amount_current_day    FLOAT,
  trade_count_current_day     FLOAT,
  trxs_count_num_per_day      FLOAT
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_REFUND_DETAIL
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version          double not null,
  amount           VARCHAR(255) not null,
  fee_amount       VARCHAR(255) not null,
  fee_no           VARCHAR(255) not null,
  fee_note         VARCHAR(255) not null,
  from_customer_no VARCHAR(255) not null,
  note             VARCHAR(255) not null,
  out_trade_no     VARCHAR(255) not null,
  refund_amount    VARCHAR(255) not null,
  refund_date      TIMESTAMP(6) not null,
  refund_note      VARCHAR(255) not null,
  status           VARCHAR(255) not null,
  to_customer_no   VARCHAR(255) not null,
  refund_no        VARCHAR(255),
  refund_type      VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_ROYALTY_BINDING
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version            double not null,
  customer_id        double not null,
  date_created       TIMESTAMP(6) not null,
  nopass_refund_flag VARCHAR(1) not null,
  out_customer_code  VARCHAR(255),
  partner_id         double not null,
  status             VARCHAR(4) not null,
  biz_type           VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_SEQ_CUSTNO
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table CM_TRADE_BANK
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version    double not null,
  cm_bank_id double not null,
  type       VARCHAR(32) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table EIMS_ITEM
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  channel      VARCHAR(255) not null,
  channel_type VARCHAR(5) not null,
  closedate    TIMESTAMP(6) not null,
  content      VARCHAR(255),
  createdate   TIMESTAMP(6) not null,
  opercounts   double not null,
  opersts      VARCHAR(1) not null,
  target       VARCHAR(255) not null,
  userid       VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table EIMS_USER
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version    double not null,
  counts     double not null,
  expiredate TIMESTAMP(6) not null,
  ips        VARCHAR(255),
  maxcounts  double not null,
  userid     VARCHAR(255) not null,
  userpwd    VARCHAR(255) not null,
  usersts    VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GM_CATEGORY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  brief_name   VARCHAR(32) not null,
  introduction VARCHAR(32) not null,
  name         VARCHAR(32) not null,
  src          VARCHAR(32) not null,
  status       VARCHAR(32) not null,
  template_id  VARCHAR(32) not null,
  type         VARCHAR(32) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GM_COMMODITY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  buy_price    VARCHAR(32) not null,
  category_id  VARCHAR(255) not null,
  code         VARCHAR(32) not null,
  introduction VARCHAR(32) not null,
  name         VARCHAR(32) not null,
  sale_price   VARCHAR(32) not null,
  src          VARCHAR(32) not null,
  status       VARCHAR(32) not null,
  supplier     VARCHAR(32) not null,
  type_id      VARCHAR(32) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GM_COM_ELEMENT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version       double not null,
  commodity_id  VARCHAR(32) not null,
  element_id    VARCHAR(32) not null,
  element_order VARCHAR(32) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GM_ELEMENT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version    double not null,
  is_default VARCHAR(32) not null,
  is_null    VARCHAR(32) not null,
  length     VARCHAR(32) not null,
  name       VARCHAR(32) not null,
  status     VARCHAR(32) not null,
  tag_name   VARCHAR(32) not null,
  type       VARCHAR(32) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GM_ELEMENT_LIST
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version    double not null,
  element_id VARCHAR(32) not null,
  value      VARCHAR(32) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GM_TYPE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version    double not null,
  face_price VARCHAR(32) not null,
  name       VARCHAR(32) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GWFAQ
(
  id int(11) NOT NULL AUTO_INCREMENT,
  trxno       VARCHAR(20),
  ispay       VARCHAR(5),
  contact     VARCHAR(20),
  quedesc     VARCHAR(200),
  createdate  DATE,
  issend      VARCHAR(5),
  status      VARCHAR(5),
  proceresult VARCHAR(200)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GWGOODS
(
  id int(11) NOT NULL AUTO_INCREMENT,
  gworders_id VARCHAR(22),
  goodid      VARCHAR(64),
  goodname    VARCHAR(128) not null,
  counts      double not null,
  unitprice   double(10,2),
  amount      double(10,2) not null,
  createdate  DATE not null,
  gooddesc    VARCHAR(256)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GWLGOPTIONS
(
  logistics_type    VARCHAR(10) not null,
  logistics_fee     double not null,
  logistics_payment VARCHAR(10) not null,
  createdate        DATE,
  id int(11) NOT NULL AUTO_INCREMENT,
  gworders_id       VARCHAR(22)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GWLOGISTIC
(
  recname     VARCHAR(10) not null,
  recpid      VARCHAR(30),
  recphone    VARCHAR(30),
  recaddr     VARCHAR(128),
  recmphone   VARCHAR(30),
  recpost     VARCHAR(8),
  deliver     VARCHAR(20),
  delivertime VARCHAR(128),
  delivers    VARCHAR(10),
  createate   DATE not null,
  id int(11) NOT NULL AUTO_INCREMENT,
  gworders_id VARCHAR(22),
  createdate  TIMESTAMP(6)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GWMESSAGES
(
  messageid      VARCHAR(30) not null,
  id int(11) NOT NULL AUTO_INCREMENT,
  exttype        double,
  extid          VARCHAR(20) not null,
  notifyvalue    VARCHAR(800) not null,
  notifytemplate VARCHAR(64),
  receiver       VARCHAR(256) not null,
  pub            VARCHAR(20),
  subject        VARCHAR(64),
  notifymode     double not null,
  msgstate       double not null,
  proparity      double,
  restimes       double not null,
  createdate     DATE not null,
  rescode        VARCHAR(20),
  resdat         DATE,
  msgtype        VARCHAR(30) not null,
  xdesc2         VARCHAR(64),
  xdesc          VARCHAR(64)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GWORDERS
(
  id int(11) NOT NULL AUTO_INCREMENT,
  service            VARCHAR(64) not null,
  ordernum           VARCHAR(128) not null,
  partnerid          VARCHAR(22) not null,
  seller_name        VARCHAR(100) not null,
  seller_id          VARCHAR(22) not null,
  buyer_name         VARCHAR(100),
  buyer_id           VARCHAR(22),
  price              double not null,
  quantity           double not null,
  sign_type          VARCHAR(10) not null,
  discount           double not null,
  discount_mode      VARCHAR(10),
  discountdesc       VARCHAR(20),
  currency           VARCHAR(4) not null,
  orderdate          VARCHAR(14) not null,
  createdate         DATE not null,
  query_key          VARCHAR(64),
  exp_dates          VARCHAR(5) not null,
  ips                VARCHAR(20) not null,
  ordersts           VARCHAR(64) not null,
  seller_remarks     VARCHAR(512),
  buyer_remarks      VARCHAR(512),
  return_url         VARCHAR(512),
  notify_url         VARCHAR(512),
  subject            VARCHAR(256) not null,
  bodys              VARCHAR(512) not null,
  royalty_type       VARCHAR(2),
  royalty_parameters VARCHAR(512),
  amount             double not null,
  gwlgoptions_id     VARCHAR(22),
  pricechanged       tinyint(1),
  apiversion         VARCHAR(20),
  locale             VARCHAR(10) not null,
  preference         VARCHAR(25),
  refund_amount      double,
  refund_sts         VARCHAR(10),
  order_type         VARCHAR(3) not null,
  version            double not null,
  gwl_update         DATE not null,
  charsets           VARCHAR(10) not null,
  paymethod          VARCHAR(10),
  service_fee        double,
  agentid            VARCHAR(22),
  closedate          DATE,
  partner_id         VARCHAR(22),
  show_url           VARCHAR(512),
  directpayamt       double,
  buyer_realname     VARCHAR(32),
  buyer_contact      VARCHAR(64),
  ext_param1         VARCHAR(512),
  ext_param2         VARCHAR(512)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GWPAYMENTS
(
  id int(11) NOT NULL AUTO_INCREMENT,
  prid       VARCHAR(22),
  paytype    VARCHAR(5) not null,
  paynum     VARCHAR(22) not null,
  payamount  INTEGER not null,
  amount     INTEGER not null,
  infromacct VARCHAR(32),
  intoacct   VARCHAR(32),
  refnum     VARCHAR(64),
  paysts     VARCHAR(2) not null,
  paytime    DATE not null,
  channel    VARCHAR(10) not null,
  modes      VARCHAR(20),
  recepit    VARCHAR(64),
  createdate DATE not null,
  payinfo    VARCHAR(120),
  billsts    VARCHAR(2)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GWPROC
(
  id int(11) NOT NULL AUTO_INCREMENT,
  gwt_id     VARCHAR(22),
  trxnum     VARCHAR(128) not null,
  trxdate    VARCHAR(8),
  procid     VARCHAR(10) not null,
  procname   VARCHAR(30) not null,
  createdate DATE not null,
  prosts     VARCHAR(3) not null,
  operdate   DATE,
  operresult VARCHAR(256),
  params     VARCHAR(128),
  batch      VARCHAR(30),
  opers      VARCHAR(30)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GWSUBORDERS
(
  id int(11) NOT NULL AUTO_INCREMENT,
  gwordersid    VARCHAR(16) not null,
  outtradeno    VARCHAR(64) not null,
  seller_name   VARCHAR(128),
  seller_custno VARCHAR(18) not null,
  seller_code   VARCHAR(128) not null,
  seller_ext    VARCHAR(256),
  amount        double not null,
  createdate    DATE not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GWSYN
(
  trxid        VARCHAR(255) not null,
  version      double not null,
  createdate   TIMESTAMP(6) not null,
  synclosedate TIMESTAMP(6) not null,
  synresult    VARCHAR(255),
  synsts       VARCHAR(1) not null,
  syntimes     double not null
  ,PRIMARY KEY (trxid)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table GWTRXS
(
  gworders_id       VARCHAR(22),
  trxnum            VARCHAR(128) not null,
  trxtype           VARCHAR(4) not null,
  channel           VARCHAR(2) not null,
  payment_type      VARCHAR(2) not null,
  paymode           VARCHAR(2) not null,
  amount            double not null,
  currency          VARCHAR(4) not null,
  servicecode       VARCHAR(20),
  acquirer_code     VARCHAR(20) not null,
  acquirer_name     VARCHAR(30),
  acquirer_merchant VARCHAR(64) not null,
  acquirer_seq      VARCHAR(128),
  acquirer_date     VARCHAR(8),
  acquirer_msg      VARCHAR(256),
  submitdates       VARCHAR(20) not null,
  payer_ip          VARCHAR(20),
  refnum            VARCHAR(128),
  authcode          VARCHAR(6),
  fromacctid        VARCHAR(22),
  fromacctnum       VARCHAR(256) not null,
  buyer_id          VARCHAR(22),
  buyer_name        VARCHAR(64),
  payinfo           VARCHAR(64),
  createdate        DATE not null,
  closedate         DATE not null,
  trxsts            VARCHAR(3) not null,
  opers             VARCHAR(10),
  operdate          DATE not null,
  version           double not null,
  trxdesc           VARCHAR(100),
  id int(11) NOT NULL AUTO_INCREMENT,
  acquirer_id       VARCHAR(20),
  fee_amount        double,
  trade_no          VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table LOST_ORDER_COMMENT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version            double not null,
  check_comment      VARCHAR(255),
  check_time         TIMESTAMP(6),
  check_user_name    VARCHAR(255),
  re_check_comment   VARCHAR(255),
  re_check_time      TIMESTAMP(6),
  re_check_user_name VARCHAR(255),
  trade_id           double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table MAPI_ASYNC_NOTIFY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  date_created      TIMESTAMP(6),
  last_updated      TIMESTAMP(6),
  customer_id       double not null,
  record_table      VARCHAR(48),
  record_id         double,
  notify_method     VARCHAR(32) not null,
  notify_address    VARCHAR(128) not null,
  sign_type         VARCHAR(32),
  notify_contents   VARCHAR(4000),
  notify_time       TIMESTAMP(6),
  notify_id         VARCHAR(64),
  next_attempt_time TIMESTAMP(6),
  status            VARCHAR(32) not null,
  attempts_count    double,
  time_expired      TIMESTAMP(6),
  is_verify         tinyint(1),
  output_charset    VARCHAR(255),
  response          VARCHAR(256)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table MOBILE_CLIENT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version    double not null,
  brand      VARCHAR(255) not null,
  brand_code VARCHAR(255) not null,
  name       VARCHAR(255) not null,
  type       VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table MOBILE_ORDER
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  amount       double not null,
  customer_id  double not null,
  date_created TIMESTAMP(6) not null,
  last_updated TIMESTAMP(6) not null,
  order_detail VARCHAR(64) not null,
  order_title  VARCHAR(64),
  status       VARCHAR(16) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table MODEL
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  model_name   VARCHAR(255) not null,
  model_path   VARCHAR(255) not null,
  operate      VARCHAR(255),
  parent_point VARCHAR(255) not null,
  point        VARCHAR(255) not null,
  model_level  VARCHAR(255),
  modelindex   double,
  service_code VARCHAR(20)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table MP_TRANS_RECORD
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version        double not null,
  amount         double not null,
  balance        double not null,
  batchno        VARCHAR(255) not null,
  ext1           VARCHAR(255),
  ext2           VARCHAR(255),
  ext3           VARCHAR(255),
  originalid     double not null,
  status         double not null,
  success        double not null,
  systemno       VARCHAR(255) not null,
  traceno        VARCHAR(255) not null,
  trans_datetime TIMESTAMP(6) not null,
  trans_type     VARCHAR(10) not null,
  userid         VARCHAR(64) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table NOTIFY_FAIL_WATCHER
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version double not null,
  email   VARCHAR(100),
  mobile  VARCHAR(11),
  name    VARCHAR(10) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table REFUND_AUTH
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version         double not null,
  amount          double not null,
  batch_id        double,
  customer_no     VARCHAR(24) not null,
  flag            tinyint(1) not null,
  note            VARCHAR(64),
  out_trade_no    VARCHAR(64) not null,
  trade_no        VARCHAR(36) not null,
  upload_time     TIMESTAMP(6),
  operator_id     double not null,
  auth_time       TIMESTAMP(6),
  status          VARCHAR(16),
  type            VARCHAR(16),
  refund_refuse   VARCHAR(64),
  refund_batch_id double,
  number_no       double,
  bank_name       VARCHAR(50),
  refund_acc_name VARCHAR(50),
  refund_acc_no   VARCHAR(30)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table REFUND_BATCH
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version      double not null,
  batch_no     VARCHAR(20),
  flag         tinyint(1) not null,
  total_amount double not null,
  total_count  double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table REFUND_HISTORY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  batch_date  DATE not null,
  batch_no    VARCHAR(20) not null,
  customer_no VARCHAR(24) not null,
  succ_amt    double(15,2),
  succ_items  double,
  fail_amt    double(15,2),
  fail_items  double,
  export_path VARCHAR(100),
  note        VARCHAR(20),
  note1       VARCHAR(20),
  note2       VARCHAR(20),
  note3       VARCHAR(255),
  version     double
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table ROLE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version     double not null,
  belong_sys  VARCHAR(255) not null,
  create_time TIMESTAMP(6) not null,
  role_name   VARCHAR(255) not null,
  role_status VARCHAR(255) not null,
  model       VARCHAR(1000),
  customer_id VARCHAR(16)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table RUND_TRADE_BASE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version          double not null,
  amount           double not null,
  currency         VARCHAR(4) not null,
  date_created     TIMESTAMP(6) not null,
  fee_amount       double not null,
  last_updated     TIMESTAMP(6) not null,
  note             VARCHAR(64),
  original_id      double,
  out_trade_no     VARCHAR(64),
  partner_id       double,
  payee_account_no VARCHAR(24) not null,
  payee_code       VARCHAR(64),
  payee_id         double,
  payee_name       VARCHAR(64),
  payer_account_no VARCHAR(24) not null,
  payer_code       VARCHAR(64),
  payer_id         double,
  payer_name       VARCHAR(64),
  root_id          double,
  status           VARCHAR(16) not null,
  subject          VARCHAR(256),
  trade_date       double not null,
  trade_no         VARCHAR(36) not null,
  trade_type       VARCHAR(16) not null,
  rund_date        TIMESTAMP(6)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table RUND_COMMENT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version          double not null,
  check_comment    VARCHAR(255),
  check_time       TIMESTAMP(6),
  re_check_comment VARCHAR(255),
  re_check_time    TIMESTAMP(6),
  rund_time        double not null,
  rund_trade_id    double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table SERVLET_TYPE_MANAGE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version              double not null,
  create_customer_id   VARCHAR(255) not null,
  create_customer_name VARCHAR(255) not null,
  create_date          TIMESTAMP(6) not null,
  customer_service_id  double not null,
  end_date             TIMESTAMP(6),
  parent_servlet_code  VARCHAR(255) not null,
  servlet_code         VARCHAR(12) not null,
  start_date           TIMESTAMP(6),
  trade_status         VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table SLA_EVENTS
(
  id int(11) NOT NULL AUTO_INCREMENT,
  createdate  TIMESTAMP(6),
  createor    VARCHAR(100),
  descs       VARCHAR(100),
  mescid      double,
  features    VARCHAR(50),
  mescontent  VARCHAR(500) not null,
  meslever    double,
  prdsrc      VARCHAR(20),
  status      VARCHAR(5) not null,
  updated     DATE,
  version     double,
  createddate TIMESTAMP(6)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table SLA_EVENTTYPE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  content VARCHAR(500),
  name    VARCHAR(50) not null,
  version double
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_CUSTOMER_BLACK_LIST
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version               double not null,
  address               VARCHAR(255),
  business_license_code VARCHAR(20) not null,
  business_scope        VARCHAR(255),
  business_validity     TIMESTAMP(6),
  create_date           TIMESTAMP(6),
  identity_no           VARCHAR(20) not null,
  identity_type         VARCHAR(255),
  identity_validity     TIMESTAMP(6),
  legal_person          VARCHAR(255),
  name                  VARCHAR(64) not null,
  nickname              VARCHAR(64) not null,
  organization_code     VARCHAR(20) not null,
  source                VARCHAR(10) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_PERSON_BLACK_LIST
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version       double not null,
  address       VARCHAR(255),
  bank_account  VARCHAR(32),
  contact_way   VARCHAR(255),
  create_date   TIMESTAMP(6),
  gender        VARCHAR(8) not null,
  identity_no   VARCHAR(20) not null,
  identity_type VARCHAR(8) not null,
  name          VARCHAR(32) not null,
  nationality   VARCHAR(8) not null,
  occupation    VARCHAR(8) not null,
  source        VARCHAR(10) not null,
  valid_time    TIMESTAMP(6)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_RISK_CONTROL_RULE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  b_desc      VARCHAR(300) not null,
  b_type      VARCHAR(255) not null,
  rule        VARCHAR(300) not null,
  status      VARCHAR(255) not null,
  create_op   VARCHAR(50),
  create_time TIMESTAMP(6),
  edit_op     VARCHAR(50),
  edit_time   TIMESTAMP(6),
  rule_about  VARCHAR(32),
  rule_params VARCHAR(100),
  verify_op   VARCHAR(50),
  verify_time TIMESTAMP(6)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_PAYMENT
(
  id int(11) NOT NULL AUTO_INCREMENT,
  body                 VARCHAR(512),
  frozen_amount        double,
  out_royalty_trade_no VARCHAR(128) not null,
  payment_ip           VARCHAR(20) not null,
  payment_request_id   double not null,
  refund_amount        double,
  royalty_params       VARCHAR(512),
  royalty_status       VARCHAR(16),
  royalty_type         VARCHAR(16),
  show_url             VARCHAR(200)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_BASE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version           double not null,
  amount            double not null,
  currency          VARCHAR(4) not null,
  date_created      TIMESTAMP(6) not null,
  fee_amount        double not null,
  last_updated      TIMESTAMP(6) not null,
  note              VARCHAR(64),
  original_id       double,
  out_trade_no      VARCHAR(64),
  partner_id        double,
  payee_account_no  VARCHAR(24) not null,
  payee_code        VARCHAR(64),
  payee_id          double,
  payee_name        VARCHAR(64),
  payer_account_no  VARCHAR(24) not null,
  payer_code        VARCHAR(64),
  payer_id          double,
  payer_name        VARCHAR(64),
  root_id           double,
  status            VARCHAR(16) not null,
  subject           VARCHAR(256),
  trade_date        double not null,
  trade_no          VARCHAR(36) not null,
  trade_type        VARCHAR(16) not null,
  refund_apply      VARCHAR(64),
  trade_payment_id  double,
  payment_type      VARCHAR(255),
  service_type      VARCHAR(12),
  map               VARCHAR(255),
  gw_transaction_id VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_RISK_LIST
(
  serial_no       VARCHAR(255) not null,
  amount          double not null,
  created_date    TIMESTAMP(6) not null,
  is_send_mail    VARCHAR(255) not null,
  merchant_id     VARCHAR(30) not null,
  merchant_name   VARCHAR(100) not null,
  merchant_no     VARCHAR(20) not null,
  trade_type      VARCHAR(15) not null,
  id int(11) NOT NULL AUTO_INCREMENT,
  version         double,
  risk_control_id double,
  trade_base_id   double,
  trade_date      TIMESTAMP(6)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_RISK_NOTIFIER
(
  id int(11) NOT NULL AUTO_INCREMENT,
  email  VARCHAR(20) not null,
  name   VARCHAR(20) not null,
  sub_id VARCHAR(20) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_ACCOUNT_COMMAND_SAF
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version         double not null,
  amount          double not null,
  command_no      VARCHAR(40) not null,
  command_type    VARCHAR(16) not null,
  currency        VARCHAR(4) not null,
  date_created    TIMESTAMP(6) not null,
  from_account_no VARCHAR(24) not null,
  last_updated    TIMESTAMP(6) not null,
  out_trade_no    VARCHAR(64),
  redo_count      double,
  redo_flag       VARCHAR(4),
  resp_code       VARCHAR(4),
  sub_seqno       double,
  subject         VARCHAR(255),
  sync_flag       VARCHAR(1) not null,
  sync_time       TIMESTAMP(6) not null,
  to_account_no   VARCHAR(24) not null,
  trade_id        double not null,
  trade_no        VARCHAR(36) not null,
  trans_code      VARCHAR(40),
  trans_id        double,
  transfer_type   VARCHAR(16) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_BUS_CARD
(
  id int(11) NOT NULL AUTO_INCREMENT,
  fee           double,
  charge_status VARCHAR(255),
  order_number  VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_CHARGE
(
  id int(11) NOT NULL AUTO_INCREMENT,
  added_method       VARCHAR(16),
  back_amount        double,
  funding_source     VARCHAR(16),
  is_credit_card     tinyint(1),
  payment_ip         VARCHAR(20),
  payment_request_id double
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_FROZEN
(
  id int(11) NOT NULL AUTO_INCREMENT,
  frozen_params    VARCHAR(512) not null,
  frozen_status    VARCHAR(16) not null,
  frozen_type      VARCHAR(16) not null,
  handle_batch     VARCHAR(16),
  handle_oper_id   double,
  handle_oper_name VARCHAR(16),
  handle_status    VARCHAR(16),
  handle_time      TIMESTAMP(6),
  unfrozen_amount  double not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_OFCARD_BILL
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version                  double not null,
  cporder_card_id          VARCHAR(32) not null,
  cporder_card_num         VARCHAR(32) not null,
  cporder_id               VARCHAR(32) not null,
  cporder_order_cash       VARCHAR(32) not null,
  cporder_order_time       VARCHAR(32) not null,
  reconc_note              VARCHAR(200) not null,
  reconc_result            VARCHAR(32) not null,
  reconc_type              VARCHAR(32) not null,
  reconc_warn              VARCHAR(32) not null,
  sporder_card_id          VARCHAR(32) not null,
  sporder_card_num         VARCHAR(32) not null,
  sporder_id               VARCHAR(32) not null,
  sporder_order_cash       VARCHAR(32) not null,
  sporder_order_time       VARCHAR(32) not null,
  sporder_recharge_staus   VARCHAR(32) not null,
  sporder_payee_code       VARCHAR(255),
  sporder_payee_name       VARCHAR(255),
  sporder_payer_code       VARCHAR(255),
  sporder_payer_name       VARCHAR(255),
  sporder_recharge_account VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_PAY
(
  id int(11) NOT NULL AUTO_INCREMENT,
  fee            double,
  process_status VARCHAR(128)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_PAYMENT_INFORMATION
(
  id int(11) NOT NULL AUTO_INCREMENT,
  account_no       VARCHAR(24),
  bank_trade_code  VARCHAR(30),
  bar_code_check   VARCHAR(8),
  bar_code_company VARCHAR(8),
  bar_code_do_code VARCHAR(8),
  bar_code_month   VARCHAR(2),
  bar_code_period  VARCHAR(8),
  bar_code_times   VARCHAR(10),
  bar_code_year    VARCHAR(4),
  bar_code_zone    VARCHAR(8),
  bill_type        VARCHAR(10),
  charges_info_one VARCHAR(40),
  charges_info_two VARCHAR(40),
  charges_methods  VARCHAR(20),
  charges_unit     VARCHAR(50) not null,
  city             VARCHAR(20) not null,
  export_flag      VARCHAR(255) not null,
  is_template      VARCHAR(4) not null,
  province         VARCHAR(20) not null,
  fee              double
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_PAYMENT_REMIND
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version       double not null,
  business_no   VARCHAR(65),
  business_type VARCHAR(30),
  customer_no   VARCHAR(24),
  payment_date  VARCHAR(20),
  remind_date   VARCHAR(20),
  remind_type   VARCHAR(20)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_PRECARD
(
  productname VARCHAR(100),
  productnum  VARCHAR(22),
  amount      double,
  curcode     VARCHAR(16),
  merrcvurl   VARCHAR(512),
  ordertime   DATE,
  ext1        VARCHAR(100),
  ext2        VARCHAR(100),
  id int(11) NOT NULL AUTO_INCREMENT,
  merid       VARCHAR(18),
  systemid    VARCHAR(22),
  paystatus   VARCHAR(2),
  notifyurl   VARCHAR(512),
  sellerid    VARCHAR(22),
  signtype    VARCHAR(6),
  version     VARCHAR(6),
  charsets    VARCHAR(10),
  paymenttype VARCHAR(2),
  outtradeno  VARCHAR(128)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_REFUND
(
  id int(11) NOT NULL AUTO_INCREMENT,
  acquirer_code         VARCHAR(16),
  acquirer_merchant_no  VARCHAR(20),
  acquirer_account_id   double,
  back_fee              double not null,
  check_date            TIMESTAMP(6),
  check_operator_id     double,
  check_status          VARCHAR(16) not null,
  customer_oper_id      double,
  handle_batch          VARCHAR(16),
  handle_command_no     VARCHAR(40),
  handle_oper_id        double,
  handle_oper_name      VARCHAR(16),
  handle_status         VARCHAR(16) not null,
  handle_time           TIMESTAMP(6),
  real_refund_amount    double not null,
  refund_params         VARCHAR(512),
  refund_type           VARCHAR(16) not null,
  royalty_refund_status VARCHAR(16) not null,
  submit_batch          VARCHAR(16) not null,
  submit_type           VARCHAR(32) not null,
  submitter             VARCHAR(32) not null,
  refund_batch          double,
  refund_flag           VARCHAR(32),
  channel               VARCHAR(255),
  trxnum                VARCHAR(255),
  refund_bank_type      VARCHAR(255),
  first_app_date        TIMESTAMP(6),
  first_app_id          double,
  first_app_name        VARCHAR(255),
  last_app_date         TIMESTAMP(6),
  last_app_id           double,
  last_app_name         VARCHAR(255),
  refund_batch_no       VARCHAR(255),
  refund_handle_date    TIMESTAMP(6),
  refund_handle_id      double,
  refund_handle_name    VARCHAR(255),
  refund_recheck_date   TIMESTAMP(6),
  refund_recheck_id     double,
  refund_recheck_name   VARCHAR(255),
  reality_refund_amount double,
  refunded_amount       double,
  acquirer_seq          VARCHAR(255),
  direct_note           VARCHAR(255),
  direct_status         VARCHAR(10)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_REFUND_BATCH
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version          double not null,
  app_id           VARCHAR(255),
  app_name         VARCHAR(255),
  batch_amount     double not null,
  batch_count      VARCHAR(255) not null,
  refund_bank_code VARCHAR(255),
  refund_bank_name VARCHAR(255),
  refund_date      TIMESTAMP(6) not null,
  refund_type      VARCHAR(255),
  status           VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_REFUND_CREDIT_CARD
(
  id int(11) NOT NULL AUTO_INCREMENT,
  card_account_name VARCHAR(40),
  card_no           VARCHAR(16),
  card_no_end_four  VARCHAR(4),
  from_bank_code    VARCHAR(255),
  pay_no            VARCHAR(20),
  pay_status        VARCHAR(16),
  to_bank_code      VARCHAR(16),
  fee               double
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_REMIND
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version       double not null,
  customer_no   VARCHAR(24) not null,
  remind_email  VARCHAR(40),
  remind_mobile VARCHAR(11)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_TRANSFER
(
  id int(11) NOT NULL AUTO_INCREMENT,
  customer_oper_id double not null,
  submit_ip        VARCHAR(20) not null,
  submit_type      VARCHAR(32) not null,
  submitter        VARCHAR(32) not null,
  transfer_model   VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_TRANSFER_TO_BANK
(
  id int(11) NOT NULL AUTO_INCREMENT,
  account_name    VARCHAR(40),
  bank_account_no VARCHAR(255),
  bank_code       VARCHAR(20),
  bank_no         VARCHAR(16),
  fee             double,
  pay_no          VARCHAR(20),
  branch          VARCHAR(64),
  subbranch       VARCHAR(64),
  city            VARCHAR(50),
  province        VARCHAR(50),
  from_bank_code  VARCHAR(20)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_UNFROZEN
(
  id int(11) NOT NULL AUTO_INCREMENT,
  handle_batch     VARCHAR(16) not null,
  handle_oper_name VARCHAR(16) not null,
  handle_pper_id   double,
  handle_status    VARCHAR(16) not null,
  handle_time      TIMESTAMP(6),
  unfrozen_params  VARCHAR(512) not null,
  unfrozen_status  VARCHAR(16) not null,
  unfrozen_type    VARCHAR(16) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_WITHDRAWN
(
  id int(11) NOT NULL AUTO_INCREMENT,
  acquirer_account_id        double,
  check_date                 TIMESTAMP(6),
  check_operator_id          double,
  check_status               VARCHAR(16) not null,
  customer_bank_account_id   double not null,
  customer_bank_account_name VARCHAR(40) not null,
  customer_bank_account_no   VARCHAR(32) not null,
  customer_bank_code         VARCHAR(16),
  customer_bank_no           VARCHAR(16) not null,
  customer_oper_id           double not null,
  handle_batch               VARCHAR(16),
  handle_command_no          VARCHAR(40),
  handle_oper_id             double,
  handle_oper_name           VARCHAR(16),
  handle_status              VARCHAR(16) not null,
  handle_time                TIMESTAMP(6),
  is_corporate               tinyint(1) not null,
  real_transfer_amount       double not null,
  submit_type                VARCHAR(32) not null,
  submitter                  VARCHAR(32) not null,
  transfer_fee               double not null,
  first_app_date             TIMESTAMP(6),
  first_app_id               double,
  first_app_name             VARCHAR(255),
  last_app_date              TIMESTAMP(6),
  last_app_id                double,
  last_app_name              VARCHAR(255),
  with_handle_date           TIMESTAMP(6),
  with_handle_id             double,
  with_handle_name           VARCHAR(255),
  with_re_handle_date        TIMESTAMP(6),
  with_re_handle_id          double,
  with_re_handle_name        VARCHAR(255),
  withdrawn_batch_no         VARCHAR(255),
  account_city               VARCHAR(255),
  account_province           VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TRADE_WITHDRAWN_FAIL_DETAIL
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version    double not null,
  detail     VARCHAR(255) not null,
  num        double not null,
  random_num VARCHAR(255) not null,
  reason     VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table WITHDRAWN_BATCH
(
  id int(11) NOT NULL AUTO_INCREMENT,
  version             double not null,
  app_id              VARCHAR(255) not null,
  app_name            VARCHAR(255) not null,
  batch_amount        double not null,
  batch_count         VARCHAR(255) not null,
  status              VARCHAR(255) not null,
  withdrawn_bank_code VARCHAR(255),
  withdrawn_bank_name VARCHAR(255),
  withdrawn_date      TIMESTAMP(6) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;





-- procedure
DROP PROCEDURE IF EXISTS `PROC_POSTTRX`;

CREATE DEFINER = `tjgigold`@`%` PROCEDURE `PROC_POSTTRX`(IN `v_trxid` varchar(50),OUT `v_step` varchar(50),OUT `v_result` varchar(50))
BEGIN
	#Routine body goes here...
	declare _err int default 0;  
	DECLARE v_gworder_id varchar(30);
	DECLARE v_id       double(19,0);
	DECLARE v_root_id  double DEFAULT 0;
	DECLARE v_count    double;
	DECLARE i_partner_id double(19,0);
	DECLARE v_fee_amount double;

	DECLARE c_buyer_id       double(19,0);
	DECLARE c_buyer_acctno   varchar(30);
	DECLARE c_buyer_name     varchar(30);

	DECLARE c_seller_id      double(19,0);
	DECLARE c_payee_acctno  varchar(30);
	DECLARE c_seller_name    varchar(30);
	DECLARE v_compamount double;
	
	-- cursor orders paramater
	DECLARE or_royalty_type double;
	DECLARE or_partnerid VARCHAR(50);
	DECLARE or_buyer_id VARCHAR(50);
	DECLARE or_buyer_name VARCHAR(50);
	DECLARE or_id double;
	DECLARE or_amount double;
	DECLARE or_currency VARCHAR(10);
	DECLARE or_createdate datetime;
	DECLARE or_closedate datetime;
	DECLARE or_ordernum VARCHAR(50);
	DECLARE or_seller_name VARCHAR(50);
	DECLARE or_ordersts VARCHAR(10);
	DECLARE or_subj VARCHAR(50);
	DECLARE or_ips VARCHAR(50);
	DECLARE or_show_url VARCHAR(100);
	DECLARE or_bodys VARCHAR(500);
	DECLARE or_royalty_parameters VARCHAR(500);
	
	-- cursor listtrxs paramater
	DECLARE t_amount double;
	DECLARE t_currency VARCHAR(10);
	DECLARE t_createdate datetime;
	DECLARE t_closedate datetime;
	DECLARE t_acquirer_name VARCHAR(50);
	DECLARE t_trxnum VARCHAR(50);
	DECLARE t_buyer_name VARCHAR(50);
	DECLARE t_fromacctnum VARCHAR(50);
	DECLARE t_fromacctid VARCHAR(50);
	DECLARE t_id double;
	DECLARE t_trxsts VARCHAR(10);
	DECLARE t_payer_ip VARCHAR(50);
	DECLARE t_gworders_id VARCHAR(50);
	DECLARE t_buyer_id VARCHAR(100);

	/*
	tranaction engineer
	v_step [0: posttrx success][1:generate instruction success] [-1:failure]
	v_seq[root_id|command_no|sqlerrmsg]
	*/
	
	DECLARE listtrxs cursor FOR select t.amount,t.currency,t.createdate,t.closedate,t.acquirer_name,t.trxnum,
					t.buyer_name,t.fromacctnum,t.fromacctid,t.id,t.trxsts,t.payer_ip,t.gworders_id,t.buyer_id
					from GWTRXS t left join GWORDERS d on t.gworders_id=d.id
				where t.id=v_trxid;
	
	DECLARE orders cursor FOR select royalty_type,partnerid,buyer_id,buyer_name,id,amount,currency,
					createdate,closedate,ordernum,seller_name,ordersts,`subject`,ips,show_url,bodys,royalty_parameters 
			from GWORDERS where id=(select gworders_id from GWTRXS where id=v_trxid)and ordersts=3;

	declare continue handler for sqlexception, sqlwarning, not found set _err=1;
	START TRANSACTION;
	 
		select gworders_id into v_gworder_id from GWTRXS where id=v_trxid;
		OPEN orders;
		orders_cursor:LOOP
		FETCH orders into or_royalty_type,or_partnerid,or_buyer_id,or_buyer_name,or_id,or_amount,or_currency,or_createdate,
							or_closedate,or_ordernum,or_seller_name,or_ordersts,or_subj,or_ips,or_show_url,or_bodys,or_royalty_parameters;
			 select if(MAX(id) is null,1,MAX(id)+1) into v_root_id from TRADE_BASE ;
			 select ID,`NAME` into c_seller_id,c_seller_name from CM_CUSTOMER where customer_no=(select seller_id from
						 GWORDERS where id=v_gworder_id);
		
			 if or_royalty_type=10 then
					select srv_acc_no into c_payee_acctno 
					from tjboss.BO_CUSTOMER_SERVICE cs inner join CM_CUSTOMER cc on cs.customer_id=cc.id
					where cc.customer_no=or_partnerid and cs.service_code='royalty' and is_current=1;
			 else
					select ACCOUNT_NO into c_payee_acctno from CM_CUSTOMER where customer_no=or_partnerid;
			 end if;

			 select count(*) into v_count from CM_CUSTOMER where customer_no=or_buyer_id;
			 if v_count!=0 then
				 select ACCOUNT_NO,`NAME` into c_buyer_acctno,c_buyer_name from CM_CUSTOMER WHERE customer_no=or_buyer_id;
			 else
				 select ACCOUNT_NO,buyer_name into c_buyer_acctno,c_buyer_name 
				 from tjboss.BO_INNER_ACCOUNT where `key`='guestAcc';
			 end if;

			 select count(*) into v_count from TRADE_BASE where trade_no=or_id;
			 select id into i_partner_id from CM_CUSTOMER where customer_no=or_partnerid;
			 if v_count=0 then
				 -- compute the ext_fee
				 select round((ifnull(fee_params,1)*amount/100),0)  into v_fee_amount 
						from CM_CUSTOMER cc inner join tjboss.BO_CUSTOMER_SERVICE bcs on cc.id=bcs.customer_id
				 where cc.id=i_partner_id and bcs.service_code='online' and is_current=1 and `enable`=1;

				 if v_fee_amount=0 then
					 set v_fee_amount=1;
				 end if;

				 if or_royalty_type=10 then
						set v_fee_amount=0;
				 end if;

				 insert into TRADE_BASE
				 (id, version, amount, currency, date_created, last_updated, note, original_id, out_trade_no, partner_id,
					payee_account_no, payee_code, payee_id, payee_name, payer_account_no, payer_code, payer_id, 
					payer_name, root_id, status, subject, trade_date, trade_no, trade_type,fee_amount)
				 values
				 (v_root_id, 0, or_amount, or_currency, or_createdate, or_closedate, or_buyer_name, `null`, or_ordernum,i_partner_id,
					c_payee_acctno, or_seller_name,c_seller_id, c_seller_name,
					c_buyer_acctno, or_buyer_name, ifnull(c_buyer_id,`null`),c_buyer_name,
					v_root_id, (case when or_ordersts='3' then 'completed'
													 when or_ordersts='0'then 'starting'
													 when or_ordersts='4' then 'closed'
													 else 'processing' end), or_subj, DATE_FORMAT(or_closedate,'%Y%m%d'),or_id, 'payment',v_fee_amount);

				 insert into TRADE_PAYMENT
					 (id, payment_request_id, refund_amount, frozen_amount, payment_ip, show_url, body, out_royalty_trade_no,
						royalty_type, royalty_params, royalty_status)
				 values
					 (v_root_id,or_id,0,0,or_ips,or_show_url,or_bodys,or_ordernum,or_royalty_type,or_royalty_parameters,'starting');
			 else
				 select root_id into v_root_id from TRADE_BASE where trade_no=or_id;
			 end if;
			end loop orders_cursor;
		CLOSE orders;
		
		OPEN listtrxs;
		trx_sursor:loop

		FETCH listtrxs into t_amount,t_currency,t_createdate,t_closedate,t_closedate,t_trxnum,t_buyer_name,t_fromacctnum,t_fromacctid,
						t_id,t_trxsts,t_payer_ip,t_gworders_id,t_buyer_id;
			if t_trxsts=1 then -- success trx
				 select count(*) into v_count from CM_CUSTOMER where customer_no=t_buyer_id;
				 if v_count!=0 then
					 select ID, ACCOUNT_NO,`NAME` into c_buyer_id,c_buyer_acctno,c_buyer_name from CM_CUSTOMER WHERE customer_no=t_buyer_id;
				 else
						select ACCOUNT_NO into c_buyer_acctno
						from tjboss.BO_INNER_ACCOUNT where `key`='guestAcc';
				 end if;
				select if(MAX(id) is null,1,MAX(id)+1) into v_id from TRADE_BASE ;
				if v_root_id is null or v_root_id=0 then
						set v_root_id=v_id;
				end if;
				select count(*) into v_count from  TRADE_BASE where trade_no=t_id;
				if v_count=0 then
					insert into TRADE_BASE
						(id, version, amount, currency,date_created, last_updated, note, ORIGINAL_ID, out_trade_no, partner_id,
						 payee_account_no, payee_code, payee_id,payee_name,
						 payer_account_no, payer_code, payer_id,payer_name,
						 root_id,fee_amount,
						 `status`, `subject`, trade_date, trade_no, trade_type)
					values
						(v_id, 0, t_amount,t_currency, t_createdate, t_closedate, concat(t_acquirer_name,':',t_trxnum), v_root_id, t_trxnum, 
						 `null`,c_buyer_acctno, t_buyer_name, c_buyer_id,c_buyer_name,
						 t_fromacctnum, `null`, t_fromacctid,t_acquirer_name,v_root_id,0,
						 if(t_trxsts='1','completed',t_trxsts), concat(t_trxnum,t_acquirer_name,')'),DATE_FORMAT(t_closedate,'%Y%m%d'),
						t_id,'charge');

					insert into TRADE_CHARGE(id, added_method, back_amount, funding_source, is_credit_card, payment_ip, payment_request_id)
					values(v_id,  t_acquirer_name, 0, 'ONLINE', 0,t_payer_ip, t_gworders_id);
				end if;
			end if;
			
			BEGIN
				DECLARE or_id double;
				DECLARE or_version double;
				DECLARE or_amount double;
				DECLARE or_ordersts varchar(10);

				DECLARE yorders cursor FOR select gw.id,gw.version,gw.amount,gw.ordersts from GWORDERS gw 
					where id=t_gworders_id and ordersts=3;
				OPEN yorders;
				yorder_cursor:LOOP
				FETCH yorders into or_id,or_version,or_amount,or_ordersts;
					select count(*) into v_count from TRADE_BASE where trade_no=or_id;
					select if(MAX(id) is null,1,MAX(id)+1) into v_id from TRADE_BASE ;
					if t_trxsts=1 and v_count>0 and t_amount>=or_amount then -- wirte payment trx
						if or_ordersts<>'completed' then
							 update TRADE_BASE set status='completed',version=version+1
								where id=v_root_id and version=or_version and trade_no=or_id;
						end if;
					end if;
				end LOOP yorder_cursor;
				CLOSE yorders;
			END;

			set v_step='0';
			set v_result=v_root_id;
			CALL PROC_POSTINS(v_root_id,v_step,v_result);
			if v_step=0 then
				set v_step=1;
			end if;
			
			end LOOP trx_sursor;
			CLOSE listtrxs;
	if _err=0 then
		COMMIT;
	ELSE
		set v_step=-1;
    set v_result='procedure has a error!';
		ROLLBACK;
	end if;
END;



DROP PROCEDURE IF EXISTS `PROC_CHANNELVIEWS`;

CREATE DEFINER = `tjgigold`@`%` PROCEDURE `PROC_CHANNELVIEWS`(IN `orderid` varchar(50),OUT `slaresult` varchar(50))
BEGIN
		DECLARE v_code VARCHAR(50);
		DECLARE v_ids VARCHAR(50);
		-- DECLARE _err int DEFAULT 0;
	  DECLARE channels CURSOR FOR select ACQUIRE_CODE,ID from gwchannel g where g.channel_sts=0;
		-- DECLARE channels CURSOR FOR select '12',10  ;
		set slaresult='B2C{';
	  open channels;
	  myCursor:loop
	  fetch channels into v_code,v_ids;
			set slaresult=concat(slaresult,v_code,':',v_ids,',');
		end loop myCursor;
		CLOSE channels;
		set slaresult=substr(slaresult,1,length(slaresult)-1);
		set slaresult=concat(slaresult,'}');

END;


DROP PROCEDURE IF EXISTS `PROC_DAYQUTOR`;

CREATE DEFINER = `tjgigold`@`%` PROCEDURE `PROC_DAYQUTOR`(IN `v_dayqutor` double,OUT `v_tradenos` varchar(50))
BEGIN
	#Routine body goes here...
	DECLARE v_dayqutorcount double DEFAULT 0;
  DECLARE v_trade_no varchar(50);
  DECLARE v_amount double;
	declare _err int default 0; 
  DECLARE cur CURSOR FOR select trade_no,amount from TRADE_BASE t 
	where t.date_created >=now() and t.trade_type='payment' order by t.date_created;
	
  declare continue handler for sqlexception, sqlwarning, not found set _err=1;
	set v_tradenos = ''; 
  open cur;
    cursor_loop:loop
      fetch cur into v_trade_no, v_amount;     
				set v_dayqutorcount = v_dayqutorcount + v_amount;
				if v_dayqutorcount > v_dayqutor then
						 set v_tradenos=concat(v_trade_no,',',v_tradenos);
			  end if;
    end loop cursor_loop;
  close cur;
	if _err=1 then	
		 set v_tradenos = '';
 end if; 

END;


DROP PROCEDURE IF EXISTS `PROC_DECISION`;

CREATE DEFINER = `tjgigold`@`%` PROCEDURE `PROC_DECISION`(IN `v_order_id` varchar(50),IN `v_acquire_code` varchar(50),IN `v_acquire_merchant` varchar(50),OUT `v_code` varchar(50))
BEGIN
	#Routine body goes here...
	 DECLARE v_line double;
   DECLARE v_max double DEFAULT 10;
   DECLARE v_flag double;
	 DECLARE v_dates datetime;
	 DECLARE v_createdate datetime;
	 DECLARE v_id INT;
	 DECLARE v_ordersts VARCHAR(2);
	 DECLARE _err int default 0;
 
   DECLARE orderref cursor for select t.exp_dates,t.id,t.ordersts,t.createdate from tjismp.GWORDERS t where id=v_order_id;
	 
	 DECLARE continue handler for sqlexception, not found set _err=1;
   
	 open orderref;
     
     cursor_loop:loop
     fetch orderref into v_dates,v_id,v_ordersts,v_createdate;
       If v_ordersts<>'0' THEN
          IF v_ordersts='1' or v_ordersts='2' or v_ordersts=3 THEN -- PAID SUCCESS
              set v_code='501127';
          ELSE
              set v_code='530003';
          END IF;
       Else
         SELECT COUNT(*) into v_line FROM GWPAYMENTS where PAYNUM=v_id AND PAYTYPE=0;
         IF v_line>=v_max THEN  -- REPEAT LIMITATION
            set v_code='700001';  --
         ELSE
            IF v_line>0 THEN -- TODO OTHER CHECK
              set v_code='0';
            ELSE  -- ENABLE
              set v_code='0';
            END IF;
         END IF;
         -- ORDER IS CLOSED OR NOT
				   select case when
							 NOW()<(
							 case when instr(v_dates,'d')>0 then DATE_ADD(v_createdate,INTERVAL substr(v_dates,0,length(v_dates)-1) DAY)
										when instr(v_dates,'h')>0 then DATE_ADD(v_createdate,INTERVAL substr(v_dates,0,length(v_dates)-1) HOUR)
										when instr(v_dates,'m')>0 then DATE_ADD(v_createdate,INTERVAL substr(v_dates,0,length(v_dates)-1) MINUTE)
										when instr(v_dates,'s')>0 then DATE_ADD(v_createdate,INTERVAL substr(v_dates,0,length(v_dates)-1) SECOND)
										else 0
							 end) then 0
							 else 1
					end into v_flag  from dual;
        
         if v_flag=1 then
            update GWORDERS set v_ordersts='4' where id=v_id;
            set v_code='530006'; -- order closedt
         end if;
        End IF;
     end loop cursor_loop;
     close orderref;

     if _err=1 then
         set v_code='530004'; --  CHECK EXCEPTION
     end if; 
          
END;



DROP PROCEDURE IF EXISTS `proc_minutesnumberquota`;

CREATE DEFINER = `tjgigold`@`%` PROCEDURE `proc_minutesnumberquota`(IN `v_minutes` double,IN `v_amount` double,IN `v_number` double,OUT `v_tradenos` varchar(50))
BEGIN
	#Routine body goes here...
	DECLARE v_trade_no VARCHAR(50);
	DECLARE v_count int default 0;
	declare _err int default 0; 
	DECLARE cur cursor for 
			select t.trade_no from tjismp.TRADE_BASE t where
						 t.date_created between date_sub(now(), interval v_minutes MINUTE) and now()
						 and t.trade_type='payment' and t.amount>v_amount order by t.date_created;
	declare EXIT handler for sqlexception, sqlwarning, not found set _err=1;
	set v_tradenos= '';
	open cur;
	cursor_loop:loop
	fetch cur into v_trade_no;
		 set v_count = v_count +1;
		 if v_count > v_number then
        set v_tradenos=  concat(v_trade_no,',',v_tradenos);
     end if;
	end loop cursor_loop;
  close cur;
	if _err=1 then
		set v_tradenos= ''; 
  end if;   

END;


DROP PROCEDURE IF EXISTS `PROC_POSTINS`;

CREATE DEFINER = `tjgigold`@`%` PROCEDURE `PROC_POSTINS`(IN `v_root_id` double,OUT `rescode` varchar(50),OUT `resmsg` varchar(50))
BEGIN
	#Routine body goes here...
	declare _err int default 0; 
	DECLARE v_sub_seqno double(10,0) DEFAULT -1;
  DECLARE c_payee_acctno varchar(24);
	DECLARE c_payee_name varchar(128);
	DECLARE v_seq varchar(40);
	DECLARE v_command_no varchar(40);
	DECLARE redoflag varchar(1) DEFAULT 'F';
	#定义查询出来的参数
	DECLARE t_sta varchar(20);
  DECLARE t_amount double(24,0);
	DECLARE t_currency varchar(28);
	DECLARE t_payer_account_no varchar(40);
	DECLARE t_note varchar(400);
	DECLARE t_out_trade_no varchar(40);
	DECLARE t_payee_account_no varchar(50);
  DECLARE t_id double(24,0);
	DECLARE t_trade_no varchar(48);
	DECLARE t_trade_type varchar(20);
	DECLARE t_fee_amount double(20,0);
	
	DECLARE trade_type1 varchar(20);

	DECLARE cur CURSOR FOR select b.`status`,b.amount,b.fee_amount,b.currency,b.payer_account_no,b.note,
					b.out_trade_no,b.payee_account_no,b.id,b.trade_no,b.trade_type 
			 from TRADE_BASE b left join TRADE_ACCOUNT_COMMAND_SAF c on b.trade_no=c.trade_no
       where root_id=v_root_id and c.id is null order by (case when b.trade_type='charge' then 0 
																															 when b.trade_type='payment' then 1
																															 when b.trade_type='transfer' then 2 end) asc;

	declare EXIT handler for sqlexception, not found set _err=1;

	START TRANSACTION;

	select concat('90',DATE_FORMAT(NOW(),'%y%m%d'),
								lpad((select if(MAX(id) is null,1,MAX(id)+1) from TRADE_ACCOUNT_COMMAND_SAF),9,0),v_root_id)  
			INTO v_command_no from dual;
	OPEN cur;
	cursor_loop:loop
	FETCH cur INTO t_sta,t_amount,t_fee_amount,t_currency,t_payer_account_no,t_note,t_out_trade_no,
								 t_payee_account_no,t_id,t_trade_no,t_trade_type;
	
		if t_sta='completed' then
				SET redoflag='T';
		 end if;
		set v_sub_seqno=v_sub_seqno+1;
		select if(MAX(id)is null,1,MAX(id)+1) into v_seq from TRADE_ACCOUNT_COMMAND_SAF;
		
		insert into tjismp.TRADE_ACCOUNT_COMMAND_SAF
					 (id, version, command_no, command_type,resp_code,sync_flag,sync_time, 
						trans_code, trans_id, amount, currency, from_account_no, `subject`,
						out_trade_no, sub_seqno, to_account_no, trade_id, trade_no, 
						transfer_type,redo_count,redo_flag,date_created,last_updated)
				 values
					 (v_seq, 0, v_command_no, 'transfer',`null`,'S', NOW(),
						`null`, `null`,t_amount, t_currency, t_payer_account_no,t_note, 
						t_out_trade_no, v_sub_seqno,t_payee_account_no,t_id,t_trade_no,
						t_trade_type,0,redoflag,NOW(),NOW());
		
		 if t_trade_type='payment' then 
				set trade_type1='feeAcc';
		 ELSE
				set trade_type1='chargefeeAcc';
		 end if;

		 if(t_trade_type='payment' or t_trade_type='charge') and t_fee_amount>0 then -- generate ext fee instruction
						select ACCOUNT_NO,note into c_payee_acctno,c_payee_name from tjboss.BO_INNER_ACCOUNT where `key`= trade_type1;	
						select if(MAX(id)is null,1,MAX(id)+1) into v_seq from TRADE_ACCOUNT_COMMAND_SAF;
						set v_sub_seqno=v_sub_seqno+1;
						insert into tjismp.TRADE_ACCOUNT_COMMAND_SAF
						 (id, version, command_no, command_type,resp_code, sync_flag,sync_time, 
							trans_code, trans_id,amount, currency, from_account_no, `subject`,
							out_trade_no, sub_seqno, to_account_no, trade_id, trade_no, 
							transfer_type,redo_count,redo_flag,date_created,last_updated)
						 values(
							 v_seq,0,v_command_no,'transfer',`null`,'S',NOW(),
							 `null`,`null`,t_fee_amount,t_currency,t_payee_account_no,CONCAT(t_trade_type,'手续费'),
							 t_out_trade_no,v_sub_seqno,c_payee_acctno,t_id,concat(t_trade_no,'01'),
							'fee',0,redoflag,NOW(),NOW());
					end if;  
	
	end loop cursor_loop;
	CLOSE cur;
	set rescode='0';
  set resmsg=v_command_no;
	if _err=1 then
		set rescode=-1; 
		set resmsg='PROCEDURE exception'; 
  end if;  
  
END;



DROP PROCEDURE IF EXISTS `PROC_POSTPAYMENT`;

CREATE DEFINER = `tjgigold`@`%` PROCEDURE `PROC_POSTPAYMENT`(IN `v_paymentid` varchar(50),OUT `v_step` varchar(50),OUT `v_result` varchar(50))
BEGIN
	#Routine body goes here...
	declare _err int default 0;  
	DECLARE v_id       double(19,0);
	DECLARE v_root_id  double;
	DECLARE v_count    double;
	DECLARE i_partner_id double(19,0);
	DECLARE v_fee_amount double;
	DECLARE v_fee_param  double;

	DECLARE c_buyer_id double(19,0);
	DECLARE c_buyer_acctno varchar(30);
	DECLARE c_buyer_name VARCHAR(50);

	DECLARE c_seller_id double(19,0);
	DECLARE c_payee_acctno  varchar(30);
	DECLARE c_seller_name varchar(50);
	DECLARE v_paytype double;
	DECLARE v_paynum double(19,0);
	DECLARE payid double;
	
	DECLARE paymentlist CURSOR FOR 
		select gw.paytype,gw.paynum,gw.id from tjismp.GWPAYMENTS gw
		where id=v_paymentid or id=(select p.id from GWPAYMENTS p inner join tjismp.GWORDERS g on p.paynum=g.id
				where (g.ordersts=3 or g.ordersts=2 or g.ordersts=1)
				and p.id=(select prid from GWPAYMENTS pr  where pr.id=v_paymentid)) 
		order by id desc;

	declare continue handler for sqlexception, sqlwarning, not found set _err=1;

	START TRANSACTION;
	OPEN paymentlist;
	pay_cursor:LOOP
	FETCH paymentlist into v_paytype,v_paynum,payid;
		if v_paytype=0 then 
			BEGIN
				DECLARE pay_id double;
				DECLARE pay_amount double;
				DECLARE pay_ordernum VARCHAR(50);
				DECLARE pay_partnerid VARCHAR(50);
				DECLARE pay_seller_name VARCHAR(50);
				DECLARE pay_seller_id VARCHAR(50);
				DECLARE pay_buyer_name VARCHAR(50);
				DECLARE pay_buyer_id VARCHAR(50);
				DECLARE pay_currency VARCHAR(50);
				DECLARE pay_createdate datetime;
				DECLARE pay_ips VARCHAR(50);
				DECLARE pay_ordersts VARCHAR(10);
				DECLARE pay_subj VARCHAR(50);
				DECLARE pay_bodys VARCHAR(500);
				DECLARE pay_royalty_type VARCHAR(20);
				DECLARE pay_royalty_parameters VARCHAR(50);
				DECLARE pay_closedate datetime;
				DECLARE pay_show_url VARCHAR(500);

				DECLARE orders CURSOR FOR 
					select ifnull(s.id,g.id) as id, ifnull(s.amount,g.amount) as amount,IFNULL(s.outtradeno,ordernum) as ordernum, partnerid, 
						IFNULL(s.seller_code,g.seller_name) as seller_name, IFNULL(s.seller_custno,g.seller_id) as seller_id , 
						buyer_name, buyer_id,price, quantity, sign_type, discount, discount_mode, discountdesc, currency, orderdate, 
						g.createdate, query_key, exp_dates, ips, ordersts, seller_remarks, 
						buyer_remarks, return_url, notify_url, `subject`, bodys, royalty_type, royalty_parameters,
						service, gwlgoptions_id, pricechanged, apiversion, locale, preference, refund_amount, 
						refund_sts, order_type, version, gwl_update, charsets, paymethod, 
						service_fee, agentid,closedate, partner_id, show_url, directpayamt,
						buyer_realname, buyer_contact 
					from tjismp.GWORDERS g
					left join tjismp.GWSUBORDERS s on g.id=s.gwordersid where g.id=v_paynum;
					OPEN orders;
					orders_loop:LOOP
					FETCH orders into pay_id,pay_amount,pay_ordernum,pay_partnerid,pay_seller_name,pay_seller_id,pay_buyer_name,
								pay_buyer_id,pay_currency,pay_createdate,pay_ips,
								pay_ordersts,pay_subj,pay_bodys,pay_royalty_type,pay_royalty_parameters,pay_closedate,pay_show_url;
						select if(MAX(id) is null,1,MAX(id)+1) into v_id from TRADE_BASE ;
						if v_root_id is null or v_root_id=0 then
								set v_root_id=v_id;
						end if;

						select id,`name` into c_seller_id,c_seller_name from CM_CUSTOMER where customer_no=pay_seller_id;
						if pay_royalty_type=10 then
								select srv_acc_no into c_payee_acctno from tjboss.BO_CUSTOMER_SERVICE cs inner join CM_CUSTOMER cc on cs.customer_id=cc.id
								where cc.customer_no=pay_seller_id and cs.service_code='royalty' and is_current=1 and `enable`=1;
						else
								-- select ACCOUNT_NO into c_payee_acctno from cm_customer where customer_no=y.seller_id;
								select srv_acc_no into c_payee_acctno from tjboss.BO_CUSTOMER_SERVICE cs inner join CM_CUSTOMER cc on cs.customer_id=cc.id
								where cc.customer_no=pay_seller_id and cs.service_code='online' and is_current=1 and `enable`=1;
						end if;

						select count(*) into v_count from CM_CUSTOMER where customer_no=pay_buyer_id;
						if v_count!=0 then
							 select ACCOUNT_NO,`NAME`,id into c_buyer_acctno,c_buyer_name,c_buyer_id from CM_CUSTOMER WHERE customer_no=pay_buyer_id;
						else
							 select ACCOUNT_NO,'anonymous' into c_buyer_acctno,c_buyer_name
							 from tjboss.BO_INNER_ACCOUNT where `key`='guestAcc';
						end if;

						select count(*) into v_count from TRADE_BASE where trade_no=pay_id;
						select id into i_partner_id from CM_CUSTOMER where customer_no=pay_partnerid;
						if v_count=0 then
             -- compute the ext_fee
             select round((ifnull(fee_params,1)*amount/100),0),fee_params  into v_fee_amount,v_fee_param from CM_CUSTOMER cc inner join tjboss.BO_CUSTOMER_SERVICE bcs on cc.id=bcs.customer_id
             where cc.id=i_partner_id and bcs.service_code='online' and is_current=1 and `enable`=1;

             if v_fee_amount=0 and (v_fee_param<>0 or v_fee_param is null)  then
               set v_fee_amount=1;
             end if;

             if pay_royalty_type=10 then
                set v_fee_amount=0;
             end if;
						 -- reset fee 0
             set v_fee_amount=0;
             insert into TRADE_BASE
             (id, version, amount, currency, date_created, last_updated, note, original_id, out_trade_no, partner_id,
              payee_account_no, payee_code, payee_id, payee_name, payer_account_no, payer_code, payer_id, payer_name, root_id, 
							`status`, `subject`, trade_date, trade_no, trade_type,fee_amount)
             values
             (v_id, 0, pay_amount, pay_currency, pay_createdate, pay_closedate, pay_buyer_name, v_root_id, pay_ordernum,i_partner_id,
              c_payee_acctno, pay_seller_name,c_seller_id, c_seller_name,
              c_buyer_acctno, pay_buyer_name, ifnull(c_buyer_id,`null`),c_buyer_name,
              v_root_id, (case when pay_ordersts='1' then 'completed'
															 when pay_ordersts='2' then 'completed'
															 when pay_ordersts='3' then 'completed'
															 when pay_ordersts='0' then 'starting'
															 when pay_ordersts='4' then 'closed'
															 else 'processing' END), pay_subj, DATE_FORMAT(pay_closedate,'%Y%m%d'),pay_id, 'payment',
              v_fee_amount);

             insert into TRADE_PAYMENT
               (id, payment_request_id, refund_amount, frozen_amount, payment_ip, show_url, body, out_royalty_trade_no, royalty_type, royalty_params, royalty_status)
             values
               (v_id, pay_id, 0, 0, pay_ips, pay_show_url, pay_bodys, pay_ordernum, pay_royalty_type, pay_royalty_parameters,  'starting');
         else
            select root_id into v_root_id from TRADE_BASE where trade_no=pay_id;
         end if;
				 -- update the account info
				 if pay_ordersts='3' or pay_ordersts='2' or pay_ordersts='1' then
						update GWPAYMENTS set infromacct=c_buyer_acctno,intoacct=c_payee_acctno,paysts=1,recepit=v_root_id,paytime=NOW() where id=payid;
				 else
						update GWPAYMENTS set infromacct=c_buyer_acctno,intoacct=c_payee_acctno,recepit=v_root_id,paytime=NOW() where id=payid;
				 end if;
				end loop orders_loop;
			CLOSE orders;
		END;
	end if;
	if v_paytype=1 then -- ebank
		BEGIN
			DECLARE gw_amount double;
			DECLARE gw_currency VARCHAR(20);
			DECLARE gw_createdate datetime;
			DECLARE gw_closedate datetime;
			DECLARE gw_acquirer_name VARCHAR(50);
			DECLARE gw_trxnum VARCHAR(30);
			DECLARE gw_buyer_name VARCHAR(50);
			DECLARE gw_fromacctnum VARCHAR(50);
			DECLARE gw_acquirer_code VARCHAR(40);
			DECLARE gw_fee_amount double;
			DECLARE gw_trxsts VARCHAR(20);
			DECLARE gw_id double;
			DECLARE gw_channel VARCHAR(20);
			DECLARE gw_payer_ip VARCHAR(30);
			DECLARE gw_orders_id VARCHAR(20);
			DECLARE gw_buyer_id VARCHAR(20);
			DECLARE gw_servicecode VARCHAR(20);
			
			DECLARE listtrxs CURSOR FOR 
					select t.amount,t.currency,t.createdate,t.closedate,t.acquirer_name,t.trxnum,
							t.buyer_name,t.fromacctnum,t.acquirer_code,t.fee_amount,t.trxsts,t.id,t.channel,
							t.payer_ip,t.gworders_id,t.buyer_id,t.servicecode
					from GWTRXS t where id=v_paynum;
			open listtrxs;
			trxs_loop:LOOP
			FETCH listtrxs into gw_amount,gw_currency,gw_createdate,gw_closedate,gw_acquirer_name,gw_trxnum,gw_buyer_name,gw_fromacctnum,
						gw_acquirer_code,gw_fee_amount,gw_trxsts,gw_id,gw_channel,gw_payer_ip,gw_orders_id,gw_buyer_id,gw_servicecode;
				If gw_trxsts=1 then -- success trx
						 select count(*) into v_count from CM_CUSTOMER where customer_no=gw_buyer_id;
						 if v_count!=0 then
							 select ID, ACCOUNT_NO,`NAME` into c_buyer_id,c_buyer_acctno,c_buyer_name from CM_CUSTOMER WHERE customer_no=gw_buyer_id;
						 else
								select ACCOUNT_NO,'anonymous' into c_buyer_acctno,c_buyer_name
								from tjboss.BO_INNER_ACCOUNT where `key`='guestAcc';
						 end if;
						 select IF(MAX(id) is null,1,MAX(id)+1) into v_id from TRADE_BASE ;
			
						 if v_root_id is null or v_root_id=0 then
								set v_root_id=v_id;
						 end if;
						 select count(*) into v_count from  TRADE_BASE where trade_no=gw_id;
						 if v_count=0 then
							insert into TRADE_BASE
								(id, version, amount, currency,date_created, last_updated, note, ORIGINAL_ID, out_trade_no, partner_id,
								 payee_account_no, payee_code, payee_id,payee_name,
								 payer_account_no, payer_code, payer_id,payer_name,
								 root_id,fee_amount,
								 `status`, `subject`, trade_date, trade_no, trade_type,payment_type,service_type)
							values
								(v_id, 0, gw_amount,gw_currency, gw_createdate, gw_closedate, CONCAT(gw_acquirer_name,':',gw_trxnum), v_root_id, gw_trxnum, `null`,
								 c_buyer_acctno, ifnull(gw_buyer_name,c_buyer_name), c_buyer_id,c_buyer_name,
								 gw_fromacctnum, gw_acquirer_code, `null`,gw_acquirer_name,
								 v_root_id,ifnull(gw_fee_amount,0),
								 if(gw_trxsts='1','completed',gw_trxsts), CONCAT(gw_trxnum,'(',gw_acquirer_name,')'),DATE_FORMAT(gw_closedate,'%Y%m%d'), gw_id, 'charge',gw_channel,'onlinePay');

							insert into TRADE_CHARGE(id, added_method, back_amount, funding_source, is_credit_card, payment_ip, payment_request_id)
							values(v_id,  gw_acquirer_name, 0, 'ONLINE', 0,gw_payer_ip, gw_gworders_id);
						end if;
						update GWPAYMENTS set modes=gw_servicecode,infromacct=gw_fromacctnum,intoacct=c_buyer_acctno,paysts=1,recepit=v_id,paytime=NOW() where id=payid;
						BEGIN
							DECLARE pr_id double;
							DECLARE pr_amount double;
							DECLARE gwpayment CURSOR FOR select ss.prid,ss.amount from GWPAYMENTS ss where id=payid;
							open gwpayment;
							gwpayment_cursor:LOOP	
							FETCH gwpayment into pr_id,pr_amount;
								update GWPAYMENTS set modes=gw_servicecode where id=pr_id and amount=pr_amount;
							end LOOP gwpayment_cursor;
							CLOSE gwpayment;
						END;
        end If;
      end loop trxs_loop;
			CLOSE listtrxs;
		END;
  end if;
	end LOOP pay_cursor;
	CLOSE paymentlist;
	 set v_step='0';
   set v_result=v_root_id;
   CALL PROC_POSTINS(v_root_id,v_step,v_result);
		if v_step=0 then
			set v_step=1;
		end if;
	if _err =0 THEN
		COMMIT;
	ELSE 
		set v_step=-1;
    set v_result='procedure has a error!';
		ROLLBACK;
	end if;

END;



DROP PROCEDURE IF EXISTS `PROC_QryChannelByAmount`;

CREATE DEFINER = `tjgigold`@`%` PROCEDURE `PROC_QryChannelByAmount`(IN `amount` varchar(50),IN `bankCode` varchar(50),IN `oriChannelId` varchar(50),IN `customerId` varchar(50),IN `cardType` varchar(50),OUT `channelId` varchar(50))
label_pro:BEGIN
	#Routine body goes here...
	DECLARE isExist integer DEFAULT 0;
	select count(*) into isExist
   from tjismp.CHANNEL_ROUTE_BY_AMOUNT
   where UPPER(bank_code) = UPPER(bankCode)
     and card_type=cardType
     and CAST(amount AS DECIMAL) >= CAST(amount_start as DECIMAL)
     and CAST(amount AS DECIMAL) < CAST(amount_end as DECIMAL);

	if isExist <> 0 then
    select channel2 into channelId
      from tjismp.CHANNEL_ROUTE_BY_AMOUNT
     where UPPER(bank_code) = UPPER(bankCode)
      and card_type=cardType
      and CAST(amount AS DECIMAL) >= CAST(amount_start as DECIMAL)
     and CAST(amount AS DECIMAL) < CAST(amount_end as DECIMAL);

     select count(*) into isExist
      from tjismp.CM_CUSTOMER_CHANNEL b
      where b.CUSTOMER_ID=customerId
      and b.channel_code in (
        select upper(t.acquire_indexc)
        from gwchannel t
        where t.acquire_indexc not like '%-%'
					and t.bank_type='1'
					and t.id=cast(channelId as SIGNED )
					and t.channel_sts=0
      );
	   if isExist = 0 then
        set channelId =oriChannelId;
     end if;
     leave label_pro;
  end if;

	select count(*) into isExist
    from CHANNEL_ROUTE_BY_AMOUNT
   where UPPER(bank_code) = UPPER(bankCode)
     and card_type=cardType
     and cast(amount as DECIMAL) < cast(amount_start as DECIMAL)
     and (amount_end is not null or amount_end = '');

  if isExist <> 0 then
    select channel1 into channelId
      from CHANNEL_ROUTE_BY_AMOUNT
     where UPPER(bank_code) = UPPER(bankCode)
      and card_type=cardType
      and cast(amount as DECIMAL) < cast(amount_start as DECIMAL)
      and (amount_end is not null or amount_end = '');

     select count(*) into isExist
      from CM_CUSTOMER_CHANNEL b
      where b.CUSTOMER_ID=to_number(customerId)
      and b.channel_code in (
        select upper(t.acquire_indexc)
        from gwchannel  t
         where t.acquire_indexc not like '%-%'
        and t.bank_type='1'
        and t.id=cast(channelId as SIGNED)
        and t.channel_sts=0
      );

     if isExist = 0 then
        set channelId =oriChannelId;
     end if;
     leave label_pro;
  end if;

  select count(*) into isExist
    from CHANNEL_ROUTE_BY_AMOUNT
   where UPPER(bank_code) = UPPER(bankCode)
     and card_type=cardType
     and cast(amount as DECIMAL) >= cast(amount_end as DECIMAL);

  if isExist <> 0 then
    select channel3 into channelId
      from CHANNEL_ROUTE_BY_AMOUNT
     where UPPER(bank_code) = UPPER(bankCode)
       and card_type=cardType
       and cast(amount as DECIMAL) >= cast(amount_end as DECIMAL);

			select count(*) into isExist
      from CM_CUSTOMER_CHANNEL b
      where b.CUSTOMER_ID=to_number(customerId)
      and b.channel_code in (
        select upper(t.acquire_indexc)
        from gwchannel  t
         where t.acquire_indexc not like '%-%'
        and t.bank_type='1'
        and t.id=cast(channelId as SIGNED)
        and t.channel_sts=0
      );

     if isExist = 0 then
       set channelId =oriChannelId;
     end if;
    leave label_pro;
  end if;

  select count(*) into isExist
    from CHANNEL_ROUTE_BY_AMOUNT
   where UPPER(bank_code) = UPPER(bankCode)
     and card_type=cardType
     and (amount_end is null or amount_end = '')
     and cast(amount as DECIMAL) > cast(amount_start as DECIMAL);

  if isExist <> 0 then
    select channel2 into channelId
      from CHANNEL_ROUTE_BY_AMOUNT
     where UPPER(bank_code) = UPPER(bankCode)
       and card_type=cardType
       and (amount_end is null or amount_end = '')
       and cast(amount as DECIMAL) > cast(amount_start as DECIMAL);

     select count(*) into isExist
      from CM_CUSTOMER_CHANNEL b
      where b.CUSTOMER_ID=to_number(customerId)
      and b.channel_code in (
        select upper(t.acquire_indexc)
        from gwchannel  t
        where t.acquire_indexc not like '%-%'
        and t.bank_type='1'
        and t.id=cast(channelId as SIGNED)
        and t.channel_sts=0
      );

     if isExist = 0 then
       set channelId =oriChannelId;
     end if;
     leave label_pro;
		end if;

    select count(*) into isExist
    from CHANNEL_ROUTE_BY_AMOUNT
   where UPPER(bank_code) = UPPER(bankCode)
     and card_type=cardType
     and ( amount_end is null or amount_end ='')
     and cast(amount as DECIMAL) <= cast(amount_start as DECIMAL);

  if isExist <> 0 then
    select channel1 into channelId
      from CHANNEL_ROUTE_BY_AMOUNT
     where UPPER(bank_code) = UPPER(bankCode)
       and card_type=cardType
       and ( amount_end is null or amount_end ='')
       and cast(amount as DECIMAL) <= cast(amount_start as DECIMAL); 

     select count(*) into isExist
      from CM_CUSTOMER_CHANNEL b
      where b.CUSTOMER_ID=to_number(customerId)
      and b.channel_code in (
        select upper(t.acquire_indexc)
        from gwchannel  t
         where t.acquire_indexc not like '%-%'
        and t.bank_type='1'
        and t.id=cast(channelId as SIGNED)
        and t.channel_sts=0
      );

     if isExist = 0 then
        set channelId =oriChannelId;
     end if;
     leave label_pro;
  end if;

  set channelId=oriChannelId;
END;



DROP PROCEDURE IF EXISTS `PROC_QryChannelByAmount_EXT`;

CREATE DEFINER = `tjgigold`@`%` PROCEDURE `PROC_QryChannelByAmount_EXT`(IN `amount` varchar(50),IN `bankCode` varchar(50),IN `oriChannelId` varchar(50),IN `customerId` varchar(50),IN `cardType` varchar(50),OUT `channelId` varchar(50))
label_pro:BEGIN
	#Routine body goes here...
	DECLARE isExist integer DEFAULT 0;

	select count(*)
    into isExist
    from CHANNEL_ROUTE_BY_AMOUNT
   where UPPER(bank_code) = UPPER(bankCode)
     and card_type=cardType
     and CAST(amount AS DECIMAL) >= CAST(amount_start AS DECIMAL)
     and CAST(amount AS DECIMAL) < CAST(amount_end AS DECIMAL);

  if isExist <> 0 then

    select channel2
      into channelId
      from CHANNEL_ROUTE_BY_AMOUNT
     where UPPER(bank_code) = UPPER(bankCode)
      and card_type=cardType
      and CAST(amount AS DECIMAL) >= CAST(amount_start AS DECIMAL)
     and CAST(amount AS DECIMAL) < CAST(amount_end AS DECIMAL);


     select count(*) into isExist
      from CM_CUSTOMER_CHANNEL b
      where b.CUSTOMER_ID=CAST(customerId AS SIGNED)
      AND b.channel_type =(case cardType when '1' then '2' else '1' end )
      and b.channel_code in (
        select upper(t.acquire_indexc)
        from gwchannel  t
         where t.acquire_indexc not like '%-%'
        and t.bank_type='1'
        and t.id=CAST(channelId AS SIGNED)
        and t.channel_sts=0
      );

     if isExist = 0 then

       SET channelId =oriChannelId;

     end if;

     leave label_pro;

  end if;

   select count(*)
    into isExist
    from CHANNEL_ROUTE_BY_AMOUNT
   where UPPER(bank_code) = UPPER(bankCode)
     and card_type=cardType
     and CAST(amount AS DECIMAL) < CAST(amount_start AS DECIMAL)
     and (amount_end is not null or amount_end = '');

  if isExist <> 0 then

    select channel1
      into channelId
      from CHANNEL_ROUTE_BY_AMOUNT
     where UPPER(bank_code) = UPPER(bankCode)
      and card_type=cardType
      and CAST(amount AS DECIMAL) < CAST(amount_start AS DECIMAL)
      and (amount_end is not null or amount_end = '');


     select count(*) into isExist
      from CM_CUSTOMER_CHANNEL b
      where b.CUSTOMER_ID=CAST(customerId AS SIGNED)
            AND b.channel_type =(case cardType when '1' then '2' else '1' end )
      and b.channel_code in (
        select upper(t.acquire_indexc)
        from gwchannel  t
         where t.acquire_indexc not like '%-%'
        and t.bank_type='1'
        and t.id=CAST(channelId AS SIGNED)
        and t.channel_sts=0
      );

     if isExist = 0 then

        SET channelId =oriChannelId;

     end if;

     leave label_pro;

  end if;

  select count(*)
    into isExist
    from CHANNEL_ROUTE_BY_AMOUNT
   where UPPER(bank_code) = UPPER(bankCode)
        and card_type=cardType
     and CAST(amount AS DECIMAL) >= CAST(amount_end AS DECIMAL);

  if isExist <> 0 then

    select channel3
      into channelId
      from CHANNEL_ROUTE_BY_AMOUNT
     where UPPER(bank_code) = UPPER(bankCode)
          and card_type=cardType
       and CAST(amount AS DECIMAL) >= CAST(amount_end AS DECIMAL);


          select count(*) into isExist
      from CM_CUSTOMER_CHANNEL b
      where b.CUSTOMER_ID=CAST(customerId AS SIGNED)
            AND b.channel_type =(case cardType when '1' then '2' else '1' end )
      and b.channel_code in (
        select upper(t.acquire_indexc)
        from gwchannel  t
         where t.acquire_indexc not like '%-%'
        and t.bank_type='1'
        and t.id=CAST(channelId AS SIGNED)
        and t.channel_sts=0
      );

     if isExist = 0 then

       SET channelId =oriChannelId;

     end if;

    leave label_pro;

  end if;

  select count(*)
    into isExist
    from CHANNEL_ROUTE_BY_AMOUNT
   where UPPER(bank_code) = UPPER(bankCode)
        and card_type=cardType
     and (amount_end is null or amount_end = '')
     and CAST(amount AS DECIMAL) > CAST(amount_start AS DECIMAL);

  if isExist <> 0 then

    select channel2
      into channelId
      from CHANNEL_ROUTE_BY_AMOUNT
     where UPPER(bank_code) = UPPER(bankCode)
          and card_type=cardType
       and (amount_end is null or amount_end = '')
       and CAST(amount AS DECIMAL) > CAST(amount_start AS DECIMAL);

     select count(*) into isExist
      from CM_CUSTOMER_CHANNEL b
      where b.CUSTOMER_ID=CAST(customerId AS SIGNED)
            AND b.channel_type =(case cardType when '1' then '2' else '1' end )
      and b.channel_code in (
        select upper(t.acquire_indexc)
        from gwchannel  t
         where t.acquire_indexc not like '%-%'
        and t.bank_type='1'
        and t.id=CAST(channelId AS SIGNED)
        and t.channel_sts=0
      );

     if isExist = 0 then

        SET channelId =oriChannelId;

     end if;

     leave label_pro;

  end if;



    select count(*)
    into isExist
    from CHANNEL_ROUTE_BY_AMOUNT
   where UPPER(bank_code) = UPPER(bankCode)
        and card_type=cardType
     and ( amount_end is null or amount_end ='')
     and CAST(amount AS DECIMAL) <= CAST(amount_start AS DECIMAL);

  if isExist <> 0 then

    select channel1
      into channelId
      from CHANNEL_ROUTE_BY_AMOUNT
     where UPPER(bank_code) = UPPER(bankCode)
          and card_type=cardType
       and ( amount_end is null or amount_end ='')
       and CAST(amount AS DECIMAL) <= CAST(amount_start AS DECIMAL); 

     select count(*) into isExist
      from CM_CUSTOMER_CHANNEL b
      where b.CUSTOMER_ID=CAST(customerId AS SIGNED)
            AND b.channel_type =(case cardType when '1' then '2' else '1' end )
      and b.channel_code in (
        select upper(t.acquire_indexc)
        from gwchannel  t
         where t.acquire_indexc not like '%-%'
        and t.bank_type='1'
        and t.id=CAST(channelId AS SIGNED)
        and t.channel_sts=0
      );

     if isExist = 0 then

        SET channelId =oriChannelId;

     end if;

     leave label_pro;

  end if;

  SET channelId=oriChannelId;

END;


DROP PROCEDURE IF EXISTS `PROC_ROUTECHANNEL`;

CREATE DEFINER = `tjgigold`@`%` PROCEDURE `PROC_ROUTECHANNEL`(IN `v_orderid` varchar(50),IN `v_indexc` varchar(50),OUT `v_channelid` varchar(50))
BEGIN
	#Routine body goes here...
	DECLARE v_amount DOUBLE;
	DECLARE v_order_type VARCHAR(20);
	declare _err int default 0; 
	DECLARE thisorder CURSOR FOR select o.order_type,o.amount from tjismp.GWORDERS o where id=v_orderid;
	declare continue handler for sqlexception, sqlwarning, not found set _err=1;
	set v_channelid=0;
	IF  v_orderid<>'' then
		OPEN thisorder;
			thisorder_cursor:LOOP
			FETCH thisorder INTO v_order_type,v_amount;
				select id into v_channelid from (
               select * from gwchannel g 
									where (g.acquire_indexc=v_indexc or g.acquire_code=v_indexc or g.acquire_indexc=CONCAT('UNP-',v_indexc))
									and v_order_type=g.channel_type and v_amount<g.qutor and channel_sts=0 order by g.qutor asc
        ) as aa where rownum=1;
			
			end loop thisorder_cursor;
		CLOSE thisorder;
	else -- direct charge
			select id into v_channelid from (
						 select * from gwchannel g 
								where (g.acquire_indexc=v_indexc or g.acquire_code=v_indexc or g.acquire_indexc=CONCAT('UNP-',v_indexc))
								and 1=g.channel_type and channel_sts=0 order by g.qutor asc
			) as bb where rownum=1;
  end if;
	if _err=1 then
     set v_channelid = 0;
  end if;    
	
END;


DROP PROCEDURE IF EXISTS `PROC_ROUTECHANNEL_EXT`;

CREATE DEFINER = `tjgigold`@`%` PROCEDURE `PROC_ROUTECHANNEL_EXT`(IN `v_orderid` varchar(50),IN `v_indexc` varchar(50),IN `v_amount` double,IN `v_partner` varchar(50),OUT `v_channelid` varchar(50))
BEGIN
	#Routine body goes here...
	DECLARE v_bigquota double;
	DECLARE v_ordertype varchar(20);
	DECLARE v_quota double;
	declare _err int default 0; 
	DECLARE bigs CURSOR FOR select quota from tjboss.BO_PAY_SRV_BANK psb
				 inner join tjboss.BO_CUSTOMER_SERVICE cs on psb.service_id=cs.id
				 inner join tjboss.BO_MERCHANT bm on psb.bank_id=bm.id
				 inner join tjismp.CM_CUSTOMER cm on cs.customer_id=cm.id
				 where is_current=1 and cs.`enable`=1 and bm.channel_sts=0 and cm.customer_no=v_partner 
				 and (upper(bm.acquire_indexc)=upper(v_indexc)                  
				 OR upper(bm.acquire_indexc)=upper(CONCAT('UNP-',v_indexc)));
	declare continue handler for sqlexception, sqlwarning, not found set _err=1;
	set  v_channelid=0;
	-- get the optimistc channel for the order
		if v_orderid<>'' then
			select order_type into v_ordertype from gworders where id=v_orderid;
		else
			set v_ordertype='1'; -- charge
		end if;
	BEGIN
		 set v_channelid=0;
		 select id into v_channelid from (
					 select * from (
					 select * from gwchannel as g where (
					 upper(g.acquire_indexc)=upper(v_indexc)
					 or upper(g.acquire_indexc)=upper(CONCAT(v_indexc,'-D')) 
					 or (upper(g.acquire_code)=upper(v_indexc) and g.channel_type=1) 
					 or upper(g.acquire_indexc)=upper(CONCAT('UNP-',v_indexc))
					 or upper(g.acquire_indexc)=upper(CONCAT('UNP-',v_indexc,'-D'))
					 )
					 -- and v_ordertype=g.channel_type 
					 and v_amount<=g.qutor and channel_sts=0 and IFNULL(g.bank_type,1)=1 order by g.qutor asc
					 ) as qq where rownum=1) as ww;        
     
	end;
	if v_channelid=0 then -- big qutor   
		set v_channelid=0;
		OPEN bigs;
			bigs_cursor:LOOP
			
				FETCH bigs into v_quota;
					set v_bigquota=IFNULL(v_quota,0);  
                if v_bigquota>0 and v_channelid=0 then
                 BEGIN 
									
                  select id into v_channelid from (
                   select * from (
                     select * from gwchannel as g
                     inner join (select upper(bm.acquire_indexc) as `code`,psb.quota from boss.bo_pay_srv_bank as psb
                                 inner join tjboss.BO_CUSTOMER_SERVICE as cs on psb.service_id=cs.id
                                 inner join tjboss.BO_MERCHANT as bm on psb.bank_id=bm.id
                                 inner join CM_CUSTOMER as cm on cs.customer_id=cm.id
                                 where is_current=1 and cs.`enable`=1 and cm.customer_no=v_partner 
																 and (upper(bm.acquire_indexc)=upper(v_indexc) OR upper(bm.acquire_indexc)=upper(CONCAT('UNP-',v_indexc)))) t
                     on (upper(g.acquire_code)=upper(t.`code`) and g.channel_type=1) or upper(g.acquire_indexc)=CONCAT('UNP-',upper(t.`code`)) or upper(g.acquire_indexc)=upper(t.`code`)
                     where v_ordertype=g.channel_type and v_amount>=t.quota and t.quota>=v_bigquota and channel_sts=0 and g.bank_type=2 order by g.qutor desc
                   ) as xx where rownum=1) as cc;  
                  
								 end;
						end if;
					end loop bigs_cursor;
		CLOSE bigs;	
  end if; 
	if v_channelid=0 then -- open the qutor limitation
			set v_channelid=0;
			select id into v_channelid from (
					 select * from (
					 select * from gwchannel as g where (
					 upper(g.acquire_indexc)=upper(v_indexc)
					 or upper(g.acquire_indexc)=upper(CONCAT(v_indexc,'-D')) 
					 or (upper(g.acquire_code)=upper(v_indexc) and g.channel_type=1) 
					 or upper(g.acquire_indexc)=upper(CONCAT('UNP-',v_indexc))
					 or upper(g.acquire_indexc)=upper(CONCAT('UNP-',v_indexc,'-D'))) 
					 and v_ordertype=g.channel_type and channel_sts=0 and nvl(g.bank_type,1)=1 order by g.qutor desc
					 ) as ss where rownum=1 ) as dd;
         
      end if;
		if _err=1 then
       set v_channelid=0;
    end if; 

END;



DROP PROCEDURE IF EXISTS `PROC_SLACAPTURE`;

CREATE DEFINER = `tjgigold`@`%` PROCEDURE `PROC_SLACAPTURE`(IN `eventid` varchar(50),IN `intervals` double)
BEGIN
	#Routine body goes here...
	DECLARE cts int DEFAULT 0;
	DECLARE amt double;
	DECLARE v_payer_ip varchar(50);
	DECLARE counts double(3,0);
	DECLARE v_trxnum varchar(50);
	DECLARE v_amount double;
	DECLARE v_acquirer_name varchar(50);
	DECLARE ip_rule CURSOR FOR select count(*) cts,payer_ip,sum(amount) amt from tjismp.GWTRXS
		where trxsts=1 and createdate>DATE_SUB(NOW(),INTERVAL intervals DAY) 
		and DATE_FORMAT(createdate,'%Y-%m-%d')>DATE_FORMAT(DATE_SUB(NOW(),INTERVAL 5 DAY),'%Y-%m-%d')
		group by payer_ip having count(*)>2; 
	DECLARE bigamount CURSOR FOR select trxnum,amount,acquirer_name from GWTRXS
		where trxsts=0 and amount>1500 and createdate>DATE_SUB(NOW(),INTERVAL intervals DAY) 
		and DATE_FORMAT(createdate,'%Y-%m-%d')>DATE_FORMAT(DATE_SUB(NOW(),INTERVAL 5 DAY),'%Y-%m-%d');
	
	if 'SLA_CAPTURE'=eventid then
		
			open ip_rule;
				ip_cursor:loop
					FETCH ip_rule into cts,v_payer_ip,amt;
					 select count(*) into counts from tjismp.SLA_EVENTS where features=v_payer_ip and mescid=10000;
					 if counts=0 then
								insert into SLA_EVENTS
								(id, createddate, createor, meslever, mescid, mescontent, `status`, updated, descs, prdsrc, features)
								 values
								(concat(DATE_FORMAT(NOW(),'%Y%m%d'),(select if(MAX(id)is null,1,MAX(id)+1) from SLA_EVENTS)), NOW(), 'SLA_CAPTURE', 1, 10000,
								 CONCAT('[IP:',v_payer_ip,';TIMES:',cts,';AMT:',amt,']'), 0, NOW(),intervals, 'ISMP', v_payer_ip);
					 end if;
					 set counts=0;
				end LOOP ip_cursor;
			CLOSE ip_rule;
		
			open bigamount;
				bigamount_cursor:LOOP
				FETCH bigamount into v_trxnum,v_amount,v_acquirer_name;
					 select count(*) into counts from SLA_EVENTS where features=v_trxnum and mescid='10001';
					 if counts=0 then
							 insert into SLA_EVENTS
								(id, createddate, createor, meslever, mescid, mescontent, `status`, updated, descs, prdsrc, features)
								 values
								(concat(DATE_FORMAT(NOW(),'%Y%m%d'),(select if(MAX(id)is null,1,MAX(id)+1) from SLA_EVENTS)), NOW(), 'SLA_CAPTURE', 1, 10001,
								 CONCAT('[TRXNUM:',v_trxnum,';AMT',v_amount,';ACQNAME:',v_acquirer_name,']'), 0, NOW(),intervals, 'ISMP', v_trxnum);
					 end if;
					 set counts=0;
				end LOOP bigamount_cursor;
			CLOSE bigamount;
  end if;
END;


DROP PROCEDURE IF EXISTS `PROC_UNLOCK_CMOPERATOR`;

CREATE DEFINER = `tjgigold`@`%` PROCEDURE `PROC_UNLOCK_CMOPERATOR`()
BEGIN
	#Routine body goes here...
	 update tjismp.CM_CUSTOMER_OPERATOR set status='normal',login_error_time=0 where status='locked';

END;



-- views
select `t`.`id` AS `id`,`t`.`alias_name` AS `alias_name`,`t`.`bank_id` AS `bank_id`,`b`.`name` AS `name`,`b`.`code` AS `code`,`t`.`bank_no` AS `bank_no`,`t`.`branch_name` AS `branch_name`,`t`.`inner_acount_no` AS `inner_acount_no` from (`tjboss`.`BO_ACQUIRER_ACCOUNT` `t` join `tjboss`.`BO_BANK_DIC` `b` on((`b`.`id` = `t`.`bank_id`))) where ((`t`.`bank_account_type` = 'company') and (`t`.`status` = 'normal'))


select `m`.`id` AS `ID`,`m`.`version` AS `VERSION`,`m`.`acquire_indexc` AS `ACQUIRE_INDEXC`,`m`.`acquire_merchant` AS `ACQUIRE_MERCHANT`,`m`.`acquire_name` AS `ACQUIRE_NAME`,`m`.`acquirer_account_id` AS `ACQUIRER_ACCOUNT_ID`,`m`.`channel_desc` AS `CHANNEL_DESC`,`m`.`channel_sts` AS `CHANNEL_STS`,`m`.`channel_type` AS `CHANNEL_TYPE`,`m`.`date_created` AS `DATE_CREATED`,`m`.`day_qutor` AS `DAY_QUTOR`,`m`.`last_updated` AS `LAST_UPDATED`,`m`.`payment_mode` AS `PAYMENT_MODE`,`m`.`payment_type` AS `PAYMENT_TYPE`,`m`.`qutor` AS `QUTOR`,`m`.`service_code` AS `SERVICE_CODE`,`m`.`terminal` AS `TERMINAL`,`m`.`bank_type` AS `BANK_TYPE`,`m`.`refund_channel` AS `REFUND_CHANNEL`,`m`.`search_channel` AS `SEARCH_CHANNEL`,`a`.`bank_id` AS `bankid`,`m`.`date_created` AS `createdate`,ucase(`d`.`code`) AS `ACQUIRE_CODE`,`a`.`bank_account_no` AS `ACQUIRE_ACCTID`,`a`.`inner_acount_no` AS `ACCOUNT_ID` from ((`tjboss`.`BO_MERCHANT` `m` join `tjboss`.`BO_ACQUIRER_ACCOUNT` `a` on((`m`.`acquirer_account_id` = `a`.`id`))) join `tjboss`.`BO_BANK_DIC` `d` on((`a`.`bank_id` = `d`.`id`)))


select `t`.`id` AS `ID`,`t`.`account_no` AS `ACCOUNT_NO`,`t`.`customer_no` AS `CUSTOMER_NO`,`t`.`limite_amount` AS `LIMITE_AMOUNT`,`t`.`pay_customer_no` AS `PAY_CUSTOMER_NO` from `tjboss`.`BO_DIRECT_PAY_BIND` `t`


select `gw`.`ID` AS `ID`,`gw`.`VERSION` AS `VERSION`,`gw`.`ACQUIRE_INDEXC` AS `ACQUIRE_INDEXC`,`gw`.`ACQUIRE_MERCHANT` AS `ACQUIRE_MERCHANT`,`gw`.`ACQUIRE_NAME` AS `ACQUIRE_NAME`,`gw`.`ACQUIRER_ACCOUNT_ID` AS `ACQUIRER_ACCOUNT_ID`,`gw`.`CHANNEL_DESC` AS `CHANNEL_DESC`,`gw`.`CHANNEL_STS` AS `CHANNEL_STS`,`gw`.`CHANNEL_TYPE` AS `CHANNEL_TYPE`,`gw`.`DATE_CREATED` AS `DATE_CREATED`,`gw`.`DAY_QUTOR` AS `DAY_QUTOR`,`gw`.`LAST_UPDATED` AS `LAST_UPDATED`,`gw`.`PAYMENT_MODE` AS `PAYMENT_MODE`,`gw`.`PAYMENT_TYPE` AS `PAYMENT_TYPE`,`gw`.`QUTOR` AS `QUTOR`,`gw`.`SERVICE_CODE` AS `SERVICE_CODE`,`gw`.`TERMINAL` AS `TERMINAL`,`gw`.`BANK_TYPE` AS `BANK_TYPE`,`gw`.`REFUND_CHANNEL` AS `REFUND_CHANNEL`,`gw`.`SEARCH_CHANNEL` AS `SEARCH_CHANNEL`,`gw`.`bankid` AS `BANKID`,`gw`.`createdate` AS `CREATEDATE`,`gw`.`ACQUIRE_CODE` AS `ACQUIRE_CODE`,`gw`.`ACQUIRE_ACCTID` AS `ACQUIRE_ACCTID`,`gw`.`ACCOUNT_ID` AS `ACCOUNT_ID`,`cm`.`customer_no` AS `customer_no`,`psb`.`quota` AS `entquota` from ((((`tjboss`.`BO_PAY_SRV_BANK` `psb` join `tjboss`.`BO_CUSTOMER_SERVICE` `cs` on((`psb`.`service_id` = `cs`.`id`))) join `tjboss`.`BO_BANK_DIC` `bd` on((`psb`.`bank_id` = `bd`.`id`))) join `tjismp`.`CM_CUSTOMER` `cm` on((`cs`.`customer_id` = `cm`.`id`))) join `tjismp`.`gwchannel` `gw` on((`psb`.`bank_id` = `gw`.`bankid`))) where ((`cs`.`is_current` = 1) and (`gw`.`BANK_TYPE` = 2) and (`cs`.`enable` = 1))

select `cr`.`merchant_id` AS `merchantId`,`cr`.`fee_type` AS `feeType`,`cr`.`fee_rate` AS `feeRate`,`cr`.`is_refund_fee` AS `isRefundFee`,`bm`.`acquire_indexc` AS `acquireIndexc` from (`tjboss`.`BO_CHANNEL_RATE` `cr` join `tjboss`.`BO_MERCHANT` `bm`) where ((`cr`.`merchant_id` = `bm`.`id`) and (`cr`.`is_current` = 1) and (`bm`.`channel_sts` = 0))

select `c`.`id` AS `id`,`c`.`customer_no` AS `customer_no`,`m`.`pay_model` AS `pay_model` from ((`tjismp`.`CM_CUSTOMER` `c` join `tjboss`.`BO_CUSTOMER_SERVICE` `s`) join `tjboss`.`BO_REFUND_MODEL` `m`) where ((`c`.`id` = `s`.`customer_id`) and (`s`.`id` = `m`.`customer_server_id`))

select if((`cc`.`customer_category` = 'travel'),'K',`cc`.`type`) AS `USER_TYPE`,`co`.`status` AS `OPER_STS`,`cc`.`account_no` AS `ACCT_ID`,`cc`.`customer_no` AS `USER_ID`,`co`.`pay_password` AS `PAY_PWD`,`co`.`login_password` AS `LOGIN_PWD`,`cl`.`login_certificate` AS `LOGIN_RECEPIT`,0 AS `ACCT_AMOUNT`,0 AS `ACCT_BALANCE`,'' AS `ACCT_STS`,'' AS `ACCT_NAME` from ((`CM_CUSTOMER` `cc` join `CM_CUSTOMER_OPERATOR` `co` on((`cc`.`id` = `co`.`customer_id`))) join `CM_LOGIN_CERTIFICATE` `cl` on((`co`.`id` = `cl`.`customer_operator_id`)))

select `c`.`id` AS `ID`,`o`.`id` AS `OPERID`,`c`.`api_key` AS `API_KEY`,`c`.`customer_no` AS `CUSTOMER_NO`,`b`.`enable` AS `ENABLE`,`b`.`is_current` AS `ISCURRENT`,`c`.`status` AS `STATUS`,`c`.`name` AS `NAME`,`o`.`default_mobile` AS `MOBILE`,`b`.`service_code` AS `SERVICE_CODE`,`t`.`login_certificate` AS `LOGIN_RECEPIT`,`b`.`fee_params` AS `FEE_PARAMS`,`b`.`service_params` AS `service_params`,`cc`.`fraud_check` AS `FRAUD_CHECK`,`cc`.`company_website` AS `COMPANY_WEBSITE` from ((((`tjismp`.`CM_CUSTOMER` `c` join `tjismp`.`CM_CUSTOMER_OPERATOR` `o` on((`c`.`id` = `o`.`customer_id`))) join `tjismp`.`CM_LOGIN_CERTIFICATE` `t` on((`o`.`id` = `t`.`customer_operator_id`))) left join `tjboss`.`BO_CUSTOMER_SERVICE` `b` on((`c`.`id` = `b`.`customer_id`))) left join `tjismp`.`CM_CORPORATION_INFO` `cc` on((`c`.`id` = `cc`.`id`)))