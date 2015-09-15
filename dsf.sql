create table TB_ADJUST_BANK
(
  id int(11) NOT NULL AUTO_INCREMENT,
  bank_code  VARCHAR(10),
  bank_names VARCHAR(32),
  note       VARCHAR(100),
  type       VARCHAR(255)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_ADJUST_BANK_CARD
(
  id int(11) NOT NULL AUTO_INCREMENT,
  bank_code     VARCHAR(10),
  bank_names    VARCHAR(32),
  note          VARCHAR(100),
  bank_org_code VARCHAR(20)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_AGENTPAY_DETAILS_CHILD_INFO
(
  detail_id       VARCHAR(17) not null,
  cbusiness_type   VARCHAR(50),
  cpay_corname     VARCHAR(50),
  cbudget_proname  VARCHAR(50),
  ctrade_currdate  VARCHAR(20),
  cpay_accountcode VARCHAR(50),
  corg_code        VARCHAR(50),
  cinterbank_code  VARCHAR(50),
  cpeoplebank_code VARCHAR(50),
  cpay_type        VARCHAR(50),
  c_note           VARCHAR(50),
  c_note1          VARCHAR(50),
  c_note2          VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_AGENTPAY_INFO
(
  batch_id                   VARCHAR(15) not null,
  batch_bizid                VARCHAR(15) not null,
  batch_type                 VARCHAR(1) not null,
  batch_version              VARCHAR(2) not null,
  batch_date                  VARCHAR(10) not null,
  batch_currnum              VARCHAR(5),
  batch_count                 double not null,
  batch_amount                double(15,3) not null,
  batch_status               VARCHAR(1),
  trans_sucnum                double,
  trans_failnum               double,
  trans_sucamount             VARCHAR(12),
  trans_failamount            VARCHAR(12),
  batch_remark                VARCHAR(30),
  batch_remark1               VARCHAR(30),
  batch_remark2               VARCHAR(30),
  batch_remark3               VARCHAR(30),
  batch_sysdate               DATE,
  batch_biztype              VARCHAR(5),
  batch_finishdate            DATE,
  batch_fee                   double(15,3),
  batch_feetype              VARCHAR(1),
  batch_accamount             double(15,3),
  batch_filename              VARCHAR(500),
  batch_src                   VARCHAR(10),
  batch_chkdate               DATE,
  batch_send                  VARCHAR(1),
  batch_usr_chk               VARCHAR(1),
  batch_sys_chk               VARCHAR(1),
  batch_biz_id                VARCHAR(30),
  tb_agentpay_details_info_id double,
  is_feedback                VARCHAR(1),
  charge_date                 DATE,
  data_status                 VARCHAR(20)
  ,PRIMARY KEY (batch_id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_AGENTPAY_DETAILS_INFO
(
  detail_id          VARCHAR(17) not null,
  batch_id           VARCHAR(15) not null,
  trade_num           VARCHAR(6) not null,
  trade_bankcode     VARCHAR(3),
  trade_cardtype     VARCHAR(2),
  trade_cardnum       VARCHAR(33) not null,
  trade_cardname      VARCHAR(50) not null,
  trade_branchbank    VARCHAR(50),
  trade_subbranchbank VARCHAR(50),
  trade_accountname   VARCHAR(50),
  trade_accounttype  VARCHAR(1) default 0 not null,
  trade_amount        double(12,3) not null,
  trade_amounttype   VARCHAR(3) not null,
  contract_code       VARCHAR(60),
  contract_usercode   VARCHAR(30),
  certificate_type    VARCHAR(50),
  certificate_num     VARCHAR(50),
  trade_mobile        VARCHAR(13),
  trade_remark        VARCHAR(50),
  trade_feedbackcode  VARCHAR(10),
  trade_reason        VARCHAR(500),
  trade_remark1       VARCHAR(30),
  trade_remark2       VARCHAR(30),
  trade_status       VARCHAR(1),
  trade_fee           double(12,3),
  trade_sysdate       DATE,
  trade_finishdate    DATE,
  batch_bizid        VARCHAR(15),
  trade_feestyle     VARCHAR(1),
  trade_feetype      VARCHAR(1),
  trade_accamount     double(12,3),
  pay_status          VARCHAR(2),
  dk_pc_no            VARCHAR(8),
  checkfail_reson     VARCHAR(100),
  trade_type         VARCHAR(1),
  send_status        VARCHAR(1),
  fcheck_name         VARCHAR(50) default '?',
  tcheck_name         VARCHAR(50) default '?',
  tk_fcheck_name      VARCHAR(50) default '?',
  tk_tcheck_name      VARCHAR(50) default '?',
  trade_chkdate       DATE,
  trade_province      VARCHAR(50),
  trade_city          VARCHAR(50),
  trade_custorder     VARCHAR(50),
  err_msg             VARCHAR(200),
  trade_suggest       VARCHAR(50),
  entrust_email       VARCHAR(200),
  is_entrust          VARCHAR(200),
  refund_firstname    VARCHAR(50),
  refund_lastname     VARCHAR(50),
  trade_commdate      DATE,
  trade_commsuggest   VARCHAR(200),
  trade_commtype      VARCHAR(200),
  trade_donedate      DATE,
  trade_refued        VARCHAR(1),
  trade_remark3       VARCHAR(200),
  trade_remark4       VARCHAR(200),
  trade_remark5       VARCHAR(200),
  trade_subdate       DATE,
  trade_syschkname    VARCHAR(50),
  trade_systype       VARCHAR(1),
  is_sms              VARCHAR(1),
  trade_syschkdate    TIMESTAMP(6),
  trade_refusedate    DATE,
  trade_num_order     double(8,0),
  message_notify      VARCHAR(20),
  send_to_set         VARCHAR(20),
  data_status         VARCHAR(20),
  channel_id          double,
  channel_name        VARCHAR(255)
  ,PRIMARY KEY (detail_id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_BANKCARD_INFO
(
  id int(11) NOT NULL AUTO_INCREMENT,
  bank_name      VARCHAR(50),
  bank_org_code  VARCHAR(20),
  bank_card_name VARCHAR(50),
  bank_card_len  double,
  bank_card_val  VARCHAR(50),
  bank_card_type VARCHAR(50)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_BIND_BANK
(
  id int(11) NOT NULL AUTO_INCREMENT,
  dsf_flag       VARCHAR(2),
  bank_accountno VARCHAR(32),
  notes          VARCHAR(100)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_BIZ_CUSTOMER
(
  id int(11) NOT NULL AUTO_INCREMENT,
  biz_id          VARCHAR(15),
  biz_type        VARCHAR(1),
  card_name        VARCHAR(50),
  card_num         VARCHAR(32),
  bank             VARCHAR(50),
  branch_bank      VARCHAR(50),
  subbranch_bank   VARCHAR(50),
  account_type    VARCHAR(1),
  contract_code    VARCHAR(30),
  province         VARCHAR(30),
  city             VARCHAR(30),
  last_time        DATE,
  remark           VARCHAR(50),
  remark1          VARCHAR(50),
  remark2          VARCHAR(50),
  remark3          VARCHAR(50),
  certificate_num  VARCHAR(50),
  certificate_type VARCHAR(50),
  trade_mobile     VARCHAR(13)
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_DETAIL_IDS
(
  id int(11) NOT NULL AUTO_INCREMENT,
  detail_id  VARCHAR(255) not null,
  trade_type VARCHAR(255) not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_ENTRUST_PERM
(
  id int(11) NOT NULL AUTO_INCREMENT,
  customer_no       VARCHAR(24) not null,
  cardname          VARCHAR(50) not null,
  accountname       VARCHAR(50) not null,
  cardnum           VARCHAR(33) not null,
  entrust_usercode  VARCHAR(15),
  entrust_starttime DATE not null,
  entrust_endtime   DATE not null,
  entrust_status    VARCHAR(1) not null,
  entrust_is_effect VARCHAR(1) not null,
  accounttype       VARCHAR(1) not null,
  certificate_type  VARCHAR(30) not null,
  certificate_num   VARCHAR(50) not null,
  operator          VARCHAR(50) not null,
  createtime        DATE not null
  ,PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
create table TB_ERROR_LOG
(
  id int(11) NOT NULL AUTO_INCREMENT,
  name             VARCHAR(50),
  type             VARCHAR(50),
  key_value        VARCHAR(50),
  create_time      DATE,
  summary          VARCHAR(100),
  error_msg        LONGBLOB,
  is_check         VARCHAR(255),
  error_msg_detail VARCHAR(500)
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
create table TB_PC_INFO
(
  tb_pc_id            VARCHAR(7) not null,
  tb_pc_date          DATE,
  tb_pc_items         double(18,0),
  tb_pc_amount        double(12,3),
  tb_pc_fee           double(12,3),
  tb_pc_accamount     double(12,3),
  tb_pc_dk_chanel     double,
  tb_pc_dk_status    VARCHAR(1),
  tb_pc_dk_chanelname VARCHAR(40),
  tb_pc_check_status VARCHAR(1) default 0,
  tb_sf_flag          VARCHAR(1),
  tb_dealstyle        VARCHAR(255)
  ,PRIMARY KEY (tb_pc_id)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

