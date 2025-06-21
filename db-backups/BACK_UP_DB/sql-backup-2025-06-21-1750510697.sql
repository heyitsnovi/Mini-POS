

CREATE TABLE `abilities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `entity_id` bigint(20) unsigned DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `only_owned` tinyint(1) NOT NULL DEFAULT 0,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `scope` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `abilities_scope_index` (`scope`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;  
 
INSERT INTO abilities VALUES('1' , 'users_manage' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:32:32' , '2019-03-04 04:17:00');
INSERT INTO abilities VALUES('2' , 'edit_product' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:34:59' , '2019-01-07 02:45:56');
INSERT INTO abilities VALUES('3' , 'add_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:46:50' , '2019-01-07 02:46:50');
INSERT INTO abilities VALUES('4' , 'deactivate_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:47:00' , '2019-01-07 02:47:00');
INSERT INTO abilities VALUES('5' , 'view_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 03:15:57' , '2019-01-07 03:15:57');
INSERT INTO abilities VALUES('6' , 'init_sales' , 'Init sales' , '' , '' , '0' , '' , '' , '2019-03-12 01:36:31' , '2019-03-12 01:36:31');
INSERT INTO abilities VALUES('1' , 'users_manage' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:32:32' , '2019-03-04 04:17:00');
INSERT INTO abilities VALUES('2' , 'edit_product' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:34:59' , '2019-01-07 02:45:56');
INSERT INTO abilities VALUES('3' , 'add_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:46:50' , '2019-01-07 02:46:50');
INSERT INTO abilities VALUES('4' , 'deactivate_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:47:00' , '2019-01-07 02:47:00');
INSERT INTO abilities VALUES('5' , 'view_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 03:15:57' , '2019-01-07 03:15:57');
INSERT INTO abilities VALUES('6' , 'init_sales' , 'Init sales' , '' , '' , '0' , '' , '' , '2019-03-12 01:36:31' , '2019-03-12 01:36:31');
INSERT INTO abilities VALUES('1' , 'users_manage' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:32:32' , '2019-03-04 04:17:00');
INSERT INTO abilities VALUES('2' , 'edit_product' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:34:59' , '2019-01-07 02:45:56');
INSERT INTO abilities VALUES('3' , 'add_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:46:50' , '2019-01-07 02:46:50');
INSERT INTO abilities VALUES('4' , 'deactivate_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:47:00' , '2019-01-07 02:47:00');
INSERT INTO abilities VALUES('5' , 'view_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 03:15:57' , '2019-01-07 03:15:57');
INSERT INTO abilities VALUES('6' , 'init_sales' , 'Init sales' , '' , '' , '0' , '' , '' , '2019-03-12 01:36:31' , '2019-03-12 01:36:31');
INSERT INTO abilities VALUES('1' , 'users_manage' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:32:32' , '2019-03-04 04:17:00');
INSERT INTO abilities VALUES('2' , 'edit_product' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:34:59' , '2019-01-07 02:45:56');
INSERT INTO abilities VALUES('3' , 'add_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:46:50' , '2019-01-07 02:46:50');
INSERT INTO abilities VALUES('4' , 'deactivate_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:47:00' , '2019-01-07 02:47:00');
INSERT INTO abilities VALUES('5' , 'view_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 03:15:57' , '2019-01-07 03:15:57');
INSERT INTO abilities VALUES('6' , 'init_sales' , 'Init sales' , '' , '' , '0' , '' , '' , '2019-03-12 01:36:31' , '2019-03-12 01:36:31');
INSERT INTO abilities VALUES('1' , 'users_manage' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:32:32' , '2019-03-04 04:17:00');
INSERT INTO abilities VALUES('2' , 'edit_product' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:34:59' , '2019-01-07 02:45:56');
INSERT INTO abilities VALUES('3' , 'add_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:46:50' , '2019-01-07 02:46:50');
INSERT INTO abilities VALUES('4' , 'deactivate_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:47:00' , '2019-01-07 02:47:00');
INSERT INTO abilities VALUES('5' , 'view_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 03:15:57' , '2019-01-07 03:15:57');
INSERT INTO abilities VALUES('6' , 'init_sales' , 'Init sales' , '' , '' , '0' , '' , '' , '2019-03-12 01:36:31' , '2019-03-12 01:36:31');
INSERT INTO abilities VALUES('1' , 'users_manage' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:32:32' , '2019-03-04 04:17:00');
INSERT INTO abilities VALUES('2' , 'edit_product' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:34:59' , '2019-01-07 02:45:56');
INSERT INTO abilities VALUES('3' , 'add_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:46:50' , '2019-01-07 02:46:50');
INSERT INTO abilities VALUES('4' , 'deactivate_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:47:00' , '2019-01-07 02:47:00');
INSERT INTO abilities VALUES('5' , 'view_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 03:15:57' , '2019-01-07 03:15:57');
INSERT INTO abilities VALUES('6' , 'init_sales' , 'Init sales' , '' , '' , '0' , '' , '' , '2019-03-12 01:36:31' , '2019-03-12 01:36:31');
INSERT INTO abilities VALUES('1' , 'users_manage' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:32:32' , '2019-03-04 04:17:00');
INSERT INTO abilities VALUES('2' , 'edit_product' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:34:59' , '2019-01-07 02:45:56');
INSERT INTO abilities VALUES('3' , 'add_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:46:50' , '2019-01-07 02:46:50');
INSERT INTO abilities VALUES('4' , 'deactivate_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:47:00' , '2019-01-07 02:47:00');
INSERT INTO abilities VALUES('5' , 'view_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 03:15:57' , '2019-01-07 03:15:57');
INSERT INTO abilities VALUES('6' , 'init_sales' , 'Init sales' , '' , '' , '0' , '' , '' , '2019-03-12 01:36:31' , '2019-03-12 01:36:31');
INSERT INTO abilities VALUES('1' , 'users_manage' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:32:32' , '2019-03-04 04:17:00');
INSERT INTO abilities VALUES('2' , 'edit_product' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:34:59' , '2019-01-07 02:45:56');
INSERT INTO abilities VALUES('3' , 'add_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:46:50' , '2019-01-07 02:46:50');
INSERT INTO abilities VALUES('4' , 'deactivate_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:47:00' , '2019-01-07 02:47:00');
INSERT INTO abilities VALUES('5' , 'view_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 03:15:57' , '2019-01-07 03:15:57');
INSERT INTO abilities VALUES('6' , 'init_sales' , 'Init sales' , '' , '' , '0' , '' , '' , '2019-03-12 01:36:31' , '2019-03-12 01:36:31');
INSERT INTO abilities VALUES('1' , 'users_manage' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:32:32' , '2019-03-04 04:17:00');
INSERT INTO abilities VALUES('2' , 'edit_product' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:34:59' , '2019-01-07 02:45:56');
INSERT INTO abilities VALUES('3' , 'add_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:46:50' , '2019-01-07 02:46:50');
INSERT INTO abilities VALUES('4' , 'deactivate_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:47:00' , '2019-01-07 02:47:00');
INSERT INTO abilities VALUES('5' , 'view_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 03:15:57' , '2019-01-07 03:15:57');
INSERT INTO abilities VALUES('6' , 'init_sales' , 'Init sales' , '' , '' , '0' , '' , '' , '2019-03-12 01:36:31' , '2019-03-12 01:36:31');
INSERT INTO abilities VALUES('1' , 'users_manage' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:32:32' , '2019-03-04 04:17:00');
INSERT INTO abilities VALUES('2' , 'edit_product' , '' , '' , '' , '0' , '' , '' , '2018-08-07 18:34:59' , '2019-01-07 02:45:56');
INSERT INTO abilities VALUES('3' , 'add_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:46:50' , '2019-01-07 02:46:50');
INSERT INTO abilities VALUES('4' , 'deactivate_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 02:47:00' , '2019-01-07 02:47:00');
INSERT INTO abilities VALUES('5' , 'view_product' , '' , '' , '' , '0' , '' , '' , '2019-01-07 03:15:57' , '2019-01-07 03:15:57');
INSERT INTO abilities VALUES('6' , 'init_sales' , 'Init sales' , '' , '' , '0' , '' , '' , '2019-03-12 01:36:31' , '2019-03-12 01:36:31');


CREATE TABLE `assigned_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned NOT NULL,
  `entity_id` bigint(20) unsigned NOT NULL,
  `entity_type` varchar(255) NOT NULL,
  `restricted_to_id` bigint(20) unsigned DEFAULT NULL,
  `restricted_to_type` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assigned_roles_entity_index` (`entity_id`,`entity_type`,`scope`),
  KEY `assigned_roles_role_id_index` (`role_id`),
  KEY `assigned_roles_scope_index` (`scope`),
  CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;  
 
INSERT INTO assigned_roles VALUES('1' , '1' , '1' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('2' , '1' , '3' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('3' , '1' , '2' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('5' , '3' , '4' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('6' , '4' , '1' , 'App\Models\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('1' , '1' , '1' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('2' , '1' , '3' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('3' , '1' , '2' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('5' , '3' , '4' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('6' , '4' , '1' , 'App\Models\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('1' , '1' , '1' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('2' , '1' , '3' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('3' , '1' , '2' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('5' , '3' , '4' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('6' , '4' , '1' , 'App\Models\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('1' , '1' , '1' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('2' , '1' , '3' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('3' , '1' , '2' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('5' , '3' , '4' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('6' , '4' , '1' , 'App\Models\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('1' , '1' , '1' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('2' , '1' , '3' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('3' , '1' , '2' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('5' , '3' , '4' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('6' , '4' , '1' , 'App\Models\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('1' , '1' , '1' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('2' , '1' , '3' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('3' , '1' , '2' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('5' , '3' , '4' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('6' , '4' , '1' , 'App\Models\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('1' , '1' , '1' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('2' , '1' , '3' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('3' , '1' , '2' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('5' , '3' , '4' , 'App\User' , '' , '' , '');
INSERT INTO assigned_roles VALUES('6' , '4' , '1' , 'App\Models\User' , '' , '' , '');


CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;  
 


CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;  
 


CREATE TABLE `coupon_codes` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(50) NOT NULL,
  `max_usage` int(11) DEFAULT NULL,
  `minimum_purchase` double DEFAULT NULL,
  `coupon_value` varchar(10) DEFAULT NULL,
  `coupon_type` enum('percentage','fixed') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;  
 
INSERT INTO coupon_codes VALUES('1' , 'HAPPYHOUR' , '100' , '1000' , '50' , 'fixed' , '2019-02-20 00:00:00' , '2019-02-20 00:00:00');
INSERT INTO coupon_codes VALUES('2' , 'SINGKOPROMO' , '100' , '150' , '5' , 'fixed' , '2019-02-19 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('3' , 'NOVIBIRTHDAY20' , '20' , '2500' , '200' , 'fixed' , '2019-02-13 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('4' , '1MVIPDUDE' , '20' , '1500' , '300' , 'fixed' , '2019-02-13 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('1' , 'HAPPYHOUR' , '100' , '1000' , '50' , 'fixed' , '2019-02-20 00:00:00' , '2019-02-20 00:00:00');
INSERT INTO coupon_codes VALUES('2' , 'SINGKOPROMO' , '100' , '150' , '5' , 'fixed' , '2019-02-19 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('3' , 'NOVIBIRTHDAY20' , '20' , '2500' , '200' , 'fixed' , '2019-02-13 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('4' , '1MVIPDUDE' , '20' , '1500' , '300' , 'fixed' , '2019-02-13 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('1' , 'HAPPYHOUR' , '100' , '1000' , '50' , 'fixed' , '2019-02-20 00:00:00' , '2019-02-20 00:00:00');
INSERT INTO coupon_codes VALUES('2' , 'SINGKOPROMO' , '100' , '150' , '5' , 'fixed' , '2019-02-19 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('3' , 'NOVIBIRTHDAY20' , '20' , '2500' , '200' , 'fixed' , '2019-02-13 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('4' , '1MVIPDUDE' , '20' , '1500' , '300' , 'fixed' , '2019-02-13 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('1' , 'HAPPYHOUR' , '100' , '1000' , '50' , 'fixed' , '2019-02-20 00:00:00' , '2019-02-20 00:00:00');
INSERT INTO coupon_codes VALUES('2' , 'SINGKOPROMO' , '100' , '150' , '5' , 'fixed' , '2019-02-19 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('3' , 'NOVIBIRTHDAY20' , '20' , '2500' , '200' , 'fixed' , '2019-02-13 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('4' , '1MVIPDUDE' , '20' , '1500' , '300' , 'fixed' , '2019-02-13 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('1' , 'HAPPYHOUR' , '100' , '1000' , '50' , 'fixed' , '2019-02-20 00:00:00' , '2019-02-20 00:00:00');
INSERT INTO coupon_codes VALUES('2' , 'SINGKOPROMO' , '100' , '150' , '5' , 'fixed' , '2019-02-19 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('3' , 'NOVIBIRTHDAY20' , '20' , '2500' , '200' , 'fixed' , '2019-02-13 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('4' , '1MVIPDUDE' , '20' , '1500' , '300' , 'fixed' , '2019-02-13 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('1' , 'HAPPYHOUR' , '100' , '1000' , '50' , 'fixed' , '2019-02-20 00:00:00' , '2019-02-20 00:00:00');
INSERT INTO coupon_codes VALUES('2' , 'SINGKOPROMO' , '100' , '150' , '5' , 'fixed' , '2019-02-19 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('3' , 'NOVIBIRTHDAY20' , '20' , '2500' , '200' , 'fixed' , '2019-02-13 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('4' , '1MVIPDUDE' , '20' , '1500' , '300' , 'fixed' , '2019-02-13 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('1' , 'HAPPYHOUR' , '100' , '1000' , '50' , 'fixed' , '2019-02-20 00:00:00' , '2019-02-20 00:00:00');
INSERT INTO coupon_codes VALUES('2' , 'SINGKOPROMO' , '100' , '150' , '5' , 'fixed' , '2019-02-19 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('3' , 'NOVIBIRTHDAY20' , '20' , '2500' , '200' , 'fixed' , '2019-02-13 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('4' , '1MVIPDUDE' , '20' , '1500' , '300' , 'fixed' , '2019-02-13 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('1' , 'HAPPYHOUR' , '100' , '1000' , '50' , 'fixed' , '2019-02-20 00:00:00' , '2019-02-20 00:00:00');
INSERT INTO coupon_codes VALUES('2' , 'SINGKOPROMO' , '100' , '150' , '5' , 'fixed' , '2019-02-19 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('3' , 'NOVIBIRTHDAY20' , '20' , '2500' , '200' , 'fixed' , '2019-02-13 00:00:00' , '2019-02-19 00:00:00');
INSERT INTO coupon_codes VALUES('4' , '1MVIPDUDE' , '20' , '1500' , '300' , 'fixed' , '2019-02-13 00:00:00' , '2019-02-19 00:00:00');


CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;  
 


CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;  
 


CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;  
 


CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;  
 
INSERT INTO migrations VALUES('1' , '0001_01_01_000000_create_users_table' , '1');
INSERT INTO migrations VALUES('2' , '0001_01_01_000001_create_cache_table' , '1');
INSERT INTO migrations VALUES('3' , '0001_01_01_000002_create_jobs_table' , '1');
INSERT INTO migrations VALUES('4' , '2025_06_21_105400_create_bouncer_tables' , '2');
INSERT INTO migrations VALUES('1' , '0001_01_01_000000_create_users_table' , '1');
INSERT INTO migrations VALUES('2' , '0001_01_01_000001_create_cache_table' , '1');
INSERT INTO migrations VALUES('3' , '0001_01_01_000002_create_jobs_table' , '1');
INSERT INTO migrations VALUES('4' , '2025_06_21_105400_create_bouncer_tables' , '2');
INSERT INTO migrations VALUES('1' , '0001_01_01_000000_create_users_table' , '1');
INSERT INTO migrations VALUES('2' , '0001_01_01_000001_create_cache_table' , '1');
INSERT INTO migrations VALUES('3' , '0001_01_01_000002_create_jobs_table' , '1');
INSERT INTO migrations VALUES('4' , '2025_06_21_105400_create_bouncer_tables' , '2');


CREATE TABLE `order_log` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `product_code` varchar(20) NOT NULL,
  `product_qty_ordered` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;  
 
INSERT INTO order_log VALUES('1' , '1' , '0056' , '1' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO order_log VALUES('2' , '1' , '0006' , '2' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO order_log VALUES('1' , '1' , '0056' , '1' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO order_log VALUES('2' , '1' , '0006' , '2' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO order_log VALUES('1' , '1' , '0056' , '1' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO order_log VALUES('2' , '1' , '0006' , '2' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO order_log VALUES('1' , '1' , '0056' , '1' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO order_log VALUES('2' , '1' , '0006' , '2' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO order_log VALUES('1' , '1' , '0056' , '1' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO order_log VALUES('2' , '1' , '0006' , '2' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO order_log VALUES('1' , '1' , '0056' , '1' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO order_log VALUES('2' , '1' , '0006' , '2' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');


CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;  
 


CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;  
 


CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ability_id` bigint(20) unsigned NOT NULL,
  `entity_id` bigint(20) unsigned DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `forbidden` tinyint(1) NOT NULL DEFAULT 0,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_entity_index` (`entity_id`,`entity_type`,`scope`),
  KEY `permissions_ability_id_index` (`ability_id`),
  KEY `permissions_scope_index` (`scope`),
  CONSTRAINT `permissions_ability_id_foreign` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;  
 
INSERT INTO permissions VALUES('13' , '6' , '3' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('14' , '1' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('15' , '2' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('16' , '3' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('17' , '4' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('18' , '5' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('19' , '6' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('20' , '2' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('21' , '3' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('22' , '4' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('23' , '5' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('24' , '6' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('25' , '1' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('26' , '3' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('27' , '2' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('13' , '6' , '3' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('14' , '1' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('15' , '2' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('16' , '3' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('17' , '4' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('18' , '5' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('19' , '6' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('20' , '2' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('21' , '3' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('22' , '4' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('23' , '5' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('24' , '6' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('25' , '1' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('26' , '3' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('27' , '2' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('13' , '6' , '3' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('14' , '1' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('15' , '2' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('16' , '3' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('17' , '4' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('18' , '5' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('19' , '6' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('20' , '2' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('21' , '3' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('22' , '4' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('23' , '5' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('24' , '6' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('25' , '1' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('26' , '3' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('27' , '2' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('13' , '6' , '3' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('14' , '1' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('15' , '2' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('16' , '3' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('17' , '4' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('18' , '5' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('19' , '6' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('20' , '2' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('21' , '3' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('22' , '4' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('23' , '5' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('24' , '6' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('25' , '1' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('26' , '3' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('27' , '2' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('13' , '6' , '3' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('14' , '1' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('15' , '2' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('16' , '3' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('17' , '4' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('18' , '5' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('19' , '6' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('20' , '2' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('21' , '3' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('22' , '4' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('23' , '5' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('24' , '6' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('25' , '1' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('26' , '3' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('27' , '2' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('13' , '6' , '3' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('14' , '1' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('15' , '2' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('16' , '3' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('17' , '4' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('18' , '5' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('19' , '6' , '1' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('20' , '2' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('21' , '3' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('22' , '4' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('23' , '5' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('24' , '6' , '2' , 'roles' , '0' , '');
INSERT INTO permissions VALUES('25' , '1' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('26' , '3' , '1' , 'App\Models\User' , '0' , '');
INSERT INTO permissions VALUES('27' , '2' , '1' , 'App\Models\User' , '0' , '');


CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  `category_description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;  
 
