-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
--
-- ����: localhost
-- ����� ��������: ��� 14 2005 �., 12:11
-- ������ �������: 4.1.8
-- ������ PHP: 5.0.4
--
-- ��: `emst`
--

-- --------------------------------------------------------

--
-- ��������� ������� `branches`
--
-- ��������: ��� 31 2005 �., 14:14
--

CREATE TABLE IF NOT EXISTS `branches` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(128) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='������ ���������' AUTO_INCREMENT=2 ;

--
-- ����������� � ������� `branches`:
--   `id`
--       `id ������`
--   `name`
--       `�������� � ����������`
--

--
-- ���� ������ ������� `branches`
--

INSERT INTO `branches` (`id`, `name`) VALUES (1, '��� ��� �� �51 ������������������ ���������');

-- --------------------------------------------------------

--
-- ��������� ������� `emst_cases`
--
-- ��������: ��� 28 2005 �., 16:28
--

CREATE TABLE IF NOT EXISTS `emst_cases` (
  `id` int(11) NOT NULL auto_increment,
  `create_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modify_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `branch_id` int(11) default NULL,
  `last_name` varchar(64) NOT NULL default '',
  `first_name` varchar(64) NOT NULL default '',
  `patr_name` varchar(64) NOT NULL default '',
  `is_male` int(11) NOT NULL default '0',
  `born_date` date NOT NULL default '0000-00-00',
  `passport` varchar(64) NOT NULL default '',
  `insurance_company_id` int(11) default NULL,
  `polis` varchar(64) NOT NULL default '',
  `reg_address` varchar(128) NOT NULL default '',
  `address` varchar(128) NOT NULL default '',
  `phone` varchar(64) NOT NULL default '',
  `employment_place` varchar(64) NOT NULL default '',
  `profession` varchar(64) NOT NULL default '',
  `trauma_type_id` int(11) default NULL,
  `notes` text NOT NULL,
  `accident` text NOT NULL,
  `accident_place` text NOT NULL,
  `accident_datetime` datetime NOT NULL default '0000-00-00 00:00:00',
  `antitetanus_id` int(11) default NULL,
  `ssi_required` int(11) NOT NULL default '0',
  `ssi_number` varchar(128) NOT NULL default '',
  `objective` text NOT NULL,
  `next_visit_date` date NOT NULL default '9999-01-01',
  `state` enum('init','progress','done') NOT NULL default 'init',
  PRIMARY KEY  (`id`),
  KEY `trauma_type_id` (`trauma_type_id`),
  KEY `insurance_company_id` (`insurance_company_id`),
  KEY `branch_id` (`branch_id`),
  KEY `antitetanus_id` (`antitetanus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='������� �������' AUTO_INCREMENT=4 ;

--
-- ����������� � ������� `emst_cases`:
--   `id`
--       `����� ������� �������`
--   `branch_id`
--       `��� ���������`
--   `last_name`
--       `�������`
--   `first_name`
--       `���`
--   `patr_name`
--       `��������`
--   `is_male`
--       `������� ���`
--   `born_date`
--       `���� ��������`
--   `passport`
--       `����� � ����� ��������`
--   `insurance_company_id`
--       `��� ��������� ��������`
--   `polis`
--       `����� � ����� ������`
--   `reg_address`
--       `����� �����������`
--   `address`
--       `����� ����������`
--   `phone`
--       `�������(�)`
--   `employment_place`
--       `����� ������`
--   `profession`
--       `���������`
--   `trauma_type_id`
--       `��� ������ (�������/������)`
--   `notes`
--       `����������`
--   `antitetanus_id`
--       `��� ������������������ ��������`
--   `ssi_required`
--       `ssi -- security service information - ��������� ������������� ������ ������������`
--   `ssi_number`
--       `ssi -- security service information - � ������ ������������ �������� �������������`
--   `accident`
--       `��� ���������`
--   `accident_place`
--       `��� ���������`
--   `accident_datetime`
--       `����� ���������`
--   `objective`
--       `����������� ������`
--

--
-- ����������� � ������� `emst_cases`:
--   `branch_id`
--       `branches` -> `id`
--   `insurance_company_id`
--       `rb_insurance_companies` -> `id`
--   `trauma_type_id`
--       `rb_trauma_types` -> `id`
--   `antitetanus_id`
--       `rb_antitetanus` -> `id`
--

--
-- ���� ������ ������� `emst_cases`
--

INSERT INTO `emst_cases` (`id`, `create_time`, `modify_time`, `branch_id`, `last_name`, `first_name`, `patr_name`, `is_male`, `born_date`, `passport`, `insurance_company_id`, `polis`, `reg_address`, `address`, `phone`, `employment_place`, `profession`, `trauma_type_id`, `notes`, `accident`, `accident_place`, `accident_datetime`, `antitetanus_id`, `ssi_required`, `ssi_number`, `objective`, `next_visit_date`, `state`) VALUES (1, '2005-09-30 15:44:01', '2005-09-30 15:47:29', NULL, 'JJJJJJJJ', '2222222', '3333333', 1, '0000-00-00', '', NULL, '', '', '111111', '', '', '', NULL, '', '', '', '0000-00-00 00:00:00', NULL, 0, '', '', '0000-00-00', 'init'),
(2, '2005-09-30 19:02:17', '2005-10-31 17:41:25', NULL, '�������', '�����', '�������', 1, '0000-00-00', '11', 1, '123', '122', '222', '233', '�����', ':)', 2, '����, ������, �������,\r\n����, ������, ������,\r\n�������� ����� ��������,\r\n������� ����� ������.\r\n����� �������� � ����,\r\n���� �� ������ ����.\r\n����� ����� ��� --\r\n��� �������� ����.\r\n\r\n����, ������, �������,\r\n����, ������, ������.\r\n������� ���� ����� ����.\r\n������ ������ �����.\r\n����� ��� ����� �����,\r\n����� ��� ����� �����,\r\n��� ��� � ����� ���� --\r\n��� �������� ����.\r\n\r\n������� ��� �����,\r\n������� �� ��������,\r\n��������� ����� ���\r\n����� �������������.\r\n"׸��� �� ���� � ����,\r\n�������� - ����-��,\r\n������ ���� � ����!" --\r\n��� �������� ����.\r\n\r\n����� �� ����� � �����,\r\n����� �� � ���� ������,\r\n� ������ �� ���� ���,\r\n� ������ �� ����� �����,\r\n���� ������, ����, --\r\n����� �� ���� �����.\r\n��� ��� �� ����� ������ --\r\n��� �������� ����.', '', '', '0000-00-00 00:00:00', NULL, 0, '', '', '2005-09-30', 'init'),
(3, '2005-10-07 14:26:30', '2005-10-31 16:14:06', NULL, '333', '3333', '', 0, '0000-00-00', '', 1, 'fff', '', '44444', '', '', '', 2, 'qqqq', '', '', '0000-00-00 00:00:00', NULL, 0, '', '', '2005-10-07', 'init');

-- --------------------------------------------------------

--
-- ��������� ������� `emst_hospitals`
--
-- ��������: ��� 26 2005 �., 17:22
--

CREATE TABLE IF NOT EXISTS `emst_hospitals` (
  `id` int(11) NOT NULL auto_increment,
  `case_id` int(11) default NULL,
  `beg_date` date NOT NULL default '0000-00-00',
  `end_date` date NOT NULL default '0000-00-00',
  `name` varchar(64) NOT NULL default '',
  `diagnosis` text NOT NULL,
  `operation` text NOT NULL,
  `recommendation` text NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `case_id` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='�������� � ����������� � �������' AUTO_INCREMENT=2 ;

--
-- ����������� � ������� `emst_hospitals`:
--   `id`
--       `id ������`
--   `case_id`
--       `id ������� �������`
--   `beg_date`
--       `������`
--   `end_date`
--       `���������`
--   `name`
--       `�������� ����������`
--   `diagnosis`
--       `�������`
--   `operation`
--       `��������`
--   `recommendation`
--       `������������`
--   `notes`
--       `�������`
--

--
-- ����������� � ������� `emst_hospitals`:
--   `case_id`
--       `emst_cases` -> `id`
--

--
-- ���� ������ ������� `emst_hospitals`
--

INSERT INTO `emst_hospitals` (`id`, `case_id`, `beg_date`, `end_date`, `name`, `diagnosis`, `operation`, `recommendation`, `notes`) VALUES (1, 2, '2005-01-01', '2006-02-02', '�.�.�. ��������� �1', '������ � ��������� ����', '�����������', '������ ���� ����', '������...');

-- --------------------------------------------------------

--
-- ��������� ������� `emst_rg`
--
-- ��������: ��� 25 2005 �., 17:30
--

CREATE TABLE IF NOT EXISTS `emst_rg` (
  `id` int(11) NOT NULL auto_increment,
  `case_id` int(11) default NULL,
  `date` date NOT NULL default '0000-00-00',
  `area` varchar(64) NOT NULL default '',
  `done` int(11) NOT NULL default '0',
  `description` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `case_id` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='���������� RG' AUTO_INCREMENT=17 ;

--
-- ����������� � ������� `emst_rg`:
--   `id`
--       `id ������������`
--   `case_id`
--       `id ������� �������`
--   `date`
--       `����`
--   `area`
--       `������� ������������`
--   `description`
--       `�������� ����������`
--   `done`
--       `���������`
--

--
-- ����������� � ������� `emst_rg`:
--   `case_id`
--       `emst_cases` -> `id`
--

--
-- ���� ������ ������� `emst_rg`
--

INSERT INTO `emst_rg` (`id`, `case_id`, `date`, `area`, `done`, `description`) VALUES (1, 2, '2005-10-10', 'qa1232', 1, '���!12\r\n\r\n\r\n  class TSearchForm extends HTML_QuickFormEx\r\n  {\r\n    function TSearchForm()\r\n    {\r\n      $this->HTML_QuickForm(''frmSearchProperty'', ''post'', $_SERVER[REQUEST_URI]);\r\n      $this->addElement(''header'',   ''Header'',          ''Filter'');\r\n\r\n      $this->addElement(''text'',     ''PropID'',          ''Property ID'',      array(''style''=>''WIDTH: 180px''));\r\n      $this->addElement(''text'',     ''StreetNumber'',    ''Street Number'',    array(''style''=>''WIDTH: 180px''));\r\n      $this->addElement(''text'',     ''StreetName'',      ''Street Name'',      array(''style''=>''WIDTH: 180px''));\r\n      $this->addElement(''text'',     ''City'',            ''City'',             array(''style''=>''WIDTH: 180px''));\r\n      $this->addElement(''text'',     ''State'',           ''State'',            array(''style''=>''WIDTH: 180px''));\r\n      $this->addElement(''text'',     ''Zip'',             ''ZIP'',              array(''style''=>''WIDTH: 180px''));\r\n      $this->addElement(''select'',   ''PropType'',        ''Property Type'',    array(''''=>'''', ''Apt''=>''Apt'', ''Hotel/Motel''=>''Hotel/Motel'', ''Convalescent Home''=>''Convalescent Home'', ''Private Res.''=>''Private Res.'', ''Condo''=>''Condo'', ''Mobile Home Park''=>''Mobile Home Park'', ''Marine''=>''Marine'', ''Other''=>''Other''), array(''style''=>''WIDTH: 180px''));\r\n      $this->addElement(''select'',   ''IsPrinted'',       ''Printed'',          array(''''=>'''', 1=>''Not Printed'', 2=>''Printed''), array(''style''=>''WIDTH: 180px''));\r\n      $this->addElement(''select'',   ''SurveyCompleted'', ''Survey Completed'', array(''''=>'''', 1=>''Not Completed'', 2=>''Completed''), array(''style''=>''WIDTH: 180px''));\r\n      $this->addElement(''text'',     ''OwnerID'',         ''Owner ID'',         array(''style''=>''WIDTH: 180px''));\r\n      $this->addElement(''text'',     ''MgmtID'',          ''Management ID'',    array(''style''=>''WIDTH: 180px''));\r\n      $this->addElement(''select'',   ''Order'',        ''Sort By'',\r\n                        array_values( GetPropertiesSortOrder() ),\r\n                        array(''style''=>''WIDTH: 180px''));\r\n      $this->addElement(''submit'',   ''Submit'',       ''Set Filter'');\r\n\r\n      $this->applyFilter(''_ALL_'', ''trim'');\r\n      $this->setDefaults($_GET);\r\n    }\r\n  }'),
(2, 2, '2005-10-21', '� �������', 1, '==<==>=="==''==&nbsp;==\r\ncrypt() will return an encrypted string using the standard Unix DES-based encryption algorithm or alternative algorithms that may be available on the system. Arguments are a string to be encrypted and an optional salt string to base the encryption on. See the Unix man page for your crypt function for more information. \r\n\r\nIf the salt argument is not provided, one will be randomly generated by PHP. \r\n\r\nSome operating systems support more than one type of encryption. In fact, sometimes the standard DES-based encryption is replaced by an MD5-based encryption algorithm. The encryption type is triggered by the salt argument. At install time, PHP determines the capabilities of the crypt function and will accept salts for other encryption types. If no salt is provided, PHP will auto-generate a standard two character salt by default, unless the default encryption type on the system is MD5, in which case a random MD5-compatible salt is generated. PHP sets a constant named CRYPT_SALT_LENGTH which tells you whether a regular two character salt applies to your system or the longer twelve character salt is applicable. \r\n\r\nIf you are using the supplied salt, you should be aware that the salt is generated once. If you are calling this function recursively, this may impact both appearance and security. \r\n\r\nThe standard DES-based encryption crypt() returns the salt as the first two characters of the output. It also only uses the first eight characters of str, so longer strings that start with the same eight characters will generate the same result (when the same salt is used). \r\n\r\nOn systems where the crypt() function supports multiple encryption types, the following constants are set to 0 or 1 depending on whether the given type is available: \r\n\r\nCRYPT_STD_DES - Standard DES-based encryption with a two character salt \r\nCRYPT_EXT_DES - Extended DES-based encryption with a nine character salt \r\nCRYPT_MD5 - MD5 encryption with a twelve character salt starting with $1$ \r\nCRYPT_BLOWFISH - Blowfish encryption with a sixteen character salt starting with $2$'),
(3, 2, '2009-11-21', '���', 1, 'qqqqqwwwwwwqqqqqq'),
(4, NULL, '0000-00-00', '', 0, ''),
(5, NULL, '0000-00-00', '', 0, ''),
(6, 2, '2001-11-30', '333', 1, ''),
(7, 2, '2005-11-02', 'yyy', 1, 'yyy'),
(8, 2, '2005-11-02', '', 0, ''),
(9, 2, '2005-11-02', '', 0, ''),
(10, 2, '2005-11-02', '', 0, ''),
(11, 2, '2005-11-02', '', 0, ''),
(12, 2, '2005-11-02', '', 0, ''),
(13, 2, '2005-11-02', '', 0, ''),
(14, 2, '2005-11-02', '', 0, ''),
(15, 2, '2005-11-02', '', 0, ''),
(16, 2, '2005-11-02', '', 0, '');

-- --------------------------------------------------------

--
-- ��������� ������� `emst_surgeries`
--
-- ��������: ��� 03 2005 �., 15:56
--

CREATE TABLE IF NOT EXISTS `emst_surgeries` (
  `id` int(11) NOT NULL auto_increment,
  `case_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `date` date NOT NULL default '0000-00-00',
  `complaints` text NOT NULL,
  `progress` int(11) NOT NULL default '0',
  `diagnosis` text NOT NULL,
  `diagnosis_mkb` varchar(64) NOT NULL default '',
  `manipulation` text NOT NULL,
  `disability` int(11) NOT NULL default '0',
  `ill_series` varchar(32) NOT NULL default '',
  `ill_number` varchar(32) NOT NULL default '',
  `ill_beg_date` date NOT NULL default '0000-00-00',
  `ill_end_date` date NOT NULL default '0000-00-00',
  `notes` text NOT NULL,
  `next_cec_date` date NOT NULL default '0000-00-00',
  `next_visit_date` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`id`),
  KEY `case_histoty_id` (`case_id`),
  KEY `user_id` (`user_id`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- ����������� � ������� `emst_surgeries`:
--   `id`
--       `id ������`
--   `case_id`
--       `id ������� �������`
--   `user_id`
--       `id �����`
--   `date`
--       `����`
--   `complaints`
--       `������`
--   `diagnosis`
--       `�������`
--   `diagnosis_mkb`
--       `��� �������� �� ���`
--   `next_visit_date`
--       `��������� ���� ����. ������`
--   `notes`
--       `����������`
--   `next_cec_date`
--       `��������� ���� ����. ���`
--

--
-- ����������� � ������� `emst_surgeries`:
--   `case_id`
--       `emst_cases` -> `id`
--   `user_id`
--       `users` -> `id`
--

--
-- ���� ������ ������� `emst_surgeries`
--

INSERT INTO `emst_surgeries` (`id`, `case_id`, `user_id`, `date`, `complaints`, `progress`, `diagnosis`, `diagnosis_mkb`, `manipulation`, `disability`, `ill_series`, `ill_number`, `ill_beg_date`, `ill_end_date`, `notes`, `next_cec_date`, `next_visit_date`) VALUES (1, 2, 1, '2005-11-01', '���������� - � ���������', 1, '���������� �����', 'XXX-1', '���-�� ������� �������...', 0, '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '2005-11-08');

-- --------------------------------------------------------

--
-- ��������� ������� `epicrisis`
--
-- ��������: ��� 28 2005 �., 16:28
--

CREATE TABLE IF NOT EXISTS `epicrisis` (
  `id` int(11) NOT NULL default '0',
  `mcard_id` int(11) NOT NULL default '0',
  `date` date NOT NULL default '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- ���� ������ ������� `epicrisis`
--


-- --------------------------------------------------------

--
-- ��������� ������� `mcard_item`
--
-- ��������: ��� 28 2005 �., 16:28
--

CREATE TABLE IF NOT EXISTS `mcard_item` (
  `id` int(11) NOT NULL default '0',
  `mcard_id` int(11) NOT NULL default '0',
  `date` date NOT NULL default '0000-00-00',
  `complaints` text NOT NULL,
  `status` tinyint(4) NOT NULL default '0',
  `pulse` int(11) NOT NULL default '0',
  `breathing_frequence` int(11) NOT NULL default '0',
  `mobility` tinyint(4) NOT NULL default '0',
  `head_trauma` tinyint(4) NOT NULL default '0',
  `breast_trauma` tinyint(4) NOT NULL default '0',
  `abdominal_trauma` tinyint(4) NOT NULL default '0',
  `extremity_trauma` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `mcard_id` (`mcard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- ���� ������ ������� `mcard_item`
--


-- --------------------------------------------------------

--
-- ��������� ������� `rb_antitetanus`
--
-- ��������: ��� 01 2005 �., 12:12
--

CREATE TABLE IF NOT EXISTS `rb_antitetanus` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='�������� ����������� ������ ���?' AUTO_INCREMENT=3 ;

--
-- ���� ������ ������� `rb_antitetanus`
--

INSERT INTO `rb_antitetanus` (`id`, `name`) VALUES (1, '�������� � 01'),
(2, '�������� � 02');

-- --------------------------------------------------------

--
-- ��������� ������� `rb_insurance_companies`
--
-- ��������: ��� 26 2005 �., 19:54
--

CREATE TABLE IF NOT EXISTS `rb_insurance_companies` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='������� ��������� ��������' AUTO_INCREMENT=3 ;

--
-- ����������� � ������� `rb_insurance_companies`:
--   `id`
--       `id ������`
--   `name`
--       `�������� ��������`
--

--
-- ���� ������ ������� `rb_insurance_companies`
--

INSERT INTO `rb_insurance_companies` (`id`, `name`) VALUES (1, '����'),
(2, '������');

-- --------------------------------------------------------

--
-- ��������� ������� `rb_trauma_types`
--
-- ��������: ��� 31 2005 �., 14:03
--

CREATE TABLE IF NOT EXISTS `rb_trauma_types` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='���� ������ (�������/�����������' AUTO_INCREMENT=3 ;

--
-- ����������� � ������� `rb_trauma_types`:
--   `id`
--       `id ������`
--   `name`
--       `�������� (� ������� � ����������)`
--

--
-- ���� ������ ������� `rb_trauma_types`
--

INSERT INTO `rb_trauma_types` (`id`, `name`) VALUES (1, '������� ������'),
(2, '���������������� ������');

-- --------------------------------------------------------

--
-- ��������� ������� `users`
--
-- ��������: ��� 28 2005 �., 16:35
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `retired` int(11) NOT NULL default '0',
  `login` varchar(64) NOT NULL default '',
  `password` varchar(64) NOT NULL default '',
  `full_name` varchar(128) NOT NULL default '',
  `roles` set('admin','registrator','doctor','radiologist','chief') NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 AUTO_INCREMENT=3 ;

--
-- ���� ������ ������� `users`
--

INSERT INTO `users` (`id`, `retired`, `login`, `password`, `full_name`, `roles`) VALUES (1, 0, 'all', '', '����', 'admin,registrator,doctor,radiologist,chief'),
(2, 1, '111', '', '222', 'admin,registrator,doctor');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emst_cases`
--
ALTER TABLE `emst_cases`
  ADD CONSTRAINT `emst_cases_ibfk_6` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `emst_cases_ibfk_7` FOREIGN KEY (`insurance_company_id`) REFERENCES `rb_insurance_companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `emst_cases_ibfk_8` FOREIGN KEY (`trauma_type_id`) REFERENCES `rb_trauma_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `emst_cases_ibfk_9` FOREIGN KEY (`antitetanus_id`) REFERENCES `rb_antitetanus` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `emst_hospitals`
--
ALTER TABLE `emst_hospitals`
  ADD CONSTRAINT `emst_hospitals_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `emst_cases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `emst_rg`
--
ALTER TABLE `emst_rg`
  ADD CONSTRAINT `emst_rg_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `emst_cases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `emst_surgeries`
--
ALTER TABLE `emst_surgeries`
  ADD CONSTRAINT `emst_surgeries_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `emst_cases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `emst_surgeries_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION;