INSERT INTO product_category VALUES('1' , 'Hardware Products' , 'Generic Category for Hardware Products' , '2025-06-21 12:33:51' , '2025-06-21 12:33:51');
INSERT INTO product_category VALUES('1' , 'Hardware Products' , 'Generic Category for Hardware Products' , '2025-06-21 12:33:51' , '2025-06-21 12:33:51');
INSERT INTO product_category VALUES('1' , 'Hardware Products' , 'Generic Category for Hardware Products' , '2025-06-21 12:33:51' , '2025-06-21 12:33:51');
INSERT INTO product_category VALUES('1' , 'Hardware Products' , 'Generic Category for Hardware Products' , '2025-06-21 12:33:51' , '2025-06-21 12:33:51');
INSERT INTO product_category VALUES('1' , 'Hardware Products' , 'Generic Category for Hardware Products' , '2025-06-21 12:33:51' , '2025-06-21 12:33:51');


CREATE TABLE `product_list` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(45) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_status` int(11) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `product_supplier` int(11) DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `wholesale_price` double DEFAULT NULL,
  `stock_onhand` int(11) DEFAULT NULL,
  `restock_count` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;  
 
INSERT INTO product_list VALUES('1' , '0001' , 'Concrete Nail #1' , '' , '1' , '1' , '' , '' , '100' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('2' , '0002' , 'Liha #120' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('3' , '0003' , 'Mabuhay Cement Green' , '' , '1' , '1' , '' , '' , '190' , '185' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('4' , '0004' , 'Mabuhay Cement Red' , '' , '1' , '1' , '' , '' , '210' , '205' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('5' , '0005' , 'Apo Cement Blue' , '' , '1' , '1' , '' , '' , '235' , '230' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('6' , '0006' , 'Tile Adhesive' , '' , '1' , '1' , '' , '' , '310' , '305' , '98' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('7' , '0007' , 'Tile Grout' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('8' , '0008' , 'PVC Pipe #4 Atlanta' , '' , '1' , '1' , '' , '' , '400' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('9' , '0009' , 'PVC Pipe #3 Atlanta' , '' , '1' , '1' , '' , '' , '375' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('10' , '0010' , 'PVC Pipe #2' , '' , '1' , '1' , '' , '' , '200' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('11' , '0011' , 'Inayag' , '' , '1' , '1' , '' , '' , '55' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('12' , '0012' , 'River Sand' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('13' , '0013' , 'Gravel' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('14' , '0014' , '2x2x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('15' , '0015' , '2x2x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('16' , '0016' , '2x2x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('17' , '0017' , '2x3x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('18' , '0018' , '2x3x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('19' , '0019' , '2x3x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '155' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('20' , '0020' , '9MM Debar' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('21' , '0021' , '10MM Debar' , '' , '1' , '1' , '' , '' , '148' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('22' , '0022' , '12MM Debar' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('23' , '0023' , 'Gardner 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('24' , '0024' , 'Marine 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('25' , '0025' , 'Marine 1/2' , '' , '1' , '1' , '' , '' , '775' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('26' , '0026' , 'Marine 3/4' , '' , '1' , '1' , '' , '' , '1275' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('27' , '0027' , 'Tie Wire' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('28' , '0028' , 'Plastic Varnish' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('29' , '0029' , 'Timeout' , '' , '1' , '1' , '' , '' , '225' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('30' , '0030' , 'Clear Gloss Lacquer' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('31' , '0031' , 'Marine Epoxy  (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('32' , '0032' , 'Epoxy (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('33' , '0033' , 'Boysen Roof Gard' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('34' , '0034' , 'S-Blue 1/1/12' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('35' , '0035' , 'Marine Epoxy (Small)' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('36' , '0036' , 'Paint Thinner (Big)' , '' , '1' , '1' , '' , '' , '425' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('37' , '0037' , 'Clear Gloss Lacquer (Big)' , '' , '1' , '1' , '' , '' , '765' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('38' , '0038' , 'Sanding Sealer (Big)' , '' , '1' , '1' , '' , '' , '825' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('39' , '0039' , 'Tubular Door Knob (6881AB-ET)' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('40' , '0040' , 'Tubular Door Knob (60711SS-ET)' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('41' , '0041' , 'Hinge 3x3' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('42' , '0042' , 'Sanding Sealer (Small)' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('43' , '0043' , 'Lacquer Thinner' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('44' , '0044' , 'Paint Roller #4 Green' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('45' , '0045' , 'Rubber Gloves' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('46' , '0046' , 'Paint Roller #7 Green' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('47' , '0047' , 'Mini Roller (With handle) #4' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('48' , '0048' , 'Mini Roller (Without handle) #5' , '' , '1' , '1' , '' , '' , '35' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('49' , '0049' , 'Hinge (Nugen Brand) 3x3' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('50' , '0050' , 'Firefly Bulb 5W' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('51' , '0051' , 'Firefly Bulb 7W' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('52' , '0052' , 'Firefly Bulb 11W' , '' , '1' , '1' , '' , '' , '135' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('53' , '0053' , 'Firefly Bulb 18W' , '' , '1' , '1' , '' , '' , '230' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('54' , '0054' , 'Electrical Tape (Small)' , '' , '1' , '1' , '' , '' , '20' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('55' , '0055' , 'Electrical Tape (Large)' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('56' , '0056' , 'Vulcaseal 75ml Bostick' , '' , '1' , '1' , '' , '' , '70' , '0' , '99' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('57' , '0057' , 'Elasto Seal' , '' , '1' , '1' , '' , '' , '65' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('58' , '0058' , 'Omni Single Switch' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('59' , '0059' , 'Omni Single Gang Outlet' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('60' , '0060' , 'Electrical Plug' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('61' , '0061' , 'Omni 2 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('62' , '0062' , 'Omni 3 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('63' , '0063' , 'Royu Double Switch' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('64' , '0064' , 'Royu Triple Switch' , '' , '1' , '1' , '' , '' , '175' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('65' , '0065' , 'Shuta Receptacle 2x2' , '' , '1' , '1' , '' , '' , '30' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('66' , '0066' , 'Cutting Disc (Scharf Brand)' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('67' , '0067' , 'FujiWeld Welding Rod' , '' , '1' , '1' , '' , '' , '160' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('68' , '0068' , 'China Welding Rod' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('69' , '0069' , 'PVC Door' , '' , '1' , '1' , '' , '' , '1550' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('70' , '0070' , 'PVC Elbow Atlanta #2' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('71' , '0071' , 'PVC Elbow Atlanta #1' , '' , '1' , '1' , '' , '' , '110' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('72' , '0072' , 'PVC Drain Master Elbow (Atlanta) 2x90' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('73' , '0073' , 'PVC Y 2x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('74' , '0074' , 'PVC Y 2x2  Cover (Atlanta)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('75' , '0075' , 'PVC 2" U-Trap (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('76' , '0076' , 'PVC TEE 4x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('77' , '0077' , 'PVC Elbow Ordinary #3 (Unimold)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('78' , '0078' , 'PVC Drain Matster Elbow (Atlanta) 3x45' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('79' , '0079' , 'PVC Elbow 4x90' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('80' , '0080' , 'Ninja Lum Corrugated #12' , '' , '1' , '1' , '' , '' , '475' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('81' , '0081' , 'Ninja Lum Corrugated #10' , '' , '1' , '1' , '' , '' , '380' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('82' , '0082' , 'Ninja Lum Corrugated #8' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('83' , '0083' , 'Ordinary Corrugated #12' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('84' , '0084' , 'Ordinary Corrugated #10' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('85' , '0085' , 'Ordinary Corrugated #8' , '' , '1' , '1' , '' , '' , '180' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('86' , '0086' , 'Boysen Quick Drying Enamel 1 Liter' , '' , '1' , '1' , '' , '' , '210' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('87' , '0087' , 'Lennox Blade' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('88' , '0088' , 'Hardiflex Nails' , '' , '1' , '1' , '' , '' , '120' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('1' , '0001' , 'Concrete Nail #1' , '' , '1' , '1' , '' , '' , '100' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('2' , '0002' , 'Liha #120' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('3' , '0003' , 'Mabuhay Cement Green' , '' , '1' , '1' , '' , '' , '190' , '185' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('4' , '0004' , 'Mabuhay Cement Red' , '' , '1' , '1' , '' , '' , '210' , '205' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('5' , '0005' , 'Apo Cement Blue' , '' , '1' , '1' , '' , '' , '235' , '230' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('6' , '0006' , 'Tile Adhesive' , '' , '1' , '1' , '' , '' , '310' , '305' , '98' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('7' , '0007' , 'Tile Grout' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('8' , '0008' , 'PVC Pipe #4 Atlanta' , '' , '1' , '1' , '' , '' , '400' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('9' , '0009' , 'PVC Pipe #3 Atlanta' , '' , '1' , '1' , '' , '' , '375' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('10' , '0010' , 'PVC Pipe #2' , '' , '1' , '1' , '' , '' , '200' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('11' , '0011' , 'Inayag' , '' , '1' , '1' , '' , '' , '55' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('12' , '0012' , 'River Sand' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('13' , '0013' , 'Gravel' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('14' , '0014' , '2x2x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('15' , '0015' , '2x2x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('16' , '0016' , '2x2x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('17' , '0017' , '2x3x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('18' , '0018' , '2x3x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('19' , '0019' , '2x3x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '155' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('20' , '0020' , '9MM Debar' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('21' , '0021' , '10MM Debar' , '' , '1' , '1' , '' , '' , '148' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('22' , '0022' , '12MM Debar' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('23' , '0023' , 'Gardner 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('24' , '0024' , 'Marine 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('25' , '0025' , 'Marine 1/2' , '' , '1' , '1' , '' , '' , '775' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('26' , '0026' , 'Marine 3/4' , '' , '1' , '1' , '' , '' , '1275' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('27' , '0027' , 'Tie Wire' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('28' , '0028' , 'Plastic Varnish' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('29' , '0029' , 'Timeout' , '' , '1' , '1' , '' , '' , '225' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('30' , '0030' , 'Clear Gloss Lacquer' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('31' , '0031' , 'Marine Epoxy  (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('32' , '0032' , 'Epoxy (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('33' , '0033' , 'Boysen Roof Gard' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('34' , '0034' , 'S-Blue 1/1/12' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('35' , '0035' , 'Marine Epoxy (Small)' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('36' , '0036' , 'Paint Thinner (Big)' , '' , '1' , '1' , '' , '' , '425' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('37' , '0037' , 'Clear Gloss Lacquer (Big)' , '' , '1' , '1' , '' , '' , '765' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('38' , '0038' , 'Sanding Sealer (Big)' , '' , '1' , '1' , '' , '' , '825' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('39' , '0039' , 'Tubular Door Knob (6881AB-ET)' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('40' , '0040' , 'Tubular Door Knob (60711SS-ET)' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('41' , '0041' , 'Hinge 3x3' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('42' , '0042' , 'Sanding Sealer (Small)' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('43' , '0043' , 'Lacquer Thinner' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('44' , '0044' , 'Paint Roller #4 Green' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('45' , '0045' , 'Rubber Gloves' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('46' , '0046' , 'Paint Roller #7 Green' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('47' , '0047' , 'Mini Roller (With handle) #4' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('48' , '0048' , 'Mini Roller (Without handle) #5' , '' , '1' , '1' , '' , '' , '35' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('49' , '0049' , 'Hinge (Nugen Brand) 3x3' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('50' , '0050' , 'Firefly Bulb 5W' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('51' , '0051' , 'Firefly Bulb 7W' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('52' , '0052' , 'Firefly Bulb 11W' , '' , '1' , '1' , '' , '' , '135' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('53' , '0053' , 'Firefly Bulb 18W' , '' , '1' , '1' , '' , '' , '230' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('54' , '0054' , 'Electrical Tape (Small)' , '' , '1' , '1' , '' , '' , '20' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('55' , '0055' , 'Electrical Tape (Large)' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('56' , '0056' , 'Vulcaseal 75ml Bostick' , '' , '1' , '1' , '' , '' , '70' , '0' , '99' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('57' , '0057' , 'Elasto Seal' , '' , '1' , '1' , '' , '' , '65' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('58' , '0058' , 'Omni Single Switch' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('59' , '0059' , 'Omni Single Gang Outlet' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('60' , '0060' , 'Electrical Plug' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('61' , '0061' , 'Omni 2 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('62' , '0062' , 'Omni 3 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('63' , '0063' , 'Royu Double Switch' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('64' , '0064' , 'Royu Triple Switch' , '' , '1' , '1' , '' , '' , '175' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('65' , '0065' , 'Shuta Receptacle 2x2' , '' , '1' , '1' , '' , '' , '30' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('66' , '0066' , 'Cutting Disc (Scharf Brand)' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('67' , '0067' , 'FujiWeld Welding Rod' , '' , '1' , '1' , '' , '' , '160' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('68' , '0068' , 'China Welding Rod' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('69' , '0069' , 'PVC Door' , '' , '1' , '1' , '' , '' , '1550' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('70' , '0070' , 'PVC Elbow Atlanta #2' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('71' , '0071' , 'PVC Elbow Atlanta #1' , '' , '1' , '1' , '' , '' , '110' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('72' , '0072' , 'PVC Drain Master Elbow (Atlanta) 2x90' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('73' , '0073' , 'PVC Y 2x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('74' , '0074' , 'PVC Y 2x2  Cover (Atlanta)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('75' , '0075' , 'PVC 2" U-Trap (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('76' , '0076' , 'PVC TEE 4x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('77' , '0077' , 'PVC Elbow Ordinary #3 (Unimold)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('78' , '0078' , 'PVC Drain Matster Elbow (Atlanta) 3x45' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('79' , '0079' , 'PVC Elbow 4x90' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('80' , '0080' , 'Ninja Lum Corrugated #12' , '' , '1' , '1' , '' , '' , '475' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('81' , '0081' , 'Ninja Lum Corrugated #10' , '' , '1' , '1' , '' , '' , '380' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('82' , '0082' , 'Ninja Lum Corrugated #8' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('83' , '0083' , 'Ordinary Corrugated #12' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('84' , '0084' , 'Ordinary Corrugated #10' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('85' , '0085' , 'Ordinary Corrugated #8' , '' , '1' , '1' , '' , '' , '180' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('86' , '0086' , 'Boysen Quick Drying Enamel 1 Liter' , '' , '1' , '1' , '' , '' , '210' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('87' , '0087' , 'Lennox Blade' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('88' , '0088' , 'Hardiflex Nails' , '' , '1' , '1' , '' , '' , '120' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('1' , '0001' , 'Concrete Nail #1' , '' , '1' , '1' , '' , '' , '100' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('2' , '0002' , 'Liha #120' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('3' , '0003' , 'Mabuhay Cement Green' , '' , '1' , '1' , '' , '' , '190' , '185' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('4' , '0004' , 'Mabuhay Cement Red' , '' , '1' , '1' , '' , '' , '210' , '205' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('5' , '0005' , 'Apo Cement Blue' , '' , '1' , '1' , '' , '' , '235' , '230' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('6' , '0006' , 'Tile Adhesive' , '' , '1' , '1' , '' , '' , '310' , '305' , '98' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('7' , '0007' , 'Tile Grout' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('8' , '0008' , 'PVC Pipe #4 Atlanta' , '' , '1' , '1' , '' , '' , '400' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('9' , '0009' , 'PVC Pipe #3 Atlanta' , '' , '1' , '1' , '' , '' , '375' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('10' , '0010' , 'PVC Pipe #2' , '' , '1' , '1' , '' , '' , '200' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('11' , '0011' , 'Inayag' , '' , '1' , '1' , '' , '' , '55' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('12' , '0012' , 'River Sand' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('13' , '0013' , 'Gravel' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('14' , '0014' , '2x2x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('15' , '0015' , '2x2x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('16' , '0016' , '2x2x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('17' , '0017' , '2x3x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('18' , '0018' , '2x3x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('19' , '0019' , '2x3x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '155' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('20' , '0020' , '9MM Debar' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('21' , '0021' , '10MM Debar' , '' , '1' , '1' , '' , '' , '148' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('22' , '0022' , '12MM Debar' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('23' , '0023' , 'Gardner 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('24' , '0024' , 'Marine 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('25' , '0025' , 'Marine 1/2' , '' , '1' , '1' , '' , '' , '775' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('26' , '0026' , 'Marine 3/4' , '' , '1' , '1' , '' , '' , '1275' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('27' , '0027' , 'Tie Wire' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('28' , '0028' , 'Plastic Varnish' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('29' , '0029' , 'Timeout' , '' , '1' , '1' , '' , '' , '225' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('30' , '0030' , 'Clear Gloss Lacquer' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('31' , '0031' , 'Marine Epoxy  (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('32' , '0032' , 'Epoxy (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('33' , '0033' , 'Boysen Roof Gard' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('34' , '0034' , 'S-Blue 1/1/12' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('35' , '0035' , 'Marine Epoxy (Small)' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('36' , '0036' , 'Paint Thinner (Big)' , '' , '1' , '1' , '' , '' , '425' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('37' , '0037' , 'Clear Gloss Lacquer (Big)' , '' , '1' , '1' , '' , '' , '765' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('38' , '0038' , 'Sanding Sealer (Big)' , '' , '1' , '1' , '' , '' , '825' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('39' , '0039' , 'Tubular Door Knob (6881AB-ET)' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('40' , '0040' , 'Tubular Door Knob (60711SS-ET)' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('41' , '0041' , 'Hinge 3x3' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('42' , '0042' , 'Sanding Sealer (Small)' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('43' , '0043' , 'Lacquer Thinner' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('44' , '0044' , 'Paint Roller #4 Green' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('45' , '0045' , 'Rubber Gloves' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('46' , '0046' , 'Paint Roller #7 Green' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('47' , '0047' , 'Mini Roller (With handle) #4' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('48' , '0048' , 'Mini Roller (Without handle) #5' , '' , '1' , '1' , '' , '' , '35' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('49' , '0049' , 'Hinge (Nugen Brand) 3x3' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('50' , '0050' , 'Firefly Bulb 5W' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('51' , '0051' , 'Firefly Bulb 7W' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('52' , '0052' , 'Firefly Bulb 11W' , '' , '1' , '1' , '' , '' , '135' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('53' , '0053' , 'Firefly Bulb 18W' , '' , '1' , '1' , '' , '' , '230' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('54' , '0054' , 'Electrical Tape (Small)' , '' , '1' , '1' , '' , '' , '20' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('55' , '0055' , 'Electrical Tape (Large)' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('56' , '0056' , 'Vulcaseal 75ml Bostick' , '' , '1' , '1' , '' , '' , '70' , '0' , '99' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('57' , '0057' , 'Elasto Seal' , '' , '1' , '1' , '' , '' , '65' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('58' , '0058' , 'Omni Single Switch' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('59' , '0059' , 'Omni Single Gang Outlet' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('60' , '0060' , 'Electrical Plug' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('61' , '0061' , 'Omni 2 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('62' , '0062' , 'Omni 3 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('63' , '0063' , 'Royu Double Switch' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('64' , '0064' , 'Royu Triple Switch' , '' , '1' , '1' , '' , '' , '175' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('65' , '0065' , 'Shuta Receptacle 2x2' , '' , '1' , '1' , '' , '' , '30' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('66' , '0066' , 'Cutting Disc (Scharf Brand)' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('67' , '0067' , 'FujiWeld Welding Rod' , '' , '1' , '1' , '' , '' , '160' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('68' , '0068' , 'China Welding Rod' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('69' , '0069' , 'PVC Door' , '' , '1' , '1' , '' , '' , '1550' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('70' , '0070' , 'PVC Elbow Atlanta #2' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('71' , '0071' , 'PVC Elbow Atlanta #1' , '' , '1' , '1' , '' , '' , '110' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('72' , '0072' , 'PVC Drain Master Elbow (Atlanta) 2x90' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('73' , '0073' , 'PVC Y 2x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('74' , '0074' , 'PVC Y 2x2  Cover (Atlanta)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('75' , '0075' , 'PVC 2" U-Trap (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('76' , '0076' , 'PVC TEE 4x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('77' , '0077' , 'PVC Elbow Ordinary #3 (Unimold)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('78' , '0078' , 'PVC Drain Matster Elbow (Atlanta) 3x45' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('79' , '0079' , 'PVC Elbow 4x90' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('80' , '0080' , 'Ninja Lum Corrugated #12' , '' , '1' , '1' , '' , '' , '475' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('81' , '0081' , 'Ninja Lum Corrugated #10' , '' , '1' , '1' , '' , '' , '380' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('82' , '0082' , 'Ninja Lum Corrugated #8' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('83' , '0083' , 'Ordinary Corrugated #12' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('84' , '0084' , 'Ordinary Corrugated #10' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('85' , '0085' , 'Ordinary Corrugated #8' , '' , '1' , '1' , '' , '' , '180' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('86' , '0086' , 'Boysen Quick Drying Enamel 1 Liter' , '' , '1' , '1' , '' , '' , '210' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('87' , '0087' , 'Lennox Blade' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('88' , '0088' , 'Hardiflex Nails' , '' , '1' , '1' , '' , '' , '120' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('1' , '0001' , 'Concrete Nail #1' , '' , '1' , '1' , '' , '' , '100' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('2' , '0002' , 'Liha #120' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('3' , '0003' , 'Mabuhay Cement Green' , '' , '1' , '1' , '' , '' , '190' , '185' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('4' , '0004' , 'Mabuhay Cement Red' , '' , '1' , '1' , '' , '' , '210' , '205' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('5' , '0005' , 'Apo Cement Blue' , '' , '1' , '1' , '' , '' , '235' , '230' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('6' , '0006' , 'Tile Adhesive' , '' , '1' , '1' , '' , '' , '310' , '305' , '98' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('7' , '0007' , 'Tile Grout' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('8' , '0008' , 'PVC Pipe #4 Atlanta' , '' , '1' , '1' , '' , '' , '400' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('9' , '0009' , 'PVC Pipe #3 Atlanta' , '' , '1' , '1' , '' , '' , '375' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('10' , '0010' , 'PVC Pipe #2' , '' , '1' , '1' , '' , '' , '200' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('11' , '0011' , 'Inayag' , '' , '1' , '1' , '' , '' , '55' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('12' , '0012' , 'River Sand' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('13' , '0013' , 'Gravel' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('14' , '0014' , '2x2x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('15' , '0015' , '2x2x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('16' , '0016' , '2x2x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('17' , '0017' , '2x3x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('18' , '0018' , '2x3x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('19' , '0019' , '2x3x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '155' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('20' , '0020' , '9MM Debar' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('21' , '0021' , '10MM Debar' , '' , '1' , '1' , '' , '' , '148' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('22' , '0022' , '12MM Debar' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('23' , '0023' , 'Gardner 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('24' , '0024' , 'Marine 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('25' , '0025' , 'Marine 1/2' , '' , '1' , '1' , '' , '' , '775' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('26' , '0026' , 'Marine 3/4' , '' , '1' , '1' , '' , '' , '1275' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('27' , '0027' , 'Tie Wire' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('28' , '0028' , 'Plastic Varnish' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('29' , '0029' , 'Timeout' , '' , '1' , '1' , '' , '' , '225' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('30' , '0030' , 'Clear Gloss Lacquer' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('31' , '0031' , 'Marine Epoxy  (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('32' , '0032' , 'Epoxy (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('33' , '0033' , 'Boysen Roof Gard' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('34' , '0034' , 'S-Blue 1/1/12' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('35' , '0035' , 'Marine Epoxy (Small)' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('36' , '0036' , 'Paint Thinner (Big)' , '' , '1' , '1' , '' , '' , '425' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('37' , '0037' , 'Clear Gloss Lacquer (Big)' , '' , '1' , '1' , '' , '' , '765' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('38' , '0038' , 'Sanding Sealer (Big)' , '' , '1' , '1' , '' , '' , '825' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('39' , '0039' , 'Tubular Door Knob (6881AB-ET)' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('40' , '0040' , 'Tubular Door Knob (60711SS-ET)' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('41' , '0041' , 'Hinge 3x3' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('42' , '0042' , 'Sanding Sealer (Small)' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('43' , '0043' , 'Lacquer Thinner' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('44' , '0044' , 'Paint Roller #4 Green' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('45' , '0045' , 'Rubber Gloves' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('46' , '0046' , 'Paint Roller #7 Green' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('47' , '0047' , 'Mini Roller (With handle) #4' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('48' , '0048' , 'Mini Roller (Without handle) #5' , '' , '1' , '1' , '' , '' , '35' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('49' , '0049' , 'Hinge (Nugen Brand) 3x3' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('50' , '0050' , 'Firefly Bulb 5W' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('51' , '0051' , 'Firefly Bulb 7W' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('52' , '0052' , 'Firefly Bulb 11W' , '' , '1' , '1' , '' , '' , '135' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('53' , '0053' , 'Firefly Bulb 18W' , '' , '1' , '1' , '' , '' , '230' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('54' , '0054' , 'Electrical Tape (Small)' , '' , '1' , '1' , '' , '' , '20' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('55' , '0055' , 'Electrical Tape (Large)' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('56' , '0056' , 'Vulcaseal 75ml Bostick' , '' , '1' , '1' , '' , '' , '70' , '0' , '99' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('57' , '0057' , 'Elasto Seal' , '' , '1' , '1' , '' , '' , '65' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('58' , '0058' , 'Omni Single Switch' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('59' , '0059' , 'Omni Single Gang Outlet' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('60' , '0060' , 'Electrical Plug' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('61' , '0061' , 'Omni 2 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('62' , '0062' , 'Omni 3 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('63' , '0063' , 'Royu Double Switch' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('64' , '0064' , 'Royu Triple Switch' , '' , '1' , '1' , '' , '' , '175' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('65' , '0065' , 'Shuta Receptacle 2x2' , '' , '1' , '1' , '' , '' , '30' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('66' , '0066' , 'Cutting Disc (Scharf Brand)' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('67' , '0067' , 'FujiWeld Welding Rod' , '' , '1' , '1' , '' , '' , '160' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('68' , '0068' , 'China Welding Rod' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('69' , '0069' , 'PVC Door' , '' , '1' , '1' , '' , '' , '1550' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('70' , '0070' , 'PVC Elbow Atlanta #2' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('71' , '0071' , 'PVC Elbow Atlanta #1' , '' , '1' , '1' , '' , '' , '110' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('72' , '0072' , 'PVC Drain Master Elbow (Atlanta) 2x90' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('73' , '0073' , 'PVC Y 2x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('74' , '0074' , 'PVC Y 2x2  Cover (Atlanta)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('75' , '0075' , 'PVC 2" U-Trap (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('76' , '0076' , 'PVC TEE 4x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('77' , '0077' , 'PVC Elbow Ordinary #3 (Unimold)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('78' , '0078' , 'PVC Drain Matster Elbow (Atlanta) 3x45' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('79' , '0079' , 'PVC Elbow 4x90' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('80' , '0080' , 'Ninja Lum Corrugated #12' , '' , '1' , '1' , '' , '' , '475' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('81' , '0081' , 'Ninja Lum Corrugated #10' , '' , '1' , '1' , '' , '' , '380' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('82' , '0082' , 'Ninja Lum Corrugated #8' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('83' , '0083' , 'Ordinary Corrugated #12' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('84' , '0084' , 'Ordinary Corrugated #10' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('85' , '0085' , 'Ordinary Corrugated #8' , '' , '1' , '1' , '' , '' , '180' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('86' , '0086' , 'Boysen Quick Drying Enamel 1 Liter' , '' , '1' , '1' , '' , '' , '210' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('87' , '0087' , 'Lennox Blade' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('88' , '0088' , 'Hardiflex Nails' , '' , '1' , '1' , '' , '' , '120' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('1' , '0001' , 'Concrete Nail #1' , '' , '1' , '1' , '' , '' , '100' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('2' , '0002' , 'Liha #120' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('3' , '0003' , 'Mabuhay Cement Green' , '' , '1' , '1' , '' , '' , '190' , '185' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('4' , '0004' , 'Mabuhay Cement Red' , '' , '1' , '1' , '' , '' , '210' , '205' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('5' , '0005' , 'Apo Cement Blue' , '' , '1' , '1' , '' , '' , '235' , '230' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('6' , '0006' , 'Tile Adhesive' , '' , '1' , '1' , '' , '' , '310' , '305' , '98' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('7' , '0007' , 'Tile Grout' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('8' , '0008' , 'PVC Pipe #4 Atlanta' , '' , '1' , '1' , '' , '' , '400' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('9' , '0009' , 'PVC Pipe #3 Atlanta' , '' , '1' , '1' , '' , '' , '375' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('10' , '0010' , 'PVC Pipe #2' , '' , '1' , '1' , '' , '' , '200' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('11' , '0011' , 'Inayag' , '' , '1' , '1' , '' , '' , '55' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('12' , '0012' , 'River Sand' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('13' , '0013' , 'Gravel' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('14' , '0014' , '2x2x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('15' , '0015' , '2x2x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('16' , '0016' , '2x2x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('17' , '0017' , '2x3x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('18' , '0018' , '2x3x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('19' , '0019' , '2x3x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '155' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('20' , '0020' , '9MM Debar' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('21' , '0021' , '10MM Debar' , '' , '1' , '1' , '' , '' , '148' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('22' , '0022' , '12MM Debar' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('23' , '0023' , 'Gardner 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('24' , '0024' , 'Marine 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('25' , '0025' , 'Marine 1/2' , '' , '1' , '1' , '' , '' , '775' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('26' , '0026' , 'Marine 3/4' , '' , '1' , '1' , '' , '' , '1275' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('27' , '0027' , 'Tie Wire' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('28' , '0028' , 'Plastic Varnish' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('29' , '0029' , 'Timeout' , '' , '1' , '1' , '' , '' , '225' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('30' , '0030' , 'Clear Gloss Lacquer' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('31' , '0031' , 'Marine Epoxy  (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('32' , '0032' , 'Epoxy (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('33' , '0033' , 'Boysen Roof Gard' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('34' , '0034' , 'S-Blue 1/1/12' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('35' , '0035' , 'Marine Epoxy (Small)' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('36' , '0036' , 'Paint Thinner (Big)' , '' , '1' , '1' , '' , '' , '425' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('37' , '0037' , 'Clear Gloss Lacquer (Big)' , '' , '1' , '1' , '' , '' , '765' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('38' , '0038' , 'Sanding Sealer (Big)' , '' , '1' , '1' , '' , '' , '825' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('39' , '0039' , 'Tubular Door Knob (6881AB-ET)' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('40' , '0040' , 'Tubular Door Knob (60711SS-ET)' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('41' , '0041' , 'Hinge 3x3' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('42' , '0042' , 'Sanding Sealer (Small)' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('43' , '0043' , 'Lacquer Thinner' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('44' , '0044' , 'Paint Roller #4 Green' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('45' , '0045' , 'Rubber Gloves' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('46' , '0046' , 'Paint Roller #7 Green' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('47' , '0047' , 'Mini Roller (With handle) #4' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('48' , '0048' , 'Mini Roller (Without handle) #5' , '' , '1' , '1' , '' , '' , '35' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('49' , '0049' , 'Hinge (Nugen Brand) 3x3' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('50' , '0050' , 'Firefly Bulb 5W' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('51' , '0051' , 'Firefly Bulb 7W' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('52' , '0052' , 'Firefly Bulb 11W' , '' , '1' , '1' , '' , '' , '135' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('53' , '0053' , 'Firefly Bulb 18W' , '' , '1' , '1' , '' , '' , '230' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('54' , '0054' , 'Electrical Tape (Small)' , '' , '1' , '1' , '' , '' , '20' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('55' , '0055' , 'Electrical Tape (Large)' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('56' , '0056' , 'Vulcaseal 75ml Bostick' , '' , '1' , '1' , '' , '' , '70' , '0' , '99' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('57' , '0057' , 'Elasto Seal' , '' , '1' , '1' , '' , '' , '65' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('58' , '0058' , 'Omni Single Switch' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('59' , '0059' , 'Omni Single Gang Outlet' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('60' , '0060' , 'Electrical Plug' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('61' , '0061' , 'Omni 2 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('62' , '0062' , 'Omni 3 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('63' , '0063' , 'Royu Double Switch' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('64' , '0064' , 'Royu Triple Switch' , '' , '1' , '1' , '' , '' , '175' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('65' , '0065' , 'Shuta Receptacle 2x2' , '' , '1' , '1' , '' , '' , '30' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('66' , '0066' , 'Cutting Disc (Scharf Brand)' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('67' , '0067' , 'FujiWeld Welding Rod' , '' , '1' , '1' , '' , '' , '160' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('68' , '0068' , 'China Welding Rod' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('69' , '0069' , 'PVC Door' , '' , '1' , '1' , '' , '' , '1550' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('70' , '0070' , 'PVC Elbow Atlanta #2' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('71' , '0071' , 'PVC Elbow Atlanta #1' , '' , '1' , '1' , '' , '' , '110' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('72' , '0072' , 'PVC Drain Master Elbow (Atlanta) 2x90' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('73' , '0073' , 'PVC Y 2x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('74' , '0074' , 'PVC Y 2x2  Cover (Atlanta)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('75' , '0075' , 'PVC 2" U-Trap (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('76' , '0076' , 'PVC TEE 4x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('77' , '0077' , 'PVC Elbow Ordinary #3 (Unimold)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('78' , '0078' , 'PVC Drain Matster Elbow (Atlanta) 3x45' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('79' , '0079' , 'PVC Elbow 4x90' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('80' , '0080' , 'Ninja Lum Corrugated #12' , '' , '1' , '1' , '' , '' , '475' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('81' , '0081' , 'Ninja Lum Corrugated #10' , '' , '1' , '1' , '' , '' , '380' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('82' , '0082' , 'Ninja Lum Corrugated #8' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('83' , '0083' , 'Ordinary Corrugated #12' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('84' , '0084' , 'Ordinary Corrugated #10' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('85' , '0085' , 'Ordinary Corrugated #8' , '' , '1' , '1' , '' , '' , '180' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('86' , '0086' , 'Boysen Quick Drying Enamel 1 Liter' , '' , '1' , '1' , '' , '' , '210' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('87' , '0087' , 'Lennox Blade' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('88' , '0088' , 'Hardiflex Nails' , '' , '1' , '1' , '' , '' , '120' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('1' , '0001' , 'Concrete Nail #1' , '' , '1' , '1' , '' , '' , '100' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('2' , '0002' , 'Liha #120' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('3' , '0003' , 'Mabuhay Cement Green' , '' , '1' , '1' , '' , '' , '190' , '185' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('4' , '0004' , 'Mabuhay Cement Red' , '' , '1' , '1' , '' , '' , '210' , '205' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('5' , '0005' , 'Apo Cement Blue' , '' , '1' , '1' , '' , '' , '235' , '230' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('6' , '0006' , 'Tile Adhesive' , '' , '1' , '1' , '' , '' , '310' , '305' , '98' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('7' , '0007' , 'Tile Grout' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('8' , '0008' , 'PVC Pipe #4 Atlanta' , '' , '1' , '1' , '' , '' , '400' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('9' , '0009' , 'PVC Pipe #3 Atlanta' , '' , '1' , '1' , '' , '' , '375' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('10' , '0010' , 'PVC Pipe #2' , '' , '1' , '1' , '' , '' , '200' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('11' , '0011' , 'Inayag' , '' , '1' , '1' , '' , '' , '55' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('12' , '0012' , 'River Sand' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('13' , '0013' , 'Gravel' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('14' , '0014' , '2x2x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('15' , '0015' , '2x2x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('16' , '0016' , '2x2x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('17' , '0017' , '2x3x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('18' , '0018' , '2x3x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('19' , '0019' , '2x3x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '155' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('20' , '0020' , '9MM Debar' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('21' , '0021' , '10MM Debar' , '' , '1' , '1' , '' , '' , '148' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('22' , '0022' , '12MM Debar' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('23' , '0023' , 'Gardner 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('24' , '0024' , 'Marine 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('25' , '0025' , 'Marine 1/2' , '' , '1' , '1' , '' , '' , '775' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('26' , '0026' , 'Marine 3/4' , '' , '1' , '1' , '' , '' , '1275' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('27' , '0027' , 'Tie Wire' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('28' , '0028' , 'Plastic Varnish' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('29' , '0029' , 'Timeout' , '' , '1' , '1' , '' , '' , '225' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('30' , '0030' , 'Clear Gloss Lacquer' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('31' , '0031' , 'Marine Epoxy  (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('32' , '0032' , 'Epoxy (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('33' , '0033' , 'Boysen Roof Gard' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('34' , '0034' , 'S-Blue 1/1/12' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('35' , '0035' , 'Marine Epoxy (Small)' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('36' , '0036' , 'Paint Thinner (Big)' , '' , '1' , '1' , '' , '' , '425' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('37' , '0037' , 'Clear Gloss Lacquer (Big)' , '' , '1' , '1' , '' , '' , '765' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('38' , '0038' , 'Sanding Sealer (Big)' , '' , '1' , '1' , '' , '' , '825' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('39' , '0039' , 'Tubular Door Knob (6881AB-ET)' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('40' , '0040' , 'Tubular Door Knob (60711SS-ET)' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('41' , '0041' , 'Hinge 3x3' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('42' , '0042' , 'Sanding Sealer (Small)' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('43' , '0043' , 'Lacquer Thinner' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('44' , '0044' , 'Paint Roller #4 Green' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('45' , '0045' , 'Rubber Gloves' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('46' , '0046' , 'Paint Roller #7 Green' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('47' , '0047' , 'Mini Roller (With handle) #4' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('48' , '0048' , 'Mini Roller (Without handle) #5' , '' , '1' , '1' , '' , '' , '35' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('49' , '0049' , 'Hinge (Nugen Brand) 3x3' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('50' , '0050' , 'Firefly Bulb 5W' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('51' , '0051' , 'Firefly Bulb 7W' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('52' , '0052' , 'Firefly Bulb 11W' , '' , '1' , '1' , '' , '' , '135' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('53' , '0053' , 'Firefly Bulb 18W' , '' , '1' , '1' , '' , '' , '230' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('54' , '0054' , 'Electrical Tape (Small)' , '' , '1' , '1' , '' , '' , '20' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('55' , '0055' , 'Electrical Tape (Large)' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('56' , '0056' , 'Vulcaseal 75ml Bostick' , '' , '1' , '1' , '' , '' , '70' , '0' , '99' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('57' , '0057' , 'Elasto Seal' , '' , '1' , '1' , '' , '' , '65' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('58' , '0058' , 'Omni Single Switch' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('59' , '0059' , 'Omni Single Gang Outlet' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('60' , '0060' , 'Electrical Plug' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('61' , '0061' , 'Omni 2 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('62' , '0062' , 'Omni 3 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('63' , '0063' , 'Royu Double Switch' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('64' , '0064' , 'Royu Triple Switch' , '' , '1' , '1' , '' , '' , '175' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('65' , '0065' , 'Shuta Receptacle 2x2' , '' , '1' , '1' , '' , '' , '30' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('66' , '0066' , 'Cutting Disc (Scharf Brand)' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('67' , '0067' , 'FujiWeld Welding Rod' , '' , '1' , '1' , '' , '' , '160' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('68' , '0068' , 'China Welding Rod' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('69' , '0069' , 'PVC Door' , '' , '1' , '1' , '' , '' , '1550' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('70' , '0070' , 'PVC Elbow Atlanta #2' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('71' , '0071' , 'PVC Elbow Atlanta #1' , '' , '1' , '1' , '' , '' , '110' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('72' , '0072' , 'PVC Drain Master Elbow (Atlanta) 2x90' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('73' , '0073' , 'PVC Y 2x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('74' , '0074' , 'PVC Y 2x2  Cover (Atlanta)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('75' , '0075' , 'PVC 2" U-Trap (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('76' , '0076' , 'PVC TEE 4x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('77' , '0077' , 'PVC Elbow Ordinary #3 (Unimold)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('78' , '0078' , 'PVC Drain Matster Elbow (Atlanta) 3x45' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('79' , '0079' , 'PVC Elbow 4x90' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('80' , '0080' , 'Ninja Lum Corrugated #12' , '' , '1' , '1' , '' , '' , '475' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('81' , '0081' , 'Ninja Lum Corrugated #10' , '' , '1' , '1' , '' , '' , '380' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('82' , '0082' , 'Ninja Lum Corrugated #8' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('83' , '0083' , 'Ordinary Corrugated #12' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('84' , '0084' , 'Ordinary Corrugated #10' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('85' , '0085' , 'Ordinary Corrugated #8' , '' , '1' , '1' , '' , '' , '180' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('86' , '0086' , 'Boysen Quick Drying Enamel 1 Liter' , '' , '1' , '1' , '' , '' , '210' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('87' , '0087' , 'Lennox Blade' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('88' , '0088' , 'Hardiflex Nails' , '' , '1' , '1' , '' , '' , '120' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('1' , '0001' , 'Concrete Nail #1' , '' , '1' , '1' , '' , '' , '100' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('2' , '0002' , 'Liha #120' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('3' , '0003' , 'Mabuhay Cement Green' , '' , '1' , '1' , '' , '' , '190' , '185' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('4' , '0004' , 'Mabuhay Cement Red' , '' , '1' , '1' , '' , '' , '210' , '205' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('5' , '0005' , 'Apo Cement Blue' , '' , '1' , '1' , '' , '' , '235' , '230' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('6' , '0006' , 'Tile Adhesive' , '' , '1' , '1' , '' , '' , '310' , '305' , '98' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('7' , '0007' , 'Tile Grout' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('8' , '0008' , 'PVC Pipe #4 Atlanta' , '' , '1' , '1' , '' , '' , '400' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('9' , '0009' , 'PVC Pipe #3 Atlanta' , '' , '1' , '1' , '' , '' , '375' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('10' , '0010' , 'PVC Pipe #2' , '' , '1' , '1' , '' , '' , '200' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('11' , '0011' , 'Inayag' , '' , '1' , '1' , '' , '' , '55' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('12' , '0012' , 'River Sand' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('13' , '0013' , 'Gravel' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('14' , '0014' , '2x2x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('15' , '0015' , '2x2x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('16' , '0016' , '2x2x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('17' , '0017' , '2x3x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('18' , '0018' , '2x3x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('19' , '0019' , '2x3x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '155' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('20' , '0020' , '9MM Debar' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('21' , '0021' , '10MM Debar' , '' , '1' , '1' , '' , '' , '148' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('22' , '0022' , '12MM Debar' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('23' , '0023' , 'Gardner 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('24' , '0024' , 'Marine 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('25' , '0025' , 'Marine 1/2' , '' , '1' , '1' , '' , '' , '775' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('26' , '0026' , 'Marine 3/4' , '' , '1' , '1' , '' , '' , '1275' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('27' , '0027' , 'Tie Wire' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('28' , '0028' , 'Plastic Varnish' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('29' , '0029' , 'Timeout' , '' , '1' , '1' , '' , '' , '225' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('30' , '0030' , 'Clear Gloss Lacquer' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('31' , '0031' , 'Marine Epoxy  (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('32' , '0032' , 'Epoxy (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('33' , '0033' , 'Boysen Roof Gard' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('34' , '0034' , 'S-Blue 1/1/12' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('35' , '0035' , 'Marine Epoxy (Small)' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('36' , '0036' , 'Paint Thinner (Big)' , '' , '1' , '1' , '' , '' , '425' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('37' , '0037' , 'Clear Gloss Lacquer (Big)' , '' , '1' , '1' , '' , '' , '765' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('38' , '0038' , 'Sanding Sealer (Big)' , '' , '1' , '1' , '' , '' , '825' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('39' , '0039' , 'Tubular Door Knob (6881AB-ET)' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('40' , '0040' , 'Tubular Door Knob (60711SS-ET)' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('41' , '0041' , 'Hinge 3x3' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('42' , '0042' , 'Sanding Sealer (Small)' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('43' , '0043' , 'Lacquer Thinner' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('44' , '0044' , 'Paint Roller #4 Green' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('45' , '0045' , 'Rubber Gloves' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('46' , '0046' , 'Paint Roller #7 Green' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('47' , '0047' , 'Mini Roller (With handle) #4' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('48' , '0048' , 'Mini Roller (Without handle) #5' , '' , '1' , '1' , '' , '' , '35' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('49' , '0049' , 'Hinge (Nugen Brand) 3x3' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('50' , '0050' , 'Firefly Bulb 5W' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('51' , '0051' , 'Firefly Bulb 7W' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('52' , '0052' , 'Firefly Bulb 11W' , '' , '1' , '1' , '' , '' , '135' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('53' , '0053' , 'Firefly Bulb 18W' , '' , '1' , '1' , '' , '' , '230' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('54' , '0054' , 'Electrical Tape (Small)' , '' , '1' , '1' , '' , '' , '20' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('55' , '0055' , 'Electrical Tape (Large)' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('56' , '0056' , 'Vulcaseal 75ml Bostick' , '' , '1' , '1' , '' , '' , '70' , '0' , '99' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('57' , '0057' , 'Elasto Seal' , '' , '1' , '1' , '' , '' , '65' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('58' , '0058' , 'Omni Single Switch' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('59' , '0059' , 'Omni Single Gang Outlet' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('60' , '0060' , 'Electrical Plug' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('61' , '0061' , 'Omni 2 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('62' , '0062' , 'Omni 3 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('63' , '0063' , 'Royu Double Switch' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('64' , '0064' , 'Royu Triple Switch' , '' , '1' , '1' , '' , '' , '175' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('65' , '0065' , 'Shuta Receptacle 2x2' , '' , '1' , '1' , '' , '' , '30' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('66' , '0066' , 'Cutting Disc (Scharf Brand)' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('67' , '0067' , 'FujiWeld Welding Rod' , '' , '1' , '1' , '' , '' , '160' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('68' , '0068' , 'China Welding Rod' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('69' , '0069' , 'PVC Door' , '' , '1' , '1' , '' , '' , '1550' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('70' , '0070' , 'PVC Elbow Atlanta #2' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('71' , '0071' , 'PVC Elbow Atlanta #1' , '' , '1' , '1' , '' , '' , '110' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('72' , '0072' , 'PVC Drain Master Elbow (Atlanta) 2x90' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('73' , '0073' , 'PVC Y 2x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('74' , '0074' , 'PVC Y 2x2  Cover (Atlanta)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('75' , '0075' , 'PVC 2" U-Trap (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('76' , '0076' , 'PVC TEE 4x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('77' , '0077' , 'PVC Elbow Ordinary #3 (Unimold)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('78' , '0078' , 'PVC Drain Matster Elbow (Atlanta) 3x45' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('79' , '0079' , 'PVC Elbow 4x90' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('80' , '0080' , 'Ninja Lum Corrugated #12' , '' , '1' , '1' , '' , '' , '475' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('81' , '0081' , 'Ninja Lum Corrugated #10' , '' , '1' , '1' , '' , '' , '380' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('82' , '0082' , 'Ninja Lum Corrugated #8' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('83' , '0083' , 'Ordinary Corrugated #12' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('84' , '0084' , 'Ordinary Corrugated #10' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('85' , '0085' , 'Ordinary Corrugated #8' , '' , '1' , '1' , '' , '' , '180' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('86' , '0086' , 'Boysen Quick Drying Enamel 1 Liter' , '' , '1' , '1' , '' , '' , '210' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('87' , '0087' , 'Lennox Blade' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('88' , '0088' , 'Hardiflex Nails' , '' , '1' , '1' , '' , '' , '120' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('1' , '0001' , 'Concrete Nail #1' , '' , '1' , '1' , '' , '' , '100' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('2' , '0002' , 'Liha #120' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('3' , '0003' , 'Mabuhay Cement Green' , '' , '1' , '1' , '' , '' , '190' , '185' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('4' , '0004' , 'Mabuhay Cement Red' , '' , '1' , '1' , '' , '' , '210' , '205' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('5' , '0005' , 'Apo Cement Blue' , '' , '1' , '1' , '' , '' , '235' , '230' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('6' , '0006' , 'Tile Adhesive' , '' , '1' , '1' , '' , '' , '310' , '305' , '98' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('7' , '0007' , 'Tile Grout' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('8' , '0008' , 'PVC Pipe #4 Atlanta' , '' , '1' , '1' , '' , '' , '400' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('9' , '0009' , 'PVC Pipe #3 Atlanta' , '' , '1' , '1' , '' , '' , '375' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('10' , '0010' , 'PVC Pipe #2' , '' , '1' , '1' , '' , '' , '200' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('11' , '0011' , 'Inayag' , '' , '1' , '1' , '' , '' , '55' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('12' , '0012' , 'River Sand' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('13' , '0013' , 'Gravel' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('14' , '0014' , '2x2x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('15' , '0015' , '2x2x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('16' , '0016' , '2x2x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('17' , '0017' , '2x3x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('18' , '0018' , '2x3x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('19' , '0019' , '2x3x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '155' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('20' , '0020' , '9MM Debar' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('21' , '0021' , '10MM Debar' , '' , '1' , '1' , '' , '' , '148' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('22' , '0022' , '12MM Debar' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('23' , '0023' , 'Gardner 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('24' , '0024' , 'Marine 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('25' , '0025' , 'Marine 1/2' , '' , '1' , '1' , '' , '' , '775' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('26' , '0026' , 'Marine 3/4' , '' , '1' , '1' , '' , '' , '1275' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('27' , '0027' , 'Tie Wire' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('28' , '0028' , 'Plastic Varnish' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('29' , '0029' , 'Timeout' , '' , '1' , '1' , '' , '' , '225' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('30' , '0030' , 'Clear Gloss Lacquer' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('31' , '0031' , 'Marine Epoxy  (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('32' , '0032' , 'Epoxy (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('33' , '0033' , 'Boysen Roof Gard' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('34' , '0034' , 'S-Blue 1/1/12' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('35' , '0035' , 'Marine Epoxy (Small)' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('36' , '0036' , 'Paint Thinner (Big)' , '' , '1' , '1' , '' , '' , '425' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('37' , '0037' , 'Clear Gloss Lacquer (Big)' , '' , '1' , '1' , '' , '' , '765' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('38' , '0038' , 'Sanding Sealer (Big)' , '' , '1' , '1' , '' , '' , '825' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('39' , '0039' , 'Tubular Door Knob (6881AB-ET)' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('40' , '0040' , 'Tubular Door Knob (60711SS-ET)' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('41' , '0041' , 'Hinge 3x3' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('42' , '0042' , 'Sanding Sealer (Small)' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('43' , '0043' , 'Lacquer Thinner' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('44' , '0044' , 'Paint Roller #4 Green' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('45' , '0045' , 'Rubber Gloves' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('46' , '0046' , 'Paint Roller #7 Green' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('47' , '0047' , 'Mini Roller (With handle) #4' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('48' , '0048' , 'Mini Roller (Without handle) #5' , '' , '1' , '1' , '' , '' , '35' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('49' , '0049' , 'Hinge (Nugen Brand) 3x3' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('50' , '0050' , 'Firefly Bulb 5W' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('51' , '0051' , 'Firefly Bulb 7W' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('52' , '0052' , 'Firefly Bulb 11W' , '' , '1' , '1' , '' , '' , '135' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('53' , '0053' , 'Firefly Bulb 18W' , '' , '1' , '1' , '' , '' , '230' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('54' , '0054' , 'Electrical Tape (Small)' , '' , '1' , '1' , '' , '' , '20' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('55' , '0055' , 'Electrical Tape (Large)' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('56' , '0056' , 'Vulcaseal 75ml Bostick' , '' , '1' , '1' , '' , '' , '70' , '0' , '99' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('57' , '0057' , 'Elasto Seal' , '' , '1' , '1' , '' , '' , '65' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('58' , '0058' , 'Omni Single Switch' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('59' , '0059' , 'Omni Single Gang Outlet' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('60' , '0060' , 'Electrical Plug' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('61' , '0061' , 'Omni 2 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('62' , '0062' , 'Omni 3 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('63' , '0063' , 'Royu Double Switch' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('64' , '0064' , 'Royu Triple Switch' , '' , '1' , '1' , '' , '' , '175' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('65' , '0065' , 'Shuta Receptacle 2x2' , '' , '1' , '1' , '' , '' , '30' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('66' , '0066' , 'Cutting Disc (Scharf Brand)' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('67' , '0067' , 'FujiWeld Welding Rod' , '' , '1' , '1' , '' , '' , '160' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('68' , '0068' , 'China Welding Rod' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('69' , '0069' , 'PVC Door' , '' , '1' , '1' , '' , '' , '1550' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('70' , '0070' , 'PVC Elbow Atlanta #2' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('71' , '0071' , 'PVC Elbow Atlanta #1' , '' , '1' , '1' , '' , '' , '110' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('72' , '0072' , 'PVC Drain Master Elbow (Atlanta) 2x90' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('73' , '0073' , 'PVC Y 2x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('74' , '0074' , 'PVC Y 2x2  Cover (Atlanta)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('75' , '0075' , 'PVC 2" U-Trap (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('76' , '0076' , 'PVC TEE 4x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('77' , '0077' , 'PVC Elbow Ordinary #3 (Unimold)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('78' , '0078' , 'PVC Drain Matster Elbow (Atlanta) 3x45' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('79' , '0079' , 'PVC Elbow 4x90' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('80' , '0080' , 'Ninja Lum Corrugated #12' , '' , '1' , '1' , '' , '' , '475' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('81' , '0081' , 'Ninja Lum Corrugated #10' , '' , '1' , '1' , '' , '' , '380' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('82' , '0082' , 'Ninja Lum Corrugated #8' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('83' , '0083' , 'Ordinary Corrugated #12' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('84' , '0084' , 'Ordinary Corrugated #10' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('85' , '0085' , 'Ordinary Corrugated #8' , '' , '1' , '1' , '' , '' , '180' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('86' , '0086' , 'Boysen Quick Drying Enamel 1 Liter' , '' , '1' , '1' , '' , '' , '210' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('87' , '0087' , 'Lennox Blade' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('88' , '0088' , 'Hardiflex Nails' , '' , '1' , '1' , '' , '' , '120' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('1' , '0001' , 'Concrete Nail #1' , '' , '1' , '1' , '' , '' , '100' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('2' , '0002' , 'Liha #120' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('3' , '0003' , 'Mabuhay Cement Green' , '' , '1' , '1' , '' , '' , '190' , '185' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('4' , '0004' , 'Mabuhay Cement Red' , '' , '1' , '1' , '' , '' , '210' , '205' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('5' , '0005' , 'Apo Cement Blue' , '' , '1' , '1' , '' , '' , '235' , '230' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('6' , '0006' , 'Tile Adhesive' , '' , '1' , '1' , '' , '' , '310' , '305' , '98' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('7' , '0007' , 'Tile Grout' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('8' , '0008' , 'PVC Pipe #4 Atlanta' , '' , '1' , '1' , '' , '' , '400' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('9' , '0009' , 'PVC Pipe #3 Atlanta' , '' , '1' , '1' , '' , '' , '375' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('10' , '0010' , 'PVC Pipe #2' , '' , '1' , '1' , '' , '' , '200' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('11' , '0011' , 'Inayag' , '' , '1' , '1' , '' , '' , '55' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('12' , '0012' , 'River Sand' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('13' , '0013' , 'Gravel' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('14' , '0014' , '2x2x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('15' , '0015' , '2x2x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('16' , '0016' , '2x2x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('17' , '0017' , '2x3x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('18' , '0018' , '2x3x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('19' , '0019' , '2x3x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '155' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('20' , '0020' , '9MM Debar' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('21' , '0021' , '10MM Debar' , '' , '1' , '1' , '' , '' , '148' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('22' , '0022' , '12MM Debar' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('23' , '0023' , 'Gardner 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('24' , '0024' , 'Marine 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('25' , '0025' , 'Marine 1/2' , '' , '1' , '1' , '' , '' , '775' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('26' , '0026' , 'Marine 3/4' , '' , '1' , '1' , '' , '' , '1275' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('27' , '0027' , 'Tie Wire' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('28' , '0028' , 'Plastic Varnish' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('29' , '0029' , 'Timeout' , '' , '1' , '1' , '' , '' , '225' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('30' , '0030' , 'Clear Gloss Lacquer' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('31' , '0031' , 'Marine Epoxy  (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('32' , '0032' , 'Epoxy (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('33' , '0033' , 'Boysen Roof Gard' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('34' , '0034' , 'S-Blue 1/1/12' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('35' , '0035' , 'Marine Epoxy (Small)' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('36' , '0036' , 'Paint Thinner (Big)' , '' , '1' , '1' , '' , '' , '425' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('37' , '0037' , 'Clear Gloss Lacquer (Big)' , '' , '1' , '1' , '' , '' , '765' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('38' , '0038' , 'Sanding Sealer (Big)' , '' , '1' , '1' , '' , '' , '825' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('39' , '0039' , 'Tubular Door Knob (6881AB-ET)' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('40' , '0040' , 'Tubular Door Knob (60711SS-ET)' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('41' , '0041' , 'Hinge 3x3' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('42' , '0042' , 'Sanding Sealer (Small)' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('43' , '0043' , 'Lacquer Thinner' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('44' , '0044' , 'Paint Roller #4 Green' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('45' , '0045' , 'Rubber Gloves' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('46' , '0046' , 'Paint Roller #7 Green' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('47' , '0047' , 'Mini Roller (With handle) #4' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('48' , '0048' , 'Mini Roller (Without handle) #5' , '' , '1' , '1' , '' , '' , '35' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('49' , '0049' , 'Hinge (Nugen Brand) 3x3' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('50' , '0050' , 'Firefly Bulb 5W' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('51' , '0051' , 'Firefly Bulb 7W' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('52' , '0052' , 'Firefly Bulb 11W' , '' , '1' , '1' , '' , '' , '135' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('53' , '0053' , 'Firefly Bulb 18W' , '' , '1' , '1' , '' , '' , '230' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('54' , '0054' , 'Electrical Tape (Small)' , '' , '1' , '1' , '' , '' , '20' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('55' , '0055' , 'Electrical Tape (Large)' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('56' , '0056' , 'Vulcaseal 75ml Bostick' , '' , '1' , '1' , '' , '' , '70' , '0' , '99' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('57' , '0057' , 'Elasto Seal' , '' , '1' , '1' , '' , '' , '65' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('58' , '0058' , 'Omni Single Switch' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('59' , '0059' , 'Omni Single Gang Outlet' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('60' , '0060' , 'Electrical Plug' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('61' , '0061' , 'Omni 2 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('62' , '0062' , 'Omni 3 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('63' , '0063' , 'Royu Double Switch' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('64' , '0064' , 'Royu Triple Switch' , '' , '1' , '1' , '' , '' , '175' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('65' , '0065' , 'Shuta Receptacle 2x2' , '' , '1' , '1' , '' , '' , '30' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('66' , '0066' , 'Cutting Disc (Scharf Brand)' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('67' , '0067' , 'FujiWeld Welding Rod' , '' , '1' , '1' , '' , '' , '160' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('68' , '0068' , 'China Welding Rod' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('69' , '0069' , 'PVC Door' , '' , '1' , '1' , '' , '' , '1550' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('70' , '0070' , 'PVC Elbow Atlanta #2' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('71' , '0071' , 'PVC Elbow Atlanta #1' , '' , '1' , '1' , '' , '' , '110' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('72' , '0072' , 'PVC Drain Master Elbow (Atlanta) 2x90' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('73' , '0073' , 'PVC Y 2x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('74' , '0074' , 'PVC Y 2x2  Cover (Atlanta)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('75' , '0075' , 'PVC 2" U-Trap (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('76' , '0076' , 'PVC TEE 4x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('77' , '0077' , 'PVC Elbow Ordinary #3 (Unimold)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('78' , '0078' , 'PVC Drain Matster Elbow (Atlanta) 3x45' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('79' , '0079' , 'PVC Elbow 4x90' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('80' , '0080' , 'Ninja Lum Corrugated #12' , '' , '1' , '1' , '' , '' , '475' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('81' , '0081' , 'Ninja Lum Corrugated #10' , '' , '1' , '1' , '' , '' , '380' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('82' , '0082' , 'Ninja Lum Corrugated #8' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('83' , '0083' , 'Ordinary Corrugated #12' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('84' , '0084' , 'Ordinary Corrugated #10' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('85' , '0085' , 'Ordinary Corrugated #8' , '' , '1' , '1' , '' , '' , '180' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('86' , '0086' , 'Boysen Quick Drying Enamel 1 Liter' , '' , '1' , '1' , '' , '' , '210' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('87' , '0087' , 'Lennox Blade' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('88' , '0088' , 'Hardiflex Nails' , '' , '1' , '1' , '' , '' , '120' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('1' , '0001' , 'Concrete Nail #1' , '' , '1' , '1' , '' , '' , '100' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('2' , '0002' , 'Liha #120' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('3' , '0003' , 'Mabuhay Cement Green' , '' , '1' , '1' , '' , '' , '190' , '185' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('4' , '0004' , 'Mabuhay Cement Red' , '' , '1' , '1' , '' , '' , '210' , '205' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('5' , '0005' , 'Apo Cement Blue' , '' , '1' , '1' , '' , '' , '235' , '230' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('6' , '0006' , 'Tile Adhesive' , '' , '1' , '1' , '' , '' , '310' , '305' , '98' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('7' , '0007' , 'Tile Grout' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('8' , '0008' , 'PVC Pipe #4 Atlanta' , '' , '1' , '1' , '' , '' , '400' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('9' , '0009' , 'PVC Pipe #3 Atlanta' , '' , '1' , '1' , '' , '' , '375' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('10' , '0010' , 'PVC Pipe #2' , '' , '1' , '1' , '' , '' , '200' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('11' , '0011' , 'Inayag' , '' , '1' , '1' , '' , '' , '55' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('12' , '0012' , 'River Sand' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('13' , '0013' , 'Gravel' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('14' , '0014' , '2x2x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('15' , '0015' , '2x2x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('16' , '0016' , '2x2x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('17' , '0017' , '2x3x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('18' , '0018' , '2x3x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('19' , '0019' , '2x3x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '155' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('20' , '0020' , '9MM Debar' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('21' , '0021' , '10MM Debar' , '' , '1' , '1' , '' , '' , '148' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('22' , '0022' , '12MM Debar' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('23' , '0023' , 'Gardner 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('24' , '0024' , 'Marine 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('25' , '0025' , 'Marine 1/2' , '' , '1' , '1' , '' , '' , '775' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('26' , '0026' , 'Marine 3/4' , '' , '1' , '1' , '' , '' , '1275' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('27' , '0027' , 'Tie Wire' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('28' , '0028' , 'Plastic Varnish' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('29' , '0029' , 'Timeout' , '' , '1' , '1' , '' , '' , '225' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('30' , '0030' , 'Clear Gloss Lacquer' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('31' , '0031' , 'Marine Epoxy  (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('32' , '0032' , 'Epoxy (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('33' , '0033' , 'Boysen Roof Gard' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('34' , '0034' , 'S-Blue 1/1/12' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('35' , '0035' , 'Marine Epoxy (Small)' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('36' , '0036' , 'Paint Thinner (Big)' , '' , '1' , '1' , '' , '' , '425' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('37' , '0037' , 'Clear Gloss Lacquer (Big)' , '' , '1' , '1' , '' , '' , '765' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('38' , '0038' , 'Sanding Sealer (Big)' , '' , '1' , '1' , '' , '' , '825' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('39' , '0039' , 'Tubular Door Knob (6881AB-ET)' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('40' , '0040' , 'Tubular Door Knob (60711SS-ET)' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('41' , '0041' , 'Hinge 3x3' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('42' , '0042' , 'Sanding Sealer (Small)' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('43' , '0043' , 'Lacquer Thinner' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('44' , '0044' , 'Paint Roller #4 Green' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('45' , '0045' , 'Rubber Gloves' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('46' , '0046' , 'Paint Roller #7 Green' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('47' , '0047' , 'Mini Roller (With handle) #4' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('48' , '0048' , 'Mini Roller (Without handle) #5' , '' , '1' , '1' , '' , '' , '35' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('49' , '0049' , 'Hinge (Nugen Brand) 3x3' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('50' , '0050' , 'Firefly Bulb 5W' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('51' , '0051' , 'Firefly Bulb 7W' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('52' , '0052' , 'Firefly Bulb 11W' , '' , '1' , '1' , '' , '' , '135' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('53' , '0053' , 'Firefly Bulb 18W' , '' , '1' , '1' , '' , '' , '230' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('54' , '0054' , 'Electrical Tape (Small)' , '' , '1' , '1' , '' , '' , '20' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('55' , '0055' , 'Electrical Tape (Large)' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('56' , '0056' , 'Vulcaseal 75ml Bostick' , '' , '1' , '1' , '' , '' , '70' , '0' , '99' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('57' , '0057' , 'Elasto Seal' , '' , '1' , '1' , '' , '' , '65' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('58' , '0058' , 'Omni Single Switch' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('59' , '0059' , 'Omni Single Gang Outlet' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('60' , '0060' , 'Electrical Plug' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('61' , '0061' , 'Omni 2 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('62' , '0062' , 'Omni 3 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('63' , '0063' , 'Royu Double Switch' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('64' , '0064' , 'Royu Triple Switch' , '' , '1' , '1' , '' , '' , '175' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('65' , '0065' , 'Shuta Receptacle 2x2' , '' , '1' , '1' , '' , '' , '30' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('66' , '0066' , 'Cutting Disc (Scharf Brand)' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('67' , '0067' , 'FujiWeld Welding Rod' , '' , '1' , '1' , '' , '' , '160' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('68' , '0068' , 'China Welding Rod' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('69' , '0069' , 'PVC Door' , '' , '1' , '1' , '' , '' , '1550' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('70' , '0070' , 'PVC Elbow Atlanta #2' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('71' , '0071' , 'PVC Elbow Atlanta #1' , '' , '1' , '1' , '' , '' , '110' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('72' , '0072' , 'PVC Drain Master Elbow (Atlanta) 2x90' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('73' , '0073' , 'PVC Y 2x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('74' , '0074' , 'PVC Y 2x2  Cover (Atlanta)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('75' , '0075' , 'PVC 2" U-Trap (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('76' , '0076' , 'PVC TEE 4x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('77' , '0077' , 'PVC Elbow Ordinary #3 (Unimold)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('78' , '0078' , 'PVC Drain Matster Elbow (Atlanta) 3x45' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('79' , '0079' , 'PVC Elbow 4x90' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('80' , '0080' , 'Ninja Lum Corrugated #12' , '' , '1' , '1' , '' , '' , '475' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('81' , '0081' , 'Ninja Lum Corrugated #10' , '' , '1' , '1' , '' , '' , '380' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('82' , '0082' , 'Ninja Lum Corrugated #8' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('83' , '0083' , 'Ordinary Corrugated #12' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('84' , '0084' , 'Ordinary Corrugated #10' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('85' , '0085' , 'Ordinary Corrugated #8' , '' , '1' , '1' , '' , '' , '180' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('86' , '0086' , 'Boysen Quick Drying Enamel 1 Liter' , '' , '1' , '1' , '' , '' , '210' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('87' , '0087' , 'Lennox Blade' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('88' , '0088' , 'Hardiflex Nails' , '' , '1' , '1' , '' , '' , '120' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('1' , '0001' , 'Concrete Nail #1' , '' , '1' , '1' , '' , '' , '100' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('2' , '0002' , 'Liha #120' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('3' , '0003' , 'Mabuhay Cement Green' , '' , '1' , '1' , '' , '' , '190' , '185' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('4' , '0004' , 'Mabuhay Cement Red' , '' , '1' , '1' , '' , '' , '210' , '205' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('5' , '0005' , 'Apo Cement Blue' , '' , '1' , '1' , '' , '' , '235' , '230' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('6' , '0006' , 'Tile Adhesive' , '' , '1' , '1' , '' , '' , '310' , '305' , '98' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('7' , '0007' , 'Tile Grout' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('8' , '0008' , 'PVC Pipe #4 Atlanta' , '' , '1' , '1' , '' , '' , '400' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('9' , '0009' , 'PVC Pipe #3 Atlanta' , '' , '1' , '1' , '' , '' , '375' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('10' , '0010' , 'PVC Pipe #2' , '' , '1' , '1' , '' , '' , '200' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('11' , '0011' , 'Inayag' , '' , '1' , '1' , '' , '' , '55' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('12' , '0012' , 'River Sand' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('13' , '0013' , 'Gravel' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('14' , '0014' , '2x2x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('15' , '0015' , '2x2x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('16' , '0016' , '2x2x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('17' , '0017' , '2x3x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('18' , '0018' , '2x3x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('19' , '0019' , '2x3x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '155' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('20' , '0020' , '9MM Debar' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('21' , '0021' , '10MM Debar' , '' , '1' , '1' , '' , '' , '148' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('22' , '0022' , '12MM Debar' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('23' , '0023' , 'Gardner 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('24' , '0024' , 'Marine 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('25' , '0025' , 'Marine 1/2' , '' , '1' , '1' , '' , '' , '775' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('26' , '0026' , 'Marine 3/4' , '' , '1' , '1' , '' , '' , '1275' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('27' , '0027' , 'Tie Wire' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('28' , '0028' , 'Plastic Varnish' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('29' , '0029' , 'Timeout' , '' , '1' , '1' , '' , '' , '225' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('30' , '0030' , 'Clear Gloss Lacquer' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('31' , '0031' , 'Marine Epoxy  (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('32' , '0032' , 'Epoxy (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('33' , '0033' , 'Boysen Roof Gard' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('34' , '0034' , 'S-Blue 1/1/12' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('35' , '0035' , 'Marine Epoxy (Small)' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('36' , '0036' , 'Paint Thinner (Big)' , '' , '1' , '1' , '' , '' , '425' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('37' , '0037' , 'Clear Gloss Lacquer (Big)' , '' , '1' , '1' , '' , '' , '765' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('38' , '0038' , 'Sanding Sealer (Big)' , '' , '1' , '1' , '' , '' , '825' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('39' , '0039' , 'Tubular Door Knob (6881AB-ET)' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('40' , '0040' , 'Tubular Door Knob (60711SS-ET)' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('41' , '0041' , 'Hinge 3x3' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('42' , '0042' , 'Sanding Sealer (Small)' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('43' , '0043' , 'Lacquer Thinner' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('44' , '0044' , 'Paint Roller #4 Green' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('45' , '0045' , 'Rubber Gloves' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('46' , '0046' , 'Paint Roller #7 Green' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('47' , '0047' , 'Mini Roller (With handle) #4' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('48' , '0048' , 'Mini Roller (Without handle) #5' , '' , '1' , '1' , '' , '' , '35' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('49' , '0049' , 'Hinge (Nugen Brand) 3x3' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('50' , '0050' , 'Firefly Bulb 5W' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('51' , '0051' , 'Firefly Bulb 7W' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('52' , '0052' , 'Firefly Bulb 11W' , '' , '1' , '1' , '' , '' , '135' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('53' , '0053' , 'Firefly Bulb 18W' , '' , '1' , '1' , '' , '' , '230' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('54' , '0054' , 'Electrical Tape (Small)' , '' , '1' , '1' , '' , '' , '20' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('55' , '0055' , 'Electrical Tape (Large)' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('56' , '0056' , 'Vulcaseal 75ml Bostick' , '' , '1' , '1' , '' , '' , '70' , '0' , '99' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('57' , '0057' , 'Elasto Seal' , '' , '1' , '1' , '' , '' , '65' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('58' , '0058' , 'Omni Single Switch' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('59' , '0059' , 'Omni Single Gang Outlet' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('60' , '0060' , 'Electrical Plug' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('61' , '0061' , 'Omni 2 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('62' , '0062' , 'Omni 3 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('63' , '0063' , 'Royu Double Switch' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('64' , '0064' , 'Royu Triple Switch' , '' , '1' , '1' , '' , '' , '175' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('65' , '0065' , 'Shuta Receptacle 2x2' , '' , '1' , '1' , '' , '' , '30' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('66' , '0066' , 'Cutting Disc (Scharf Brand)' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('67' , '0067' , 'FujiWeld Welding Rod' , '' , '1' , '1' , '' , '' , '160' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('68' , '0068' , 'China Welding Rod' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('69' , '0069' , 'PVC Door' , '' , '1' , '1' , '' , '' , '1550' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('70' , '0070' , 'PVC Elbow Atlanta #2' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('71' , '0071' , 'PVC Elbow Atlanta #1' , '' , '1' , '1' , '' , '' , '110' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('72' , '0072' , 'PVC Drain Master Elbow (Atlanta) 2x90' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('73' , '0073' , 'PVC Y 2x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('74' , '0074' , 'PVC Y 2x2  Cover (Atlanta)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('75' , '0075' , 'PVC 2" U-Trap (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('76' , '0076' , 'PVC TEE 4x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('77' , '0077' , 'PVC Elbow Ordinary #3 (Unimold)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('78' , '0078' , 'PVC Drain Matster Elbow (Atlanta) 3x45' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('79' , '0079' , 'PVC Elbow 4x90' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('80' , '0080' , 'Ninja Lum Corrugated #12' , '' , '1' , '1' , '' , '' , '475' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('81' , '0081' , 'Ninja Lum Corrugated #10' , '' , '1' , '1' , '' , '' , '380' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('82' , '0082' , 'Ninja Lum Corrugated #8' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('83' , '0083' , 'Ordinary Corrugated #12' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('84' , '0084' , 'Ordinary Corrugated #10' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('85' , '0085' , 'Ordinary Corrugated #8' , '' , '1' , '1' , '' , '' , '180' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('86' , '0086' , 'Boysen Quick Drying Enamel 1 Liter' , '' , '1' , '1' , '' , '' , '210' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('87' , '0087' , 'Lennox Blade' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('88' , '0088' , 'Hardiflex Nails' , '' , '1' , '1' , '' , '' , '120' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('1' , '0001' , 'Concrete Nail #1' , '' , '1' , '1' , '' , '' , '100' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('2' , '0002' , 'Liha #120' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('3' , '0003' , 'Mabuhay Cement Green' , '' , '1' , '1' , '' , '' , '190' , '185' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('4' , '0004' , 'Mabuhay Cement Red' , '' , '1' , '1' , '' , '' , '210' , '205' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('5' , '0005' , 'Apo Cement Blue' , '' , '1' , '1' , '' , '' , '235' , '230' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('6' , '0006' , 'Tile Adhesive' , '' , '1' , '1' , '' , '' , '310' , '305' , '98' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('7' , '0007' , 'Tile Grout' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('8' , '0008' , 'PVC Pipe #4 Atlanta' , '' , '1' , '1' , '' , '' , '400' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('9' , '0009' , 'PVC Pipe #3 Atlanta' , '' , '1' , '1' , '' , '' , '375' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('10' , '0010' , 'PVC Pipe #2' , '' , '1' , '1' , '' , '' , '200' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('11' , '0011' , 'Inayag' , '' , '1' , '1' , '' , '' , '55' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('12' , '0012' , 'River Sand' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('13' , '0013' , 'Gravel' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('14' , '0014' , '2x2x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('15' , '0015' , '2x2x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('16' , '0016' , '2x2x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('17' , '0017' , '2x3x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('18' , '0018' , '2x3x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('19' , '0019' , '2x3x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '155' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('20' , '0020' , '9MM Debar' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('21' , '0021' , '10MM Debar' , '' , '1' , '1' , '' , '' , '148' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('22' , '0022' , '12MM Debar' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('23' , '0023' , 'Gardner 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('24' , '0024' , 'Marine 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('25' , '0025' , 'Marine 1/2' , '' , '1' , '1' , '' , '' , '775' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('26' , '0026' , 'Marine 3/4' , '' , '1' , '1' , '' , '' , '1275' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('27' , '0027' , 'Tie Wire' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('28' , '0028' , 'Plastic Varnish' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('29' , '0029' , 'Timeout' , '' , '1' , '1' , '' , '' , '225' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('30' , '0030' , 'Clear Gloss Lacquer' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('31' , '0031' , 'Marine Epoxy  (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('32' , '0032' , 'Epoxy (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('33' , '0033' , 'Boysen Roof Gard' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('34' , '0034' , 'S-Blue 1/1/12' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('35' , '0035' , 'Marine Epoxy (Small)' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('36' , '0036' , 'Paint Thinner (Big)' , '' , '1' , '1' , '' , '' , '425' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('37' , '0037' , 'Clear Gloss Lacquer (Big)' , '' , '1' , '1' , '' , '' , '765' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('38' , '0038' , 'Sanding Sealer (Big)' , '' , '1' , '1' , '' , '' , '825' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('39' , '0039' , 'Tubular Door Knob (6881AB-ET)' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('40' , '0040' , 'Tubular Door Knob (60711SS-ET)' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('41' , '0041' , 'Hinge 3x3' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('42' , '0042' , 'Sanding Sealer (Small)' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('43' , '0043' , 'Lacquer Thinner' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('44' , '0044' , 'Paint Roller #4 Green' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('45' , '0045' , 'Rubber Gloves' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('46' , '0046' , 'Paint Roller #7 Green' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('47' , '0047' , 'Mini Roller (With handle) #4' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('48' , '0048' , 'Mini Roller (Without handle) #5' , '' , '1' , '1' , '' , '' , '35' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('49' , '0049' , 'Hinge (Nugen Brand) 3x3' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('50' , '0050' , 'Firefly Bulb 5W' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('51' , '0051' , 'Firefly Bulb 7W' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('52' , '0052' , 'Firefly Bulb 11W' , '' , '1' , '1' , '' , '' , '135' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('53' , '0053' , 'Firefly Bulb 18W' , '' , '1' , '1' , '' , '' , '230' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('54' , '0054' , 'Electrical Tape (Small)' , '' , '1' , '1' , '' , '' , '20' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('55' , '0055' , 'Electrical Tape (Large)' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('56' , '0056' , 'Vulcaseal 75ml Bostick' , '' , '1' , '1' , '' , '' , '70' , '0' , '99' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('57' , '0057' , 'Elasto Seal' , '' , '1' , '1' , '' , '' , '65' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('58' , '0058' , 'Omni Single Switch' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('59' , '0059' , 'Omni Single Gang Outlet' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('60' , '0060' , 'Electrical Plug' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('61' , '0061' , 'Omni 2 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('62' , '0062' , 'Omni 3 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('63' , '0063' , 'Royu Double Switch' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('64' , '0064' , 'Royu Triple Switch' , '' , '1' , '1' , '' , '' , '175' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('65' , '0065' , 'Shuta Receptacle 2x2' , '' , '1' , '1' , '' , '' , '30' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('66' , '0066' , 'Cutting Disc (Scharf Brand)' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('67' , '0067' , 'FujiWeld Welding Rod' , '' , '1' , '1' , '' , '' , '160' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('68' , '0068' , 'China Welding Rod' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('69' , '0069' , 'PVC Door' , '' , '1' , '1' , '' , '' , '1550' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('70' , '0070' , 'PVC Elbow Atlanta #2' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('71' , '0071' , 'PVC Elbow Atlanta #1' , '' , '1' , '1' , '' , '' , '110' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('72' , '0072' , 'PVC Drain Master Elbow (Atlanta) 2x90' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('73' , '0073' , 'PVC Y 2x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('74' , '0074' , 'PVC Y 2x2  Cover (Atlanta)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('75' , '0075' , 'PVC 2" U-Trap (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('76' , '0076' , 'PVC TEE 4x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('77' , '0077' , 'PVC Elbow Ordinary #3 (Unimold)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('78' , '0078' , 'PVC Drain Matster Elbow (Atlanta) 3x45' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('79' , '0079' , 'PVC Elbow 4x90' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('80' , '0080' , 'Ninja Lum Corrugated #12' , '' , '1' , '1' , '' , '' , '475' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('81' , '0081' , 'Ninja Lum Corrugated #10' , '' , '1' , '1' , '' , '' , '380' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('82' , '0082' , 'Ninja Lum Corrugated #8' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('83' , '0083' , 'Ordinary Corrugated #12' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('84' , '0084' , 'Ordinary Corrugated #10' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('85' , '0085' , 'Ordinary Corrugated #8' , '' , '1' , '1' , '' , '' , '180' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('86' , '0086' , 'Boysen Quick Drying Enamel 1 Liter' , '' , '1' , '1' , '' , '' , '210' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('87' , '0087' , 'Lennox Blade' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('88' , '0088' , 'Hardiflex Nails' , '' , '1' , '1' , '' , '' , '120' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('1' , '0001' , 'Concrete Nail #1' , '' , '1' , '1' , '' , '' , '100' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('2' , '0002' , 'Liha #120' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('3' , '0003' , 'Mabuhay Cement Green' , '' , '1' , '1' , '' , '' , '190' , '185' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('4' , '0004' , 'Mabuhay Cement Red' , '' , '1' , '1' , '' , '' , '210' , '205' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('5' , '0005' , 'Apo Cement Blue' , '' , '1' , '1' , '' , '' , '235' , '230' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('6' , '0006' , 'Tile Adhesive' , '' , '1' , '1' , '' , '' , '310' , '305' , '98' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('7' , '0007' , 'Tile Grout' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('8' , '0008' , 'PVC Pipe #4 Atlanta' , '' , '1' , '1' , '' , '' , '400' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('9' , '0009' , 'PVC Pipe #3 Atlanta' , '' , '1' , '1' , '' , '' , '375' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('10' , '0010' , 'PVC Pipe #2' , '' , '1' , '1' , '' , '' , '200' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('11' , '0011' , 'Inayag' , '' , '1' , '1' , '' , '' , '55' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('12' , '0012' , 'River Sand' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('13' , '0013' , 'Gravel' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('14' , '0014' , '2x2x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('15' , '0015' , '2x2x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('16' , '0016' , '2x2x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('17' , '0017' , '2x3x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('18' , '0018' , '2x3x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('19' , '0019' , '2x3x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '155' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('20' , '0020' , '9MM Debar' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('21' , '0021' , '10MM Debar' , '' , '1' , '1' , '' , '' , '148' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('22' , '0022' , '12MM Debar' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('23' , '0023' , 'Gardner 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('24' , '0024' , 'Marine 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('25' , '0025' , 'Marine 1/2' , '' , '1' , '1' , '' , '' , '775' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('26' , '0026' , 'Marine 3/4' , '' , '1' , '1' , '' , '' , '1275' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('27' , '0027' , 'Tie Wire' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('28' , '0028' , 'Plastic Varnish' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('29' , '0029' , 'Timeout' , '' , '1' , '1' , '' , '' , '225' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('30' , '0030' , 'Clear Gloss Lacquer' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('31' , '0031' , 'Marine Epoxy  (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('32' , '0032' , 'Epoxy (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('33' , '0033' , 'Boysen Roof Gard' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('34' , '0034' , 'S-Blue 1/1/12' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('35' , '0035' , 'Marine Epoxy (Small)' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('36' , '0036' , 'Paint Thinner (Big)' , '' , '1' , '1' , '' , '' , '425' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('37' , '0037' , 'Clear Gloss Lacquer (Big)' , '' , '1' , '1' , '' , '' , '765' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('38' , '0038' , 'Sanding Sealer (Big)' , '' , '1' , '1' , '' , '' , '825' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('39' , '0039' , 'Tubular Door Knob (6881AB-ET)' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('40' , '0040' , 'Tubular Door Knob (60711SS-ET)' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('41' , '0041' , 'Hinge 3x3' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('42' , '0042' , 'Sanding Sealer (Small)' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('43' , '0043' , 'Lacquer Thinner' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('44' , '0044' , 'Paint Roller #4 Green' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('45' , '0045' , 'Rubber Gloves' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('46' , '0046' , 'Paint Roller #7 Green' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('47' , '0047' , 'Mini Roller (With handle) #4' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('48' , '0048' , 'Mini Roller (Without handle) #5' , '' , '1' , '1' , '' , '' , '35' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('49' , '0049' , 'Hinge (Nugen Brand) 3x3' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('50' , '0050' , 'Firefly Bulb 5W' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('51' , '0051' , 'Firefly Bulb 7W' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('52' , '0052' , 'Firefly Bulb 11W' , '' , '1' , '1' , '' , '' , '135' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('53' , '0053' , 'Firefly Bulb 18W' , '' , '1' , '1' , '' , '' , '230' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('54' , '0054' , 'Electrical Tape (Small)' , '' , '1' , '1' , '' , '' , '20' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('55' , '0055' , 'Electrical Tape (Large)' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('56' , '0056' , 'Vulcaseal 75ml Bostick' , '' , '1' , '1' , '' , '' , '70' , '0' , '99' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('57' , '0057' , 'Elasto Seal' , '' , '1' , '1' , '' , '' , '65' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('58' , '0058' , 'Omni Single Switch' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('59' , '0059' , 'Omni Single Gang Outlet' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('60' , '0060' , 'Electrical Plug' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('61' , '0061' , 'Omni 2 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('62' , '0062' , 'Omni 3 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('63' , '0063' , 'Royu Double Switch' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('64' , '0064' , 'Royu Triple Switch' , '' , '1' , '1' , '' , '' , '175' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('65' , '0065' , 'Shuta Receptacle 2x2' , '' , '1' , '1' , '' , '' , '30' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('66' , '0066' , 'Cutting Disc (Scharf Brand)' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('67' , '0067' , 'FujiWeld Welding Rod' , '' , '1' , '1' , '' , '' , '160' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('68' , '0068' , 'China Welding Rod' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('69' , '0069' , 'PVC Door' , '' , '1' , '1' , '' , '' , '1550' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('70' , '0070' , 'PVC Elbow Atlanta #2' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('71' , '0071' , 'PVC Elbow Atlanta #1' , '' , '1' , '1' , '' , '' , '110' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('72' , '0072' , 'PVC Drain Master Elbow (Atlanta) 2x90' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('73' , '0073' , 'PVC Y 2x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('74' , '0074' , 'PVC Y 2x2  Cover (Atlanta)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('75' , '0075' , 'PVC 2" U-Trap (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('76' , '0076' , 'PVC TEE 4x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('77' , '0077' , 'PVC Elbow Ordinary #3 (Unimold)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('78' , '0078' , 'PVC Drain Matster Elbow (Atlanta) 3x45' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('79' , '0079' , 'PVC Elbow 4x90' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('80' , '0080' , 'Ninja Lum Corrugated #12' , '' , '1' , '1' , '' , '' , '475' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('81' , '0081' , 'Ninja Lum Corrugated #10' , '' , '1' , '1' , '' , '' , '380' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('82' , '0082' , 'Ninja Lum Corrugated #8' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('83' , '0083' , 'Ordinary Corrugated #12' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('84' , '0084' , 'Ordinary Corrugated #10' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('85' , '0085' , 'Ordinary Corrugated #8' , '' , '1' , '1' , '' , '' , '180' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('86' , '0086' , 'Boysen Quick Drying Enamel 1 Liter' , '' , '1' , '1' , '' , '' , '210' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('87' , '0087' , 'Lennox Blade' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('88' , '0088' , 'Hardiflex Nails' , '' , '1' , '1' , '' , '' , '120' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('1' , '0001' , 'Concrete Nail #1' , '' , '1' , '1' , '' , '' , '100' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('2' , '0002' , 'Liha #120' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('3' , '0003' , 'Mabuhay Cement Green' , '' , '1' , '1' , '' , '' , '190' , '185' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('4' , '0004' , 'Mabuhay Cement Red' , '' , '1' , '1' , '' , '' , '210' , '205' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('5' , '0005' , 'Apo Cement Blue' , '' , '1' , '1' , '' , '' , '235' , '230' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('6' , '0006' , 'Tile Adhesive' , '' , '1' , '1' , '' , '' , '310' , '305' , '98' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('7' , '0007' , 'Tile Grout' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('8' , '0008' , 'PVC Pipe #4 Atlanta' , '' , '1' , '1' , '' , '' , '400' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('9' , '0009' , 'PVC Pipe #3 Atlanta' , '' , '1' , '1' , '' , '' , '375' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('10' , '0010' , 'PVC Pipe #2' , '' , '1' , '1' , '' , '' , '200' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('11' , '0011' , 'Inayag' , '' , '1' , '1' , '' , '' , '55' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('12' , '0012' , 'River Sand' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('13' , '0013' , 'Gravel' , '' , '1' , '1' , '' , '' , '40' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('14' , '0014' , '2x2x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('15' , '0015' , '2x2x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('16' , '0016' , '2x2x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('17' , '0017' , '2x3x10 Coco Lumber' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('18' , '0018' , '2x3x8 Coco Lumber' , '' , '1' , '1' , '' , '' , '105' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('19' , '0019' , '2x3x12 Coco Lumber' , '' , '1' , '1' , '' , '' , '155' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('20' , '0020' , '9MM Debar' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('21' , '0021' , '10MM Debar' , '' , '1' , '1' , '' , '' , '148' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('22' , '0022' , '12MM Debar' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('23' , '0023' , 'Gardner 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('24' , '0024' , 'Marine 1/4' , '' , '1' , '1' , '' , '' , '420' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('25' , '0025' , 'Marine 1/2' , '' , '1' , '1' , '' , '' , '775' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('26' , '0026' , 'Marine 3/4' , '' , '1' , '1' , '' , '' , '1275' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('27' , '0027' , 'Tie Wire' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('28' , '0028' , 'Plastic Varnish' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('29' , '0029' , 'Timeout' , '' , '1' , '1' , '' , '' , '225' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('30' , '0030' , 'Clear Gloss Lacquer' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('31' , '0031' , 'Marine Epoxy  (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('32' , '0032' , 'Epoxy (Big)' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('33' , '0033' , 'Boysen Roof Gard' , '' , '1' , '1' , '' , '' , '750' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('34' , '0034' , 'S-Blue 1/1/12' , '' , '1' , '1' , '' , '' , '80' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('35' , '0035' , 'Marine Epoxy (Small)' , '' , '1' , '1' , '' , '' , '130' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('36' , '0036' , 'Paint Thinner (Big)' , '' , '1' , '1' , '' , '' , '425' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('37' , '0037' , 'Clear Gloss Lacquer (Big)' , '' , '1' , '1' , '' , '' , '765' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('38' , '0038' , 'Sanding Sealer (Big)' , '' , '1' , '1' , '' , '' , '825' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('39' , '0039' , 'Tubular Door Knob (6881AB-ET)' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('40' , '0040' , 'Tubular Door Knob (60711SS-ET)' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('41' , '0041' , 'Hinge 3x3' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('42' , '0042' , 'Sanding Sealer (Small)' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('43' , '0043' , 'Lacquer Thinner' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('44' , '0044' , 'Paint Roller #4 Green' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('45' , '0045' , 'Rubber Gloves' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('46' , '0046' , 'Paint Roller #7 Green' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('47' , '0047' , 'Mini Roller (With handle) #4' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('48' , '0048' , 'Mini Roller (Without handle) #5' , '' , '1' , '1' , '' , '' , '35' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('49' , '0049' , 'Hinge (Nugen Brand) 3x3' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('50' , '0050' , 'Firefly Bulb 5W' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('51' , '0051' , 'Firefly Bulb 7W' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('52' , '0052' , 'Firefly Bulb 11W' , '' , '1' , '1' , '' , '' , '135' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('53' , '0053' , 'Firefly Bulb 18W' , '' , '1' , '1' , '' , '' , '230' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('54' , '0054' , 'Electrical Tape (Small)' , '' , '1' , '1' , '' , '' , '20' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('55' , '0055' , 'Electrical Tape (Large)' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('56' , '0056' , 'Vulcaseal 75ml Bostick' , '' , '1' , '1' , '' , '' , '70' , '0' , '99' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('57' , '0057' , 'Elasto Seal' , '' , '1' , '1' , '' , '' , '65' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('58' , '0058' , 'Omni Single Switch' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('59' , '0059' , 'Omni Single Gang Outlet' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('60' , '0060' , 'Electrical Plug' , '' , '1' , '1' , '' , '' , '60' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('61' , '0061' , 'Omni 2 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '75' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('62' , '0062' , 'Omni 3 Gang Extension Outlet' , '' , '1' , '1' , '' , '' , '95' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('63' , '0063' , 'Royu Double Switch' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('64' , '0064' , 'Royu Triple Switch' , '' , '1' , '1' , '' , '' , '175' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('65' , '0065' , 'Shuta Receptacle 2x2' , '' , '1' , '1' , '' , '' , '30' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('66' , '0066' , 'Cutting Disc (Scharf Brand)' , '' , '1' , '1' , '' , '' , '25' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('67' , '0067' , 'FujiWeld Welding Rod' , '' , '1' , '1' , '' , '' , '160' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('68' , '0068' , 'China Welding Rod' , '' , '1' , '1' , '' , '' , '90' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('69' , '0069' , 'PVC Door' , '' , '1' , '1' , '' , '' , '1550' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('70' , '0070' , 'PVC Elbow Atlanta #2' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('71' , '0071' , 'PVC Elbow Atlanta #1' , '' , '1' , '1' , '' , '' , '110' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('72' , '0072' , 'PVC Drain Master Elbow (Atlanta) 2x90' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('73' , '0073' , 'PVC Y 2x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '70' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('74' , '0074' , 'PVC Y 2x2  Cover (Atlanta)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('75' , '0075' , 'PVC 2" U-Trap (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('76' , '0076' , 'PVC TEE 4x2 (Atlanta)' , '' , '1' , '1' , '' , '' , '185' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('77' , '0077' , 'PVC Elbow Ordinary #3 (Unimold)' , '' , '1' , '1' , '' , '' , '45' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('78' , '0078' , 'PVC Drain Matster Elbow (Atlanta) 3x45' , '' , '1' , '1' , '' , '' , '85' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('79' , '0079' , 'PVC Elbow 4x90' , '' , '1' , '1' , '' , '' , '125' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('80' , '0080' , 'Ninja Lum Corrugated #12' , '' , '1' , '1' , '' , '' , '475' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('81' , '0081' , 'Ninja Lum Corrugated #10' , '' , '1' , '1' , '' , '' , '380' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('82' , '0082' , 'Ninja Lum Corrugated #8' , '' , '1' , '1' , '' , '' , '300' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('83' , '0083' , 'Ordinary Corrugated #12' , '' , '1' , '1' , '' , '' , '280' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('84' , '0084' , 'Ordinary Corrugated #10' , '' , '1' , '1' , '' , '' , '220' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('85' , '0085' , 'Ordinary Corrugated #8' , '' , '1' , '1' , '' , '' , '180' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('86' , '0086' , 'Boysen Quick Drying Enamel 1 Liter' , '' , '1' , '1' , '' , '' , '210' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('87' , '0087' , 'Lennox Blade' , '' , '1' , '1' , '' , '' , '50' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');
INSERT INTO product_list VALUES('88' , '0088' , 'Hardiflex Nails' , '' , '1' , '1' , '' , '' , '120' , '0' , '100' , '' , '2025-06-21 20:28:58' , '2025-06-21 20:28:58');


CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`,`scope`),
  KEY `roles_scope_index` (`scope`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;  
 
INSERT INTO roles VALUES('1' , 'administrator' , '' , '' , '2018-08-07 18:32:32' , '2018-08-07 18:32:32' , '');
INSERT INTO roles VALUES('2' , 'pos_manager' , '' , '' , '2018-08-07 18:35:25' , '2019-01-07 02:46:39' , '');
INSERT INTO roles VALUES('3' , 'cashier' , 'Cashier' , '' , '2019-03-12 01:35:58' , '2019-03-12 01:35:58' , '');
INSERT INTO roles VALUES('4' , 'admin' , 'Admin' , '' , '2025-06-21 12:20:25' , '2025-06-21 12:20:25' , '');
INSERT INTO roles VALUES('1' , 'administrator' , '' , '' , '2018-08-07 18:32:32' , '2018-08-07 18:32:32' , '');
INSERT INTO roles VALUES('2' , 'pos_manager' , '' , '' , '2018-08-07 18:35:25' , '2019-01-07 02:46:39' , '');
INSERT INTO roles VALUES('3' , 'cashier' , 'Cashier' , '' , '2019-03-12 01:35:58' , '2019-03-12 01:35:58' , '');
INSERT INTO roles VALUES('4' , 'admin' , 'Admin' , '' , '2025-06-21 12:20:25' , '2025-06-21 12:20:25' , '');
INSERT INTO roles VALUES('1' , 'administrator' , '' , '' , '2018-08-07 18:32:32' , '2018-08-07 18:32:32' , '');
INSERT INTO roles VALUES('2' , 'pos_manager' , '' , '' , '2018-08-07 18:35:25' , '2019-01-07 02:46:39' , '');
INSERT INTO roles VALUES('3' , 'cashier' , 'Cashier' , '' , '2019-03-12 01:35:58' , '2019-03-12 01:35:58' , '');
INSERT INTO roles VALUES('4' , 'admin' , 'Admin' , '' , '2025-06-21 12:20:25' , '2025-06-21 12:20:25' , '');
INSERT INTO roles VALUES('1' , 'administrator' , '' , '' , '2018-08-07 18:32:32' , '2018-08-07 18:32:32' , '');
INSERT INTO roles VALUES('2' , 'pos_manager' , '' , '' , '2018-08-07 18:35:25' , '2019-01-07 02:46:39' , '');
INSERT INTO roles VALUES('3' , 'cashier' , 'Cashier' , '' , '2019-03-12 01:35:58' , '2019-03-12 01:35:58' , '');
INSERT INTO roles VALUES('4' , 'admin' , 'Admin' , '' , '2025-06-21 12:20:25' , '2025-06-21 12:20:25' , '');
INSERT INTO roles VALUES('1' , 'administrator' , '' , '' , '2018-08-07 18:32:32' , '2018-08-07 18:32:32' , '');
INSERT INTO roles VALUES('2' , 'pos_manager' , '' , '' , '2018-08-07 18:35:25' , '2019-01-07 02:46:39' , '');
INSERT INTO roles VALUES('3' , 'cashier' , 'Cashier' , '' , '2019-03-12 01:35:58' , '2019-03-12 01:35:58' , '');
INSERT INTO roles VALUES('4' , 'admin' , 'Admin' , '' , '2025-06-21 12:20:25' , '2025-06-21 12:20:25' , '');
INSERT INTO roles VALUES('1' , 'administrator' , '' , '' , '2018-08-07 18:32:32' , '2018-08-07 18:32:32' , '');
INSERT INTO roles VALUES('2' , 'pos_manager' , '' , '' , '2018-08-07 18:35:25' , '2019-01-07 02:46:39' , '');
INSERT INTO roles VALUES('3' , 'cashier' , 'Cashier' , '' , '2019-03-12 01:35:58' , '2019-03-12 01:35:58' , '');
INSERT INTO roles VALUES('4' , 'admin' , 'Admin' , '' , '2025-06-21 12:20:25' , '2025-06-21 12:20:25' , '');
INSERT INTO roles VALUES('1' , 'administrator' , '' , '' , '2018-08-07 18:32:32' , '2018-08-07 18:32:32' , '');
INSERT INTO roles VALUES('2' , 'pos_manager' , '' , '' , '2018-08-07 18:35:25' , '2019-01-07 02:46:39' , '');
INSERT INTO roles VALUES('3' , 'cashier' , 'Cashier' , '' , '2019-03-12 01:35:58' , '2019-03-12 01:35:58' , '');
INSERT INTO roles VALUES('4' , 'admin' , 'Admin' , '' , '2025-06-21 12:20:25' , '2025-06-21 12:20:25' , '');


CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;  
 
INSERT INTO sessions VALUES('WnBCNyZkZjX4uCzNqwmjYHg6iwJsh0DB0Mq9ndGT' , '1' , '127.0.0.1' , 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36' , 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiT0tOVm02Szd4WUh5Y0dQT1VDMTBEQmlWUmduNTZ6b2hvUTRvaEs4VSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi91dGlscy9kYXRhYmFzZS1iYWNrdXBzIjt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzUwNTA4MDQwO31zOjU2OiJXbkJDTnlaa1pqWDR1Q3pOcXdtallIZzZpd0pzaDBEQjBNcTluZEdUX2NhcnRfY29uZGl0aW9ucyI7YTowOnt9fQ==' , '1750510677');
INSERT INTO sessions VALUES('WnBCNyZkZjX4uCzNqwmjYHg6iwJsh0DB0Mq9ndGT' , '1' , '127.0.0.1' , 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36' , 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiT0tOVm02Szd4WUh5Y0dQT1VDMTBEQmlWUmduNTZ6b2hvUTRvaEs4VSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi91dGlscy9kYXRhYmFzZS1iYWNrdXBzIjt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzUwNTA4MDQwO31zOjU2OiJXbkJDTnlaa1pqWDR1Q3pOcXdtallIZzZpd0pzaDBEQjBNcTluZEdUX2NhcnRfY29uZGl0aW9ucyI7YTowOnt9fQ==' , '1750510677');
INSERT INTO sessions VALUES('WnBCNyZkZjX4uCzNqwmjYHg6iwJsh0DB0Mq9ndGT' , '1' , '127.0.0.1' , 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36' , 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiT0tOVm02Szd4WUh5Y0dQT1VDMTBEQmlWUmduNTZ6b2hvUTRvaEs4VSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi91dGlscy9kYXRhYmFzZS1iYWNrdXBzIjt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzUwNTA4MDQwO31zOjU2OiJXbkJDTnlaa1pqWDR1Q3pOcXdtallIZzZpd0pzaDBEQjBNcTluZEdUX2NhcnRfY29uZGl0aW9ucyI7YTowOnt9fQ==' , '1750510677');
INSERT INTO sessions VALUES('WnBCNyZkZjX4uCzNqwmjYHg6iwJsh0DB0Mq9ndGT' , '1' , '127.0.0.1' , 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36' , 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiT0tOVm02Szd4WUh5Y0dQT1VDMTBEQmlWUmduNTZ6b2hvUTRvaEs4VSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi91dGlscy9kYXRhYmFzZS1iYWNrdXBzIjt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzUwNTA4MDQwO31zOjU2OiJXbkJDTnlaa1pqWDR1Q3pOcXdtallIZzZpd0pzaDBEQjBNcTluZEdUX2NhcnRfY29uZGl0aW9ucyI7YTowOnt9fQ==' , '1750510677');
INSERT INTO sessions VALUES('WnBCNyZkZjX4uCzNqwmjYHg6iwJsh0DB0Mq9ndGT' , '1' , '127.0.0.1' , 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36' , 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiT0tOVm02Szd4WUh5Y0dQT1VDMTBEQmlWUmduNTZ6b2hvUTRvaEs4VSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi91dGlscy9kYXRhYmFzZS1iYWNrdXBzIjt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzUwNTA4MDQwO31zOjU2OiJXbkJDTnlaa1pqWDR1Q3pOcXdtallIZzZpd0pzaDBEQjBNcTluZEdUX2NhcnRfY29uZGl0aW9ucyI7YTowOnt9fQ==' , '1750510677');
INSERT INTO sessions VALUES('WnBCNyZkZjX4uCzNqwmjYHg6iwJsh0DB0Mq9ndGT' , '1' , '127.0.0.1' , 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36' , 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiT0tOVm02Szd4WUh5Y0dQT1VDMTBEQmlWUmduNTZ6b2hvUTRvaEs4VSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi91dGlscy9kYXRhYmFzZS1iYWNrdXBzIjt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzUwNTA4MDQwO31zOjU2OiJXbkJDTnlaa1pqWDR1Q3pOcXdtallIZzZpd0pzaDBEQjBNcTluZEdUX2NhcnRfY29uZGl0aW9ucyI7YTowOnt9fQ==' , '1750510677');


CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(100) NOT NULL,
  `supplier_address` varchar(255) DEFAULT NULL,
  `supplier_contact` varchar(255) DEFAULT NULL,
  `supplier_email` varchar(200) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;  
 


CREATE TABLE `transactions` (
  `transaction_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_or_number` varchar(50) NOT NULL,
  `transaction_date` date NOT NULL,
  `customer_info` varchar(255) NOT NULL,
  `contact_number` varchar(100) DEFAULT NULL,
  `customer_address` text DEFAULT NULL,
  `transaction_notes` text DEFAULT NULL,
  `amount_tendered` double NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`transaction_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;  
 
INSERT INTO transactions VALUES('1' , '06-21-0001' , '2025-06-21' , 'Cust #2' , '0' , 'Sandingan Bohol' , '' , '700' , 'cash' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO transactions VALUES('1' , '06-21-0001' , '2025-06-21' , 'Cust #2' , '0' , 'Sandingan Bohol' , '' , '700' , 'cash' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO transactions VALUES('1' , '06-21-0001' , '2025-06-21' , 'Cust #2' , '0' , 'Sandingan Bohol' , '' , '700' , 'cash' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO transactions VALUES('1' , '06-21-0001' , '2025-06-21' , 'Cust #2' , '0' , 'Sandingan Bohol' , '' , '700' , 'cash' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO transactions VALUES('1' , '06-21-0001' , '2025-06-21' , 'Cust #2' , '0' , 'Sandingan Bohol' , '' , '700' , 'cash' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO transactions VALUES('1' , '06-21-0001' , '2025-06-21' , 'Cust #2' , '0' , 'Sandingan Bohol' , '' , '700' , 'cash' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO transactions VALUES('1' , '06-21-0001' , '2025-06-21' , 'Cust #2' , '0' , 'Sandingan Bohol' , '' , '700' , 'cash' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO transactions VALUES('1' , '06-21-0001' , '2025-06-21' , 'Cust #2' , '0' , 'Sandingan Bohol' , '' , '700' , 'cash' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO transactions VALUES('1' , '06-21-0001' , '2025-06-21' , 'Cust #2' , '0' , 'Sandingan Bohol' , '' , '700' , 'cash' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO transactions VALUES('1' , '06-21-0001' , '2025-06-21' , 'Cust #2' , '0' , 'Sandingan Bohol' , '' , '700' , 'cash' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');
INSERT INTO transactions VALUES('1' , '06-21-0001' , '2025-06-21' , 'Cust #2' , '0' , 'Sandingan Bohol' , '' , '700' , 'cash' , '2025-06-21 12:41:20' , '2025-06-21 12:41:20');


CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;  
 
INSERT INTO users VALUES('1' , 'Admin' , 'admin@admin.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'IcJ8YdD2itq1bPcLRbIzMP37IPdJleFwkObs8ktvyYlo7iGxJ2wxew2gR9K0' , '2018-08-07 18:32:32' , '2018-08-07 18:32:32');
INSERT INTO users VALUES('2' , 'John Hoe' , 'john_hoe@mail.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'XbbXt3nbRUw1iiDxNUQgROrgHFrM2b6R832BdFrq2XKfmaD4ZhnujhQ6ZlZf' , '2018-08-07 18:36:08' , '2018-08-07 18:36:08');
INSERT INTO users VALUES('3' , 'Kel Novi' , 'kelnovi@mail.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'H6N8Q6ErjxqoT6rT9ez9ME494UE4sCb24oXU0q9YpIEOV69AGc2TQCDdHMus' , '2019-02-20 01:57:08' , '2019-02-20 01:57:08');
INSERT INTO users VALUES('4' , 'Novi Cashier' , 'novi@cashier.com' , '' , '$2y$10$mR9.Kt/9rAOdMMx9FQZuWOyFt7KK4u9/ZRy9xKX2qBuKGDBUTg0Lq' , '6rdBBMYdpHjNZOkOLPqBWcuNAVHcUEBSvGlUB6a6xOVkALig01rhjfdPXcW2' , '2019-03-12 01:37:22' , '2019-03-12 18:49:28');
INSERT INTO users VALUES('1' , 'Admin' , 'admin@admin.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'IcJ8YdD2itq1bPcLRbIzMP37IPdJleFwkObs8ktvyYlo7iGxJ2wxew2gR9K0' , '2018-08-07 18:32:32' , '2018-08-07 18:32:32');
INSERT INTO users VALUES('2' , 'John Hoe' , 'john_hoe@mail.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'XbbXt3nbRUw1iiDxNUQgROrgHFrM2b6R832BdFrq2XKfmaD4ZhnujhQ6ZlZf' , '2018-08-07 18:36:08' , '2018-08-07 18:36:08');
INSERT INTO users VALUES('3' , 'Kel Novi' , 'kelnovi@mail.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'H6N8Q6ErjxqoT6rT9ez9ME494UE4sCb24oXU0q9YpIEOV69AGc2TQCDdHMus' , '2019-02-20 01:57:08' , '2019-02-20 01:57:08');
INSERT INTO users VALUES('4' , 'Novi Cashier' , 'novi@cashier.com' , '' , '$2y$10$mR9.Kt/9rAOdMMx9FQZuWOyFt7KK4u9/ZRy9xKX2qBuKGDBUTg0Lq' , '6rdBBMYdpHjNZOkOLPqBWcuNAVHcUEBSvGlUB6a6xOVkALig01rhjfdPXcW2' , '2019-03-12 01:37:22' , '2019-03-12 18:49:28');
INSERT INTO users VALUES('1' , 'Admin' , 'admin@admin.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'IcJ8YdD2itq1bPcLRbIzMP37IPdJleFwkObs8ktvyYlo7iGxJ2wxew2gR9K0' , '2018-08-07 18:32:32' , '2018-08-07 18:32:32');
INSERT INTO users VALUES('2' , 'John Hoe' , 'john_hoe@mail.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'XbbXt3nbRUw1iiDxNUQgROrgHFrM2b6R832BdFrq2XKfmaD4ZhnujhQ6ZlZf' , '2018-08-07 18:36:08' , '2018-08-07 18:36:08');
INSERT INTO users VALUES('3' , 'Kel Novi' , 'kelnovi@mail.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'H6N8Q6ErjxqoT6rT9ez9ME494UE4sCb24oXU0q9YpIEOV69AGc2TQCDdHMus' , '2019-02-20 01:57:08' , '2019-02-20 01:57:08');
INSERT INTO users VALUES('4' , 'Novi Cashier' , 'novi@cashier.com' , '' , '$2y$10$mR9.Kt/9rAOdMMx9FQZuWOyFt7KK4u9/ZRy9xKX2qBuKGDBUTg0Lq' , '6rdBBMYdpHjNZOkOLPqBWcuNAVHcUEBSvGlUB6a6xOVkALig01rhjfdPXcW2' , '2019-03-12 01:37:22' , '2019-03-12 18:49:28');
INSERT INTO users VALUES('1' , 'Admin' , 'admin@admin.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'IcJ8YdD2itq1bPcLRbIzMP37IPdJleFwkObs8ktvyYlo7iGxJ2wxew2gR9K0' , '2018-08-07 18:32:32' , '2018-08-07 18:32:32');
INSERT INTO users VALUES('2' , 'John Hoe' , 'john_hoe@mail.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'XbbXt3nbRUw1iiDxNUQgROrgHFrM2b6R832BdFrq2XKfmaD4ZhnujhQ6ZlZf' , '2018-08-07 18:36:08' , '2018-08-07 18:36:08');
INSERT INTO users VALUES('3' , 'Kel Novi' , 'kelnovi@mail.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'H6N8Q6ErjxqoT6rT9ez9ME494UE4sCb24oXU0q9YpIEOV69AGc2TQCDdHMus' , '2019-02-20 01:57:08' , '2019-02-20 01:57:08');
INSERT INTO users VALUES('4' , 'Novi Cashier' , 'novi@cashier.com' , '' , '$2y$10$mR9.Kt/9rAOdMMx9FQZuWOyFt7KK4u9/ZRy9xKX2qBuKGDBUTg0Lq' , '6rdBBMYdpHjNZOkOLPqBWcuNAVHcUEBSvGlUB6a6xOVkALig01rhjfdPXcW2' , '2019-03-12 01:37:22' , '2019-03-12 18:49:28');
INSERT INTO users VALUES('1' , 'Admin' , 'admin@admin.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'IcJ8YdD2itq1bPcLRbIzMP37IPdJleFwkObs8ktvyYlo7iGxJ2wxew2gR9K0' , '2018-08-07 18:32:32' , '2018-08-07 18:32:32');
INSERT INTO users VALUES('2' , 'John Hoe' , 'john_hoe@mail.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'XbbXt3nbRUw1iiDxNUQgROrgHFrM2b6R832BdFrq2XKfmaD4ZhnujhQ6ZlZf' , '2018-08-07 18:36:08' , '2018-08-07 18:36:08');
INSERT INTO users VALUES('3' , 'Kel Novi' , 'kelnovi@mail.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'H6N8Q6ErjxqoT6rT9ez9ME494UE4sCb24oXU0q9YpIEOV69AGc2TQCDdHMus' , '2019-02-20 01:57:08' , '2019-02-20 01:57:08');
INSERT INTO users VALUES('4' , 'Novi Cashier' , 'novi@cashier.com' , '' , '$2y$10$mR9.Kt/9rAOdMMx9FQZuWOyFt7KK4u9/ZRy9xKX2qBuKGDBUTg0Lq' , '6rdBBMYdpHjNZOkOLPqBWcuNAVHcUEBSvGlUB6a6xOVkALig01rhjfdPXcW2' , '2019-03-12 01:37:22' , '2019-03-12 18:49:28');
INSERT INTO users VALUES('1' , 'Admin' , 'admin@admin.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'IcJ8YdD2itq1bPcLRbIzMP37IPdJleFwkObs8ktvyYlo7iGxJ2wxew2gR9K0' , '2018-08-07 18:32:32' , '2018-08-07 18:32:32');
INSERT INTO users VALUES('2' , 'John Hoe' , 'john_hoe@mail.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'XbbXt3nbRUw1iiDxNUQgROrgHFrM2b6R832BdFrq2XKfmaD4ZhnujhQ6ZlZf' , '2018-08-07 18:36:08' , '2018-08-07 18:36:08');
INSERT INTO users VALUES('3' , 'Kel Novi' , 'kelnovi@mail.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'H6N8Q6ErjxqoT6rT9ez9ME494UE4sCb24oXU0q9YpIEOV69AGc2TQCDdHMus' , '2019-02-20 01:57:08' , '2019-02-20 01:57:08');
INSERT INTO users VALUES('4' , 'Novi Cashier' , 'novi@cashier.com' , '' , '$2y$10$mR9.Kt/9rAOdMMx9FQZuWOyFt7KK4u9/ZRy9xKX2qBuKGDBUTg0Lq' , '6rdBBMYdpHjNZOkOLPqBWcuNAVHcUEBSvGlUB6a6xOVkALig01rhjfdPXcW2' , '2019-03-12 01:37:22' , '2019-03-12 18:49:28');
INSERT INTO users VALUES('1' , 'Admin' , 'admin@admin.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'IcJ8YdD2itq1bPcLRbIzMP37IPdJleFwkObs8ktvyYlo7iGxJ2wxew2gR9K0' , '2018-08-07 18:32:32' , '2018-08-07 18:32:32');
INSERT INTO users VALUES('2' , 'John Hoe' , 'john_hoe@mail.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'XbbXt3nbRUw1iiDxNUQgROrgHFrM2b6R832BdFrq2XKfmaD4ZhnujhQ6ZlZf' , '2018-08-07 18:36:08' , '2018-08-07 18:36:08');
INSERT INTO users VALUES('3' , 'Kel Novi' , 'kelnovi@mail.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'H6N8Q6ErjxqoT6rT9ez9ME494UE4sCb24oXU0q9YpIEOV69AGc2TQCDdHMus' , '2019-02-20 01:57:08' , '2019-02-20 01:57:08');
INSERT INTO users VALUES('4' , 'Novi Cashier' , 'novi@cashier.com' , '' , '$2y$10$mR9.Kt/9rAOdMMx9FQZuWOyFt7KK4u9/ZRy9xKX2qBuKGDBUTg0Lq' , '6rdBBMYdpHjNZOkOLPqBWcuNAVHcUEBSvGlUB6a6xOVkALig01rhjfdPXcW2' , '2019-03-12 01:37:22' , '2019-03-12 18:49:28');
INSERT INTO users VALUES('1' , 'Admin' , 'admin@admin.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'IcJ8YdD2itq1bPcLRbIzMP37IPdJleFwkObs8ktvyYlo7iGxJ2wxew2gR9K0' , '2018-08-07 18:32:32' , '2018-08-07 18:32:32');
INSERT INTO users VALUES('2' , 'John Hoe' , 'john_hoe@mail.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'XbbXt3nbRUw1iiDxNUQgROrgHFrM2b6R832BdFrq2XKfmaD4ZhnujhQ6ZlZf' , '2018-08-07 18:36:08' , '2018-08-07 18:36:08');
INSERT INTO users VALUES('3' , 'Kel Novi' , 'kelnovi@mail.com' , '' , '$2y$12$EIg46GpxcHDCdBoPV1VLp.TBMTzDTNJWrj6yjwzHlO.UIt.YMCtwy' , 'H6N8Q6ErjxqoT6rT9ez9ME494UE4sCb24oXU0q9YpIEOV69AGc2TQCDdHMus' , '2019-02-20 01:57:08' , '2019-02-20 01:57:08');
INSERT INTO users VALUES('4' , 'Novi Cashier' , 'novi@cashier.com' , '' , '$2y$10$mR9.Kt/9rAOdMMx9FQZuWOyFt7KK4u9/ZRy9xKX2qBuKGDBUTg0Lq' , '6rdBBMYdpHjNZOkOLPqBWcuNAVHcUEBSvGlUB6a6xOVkALig01rhjfdPXcW2' , '2019-03-12 01:37:22' , '2019-03-12 18:49:28');
