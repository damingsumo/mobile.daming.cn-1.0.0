<?php
//基础服务信息配置，只在基础服务信息变更的时候在修改，如：上线正式
//平台异构服务地址
define('ADAPTER_SERVICE_URL', 'local.api.adapter.bestdo.com:9008');
//基础配置服务service_id
define('BASIC_SERVICE_ID', '01');
//基础配置服务URL
define('BASIC_SERVICE_URL', 'local.api.config.bestdo.com:9003/');

//获取keys的方法接口
define('BASIC_SERVICE_KEY_FUNC', 'config/v1/api/service/getKeys');
//获取infos的方法接口
define('BASIC_SERVICE_INFO_FUNC', 'config/v1/api/service/getInfos');

//文件服务service_id
define('FILE_SERVICE_ID', '02');
//上传接口方法
define('FILE_SERVICE_UPLOAD_FUNC', 'fns/v1/api/file/upload');
//上传接口方法
define('FILE_SERVICE_UPLOAD_PHOTO_FUNC', 'fns/v1/api/photo/upload');

//本服务的信息配置，根据本服务的需求更改
/********API服务相关服务ID配置**********/
//本服务service_id
define('API_LOCAL_SERVICE_ID', '11');
//本服务简称
define('API_LOCAL_SERVICE_ABBREWIATION', 'FrameWork');
//本服务 version 版本号
define('API_LOCAL_SERVICE_VERSION', '1.0.0');
//本服务 类型 0 Web端,1 移动端， 2 Wap端@todo
define('API_LOCAL_SERVICE_TYPE', '0');
//与基础配置通信的密钥
define('API_BASIC_SERVICE_KEY', 'G63iMK5ztejgFb78E7m8rbBA');
//与文件服务通信的密钥
define('API_FILE_SERVICE_KEY', 'hPyCg989ieYAwiXRO5RPWvKs');
//redis存储服务配置的key
define('API_SERVICE_KEY_CACHE_KEY', API_LOCAL_SERVICE_ABBREWIATION.':Service:Keys:'.API_LOCAL_SERVICE_ID);
//redis存储服务信息的key
define('API_SERVICE_INFO_CACHE_KEY', API_LOCAL_SERVICE_ABBREWIATION.':Service:Infos:'.API_LOCAL_SERVICE_ID);

/********Mgr服务相关服务ID配置**********/
//本服务service_id
define('MGR_LOCAL_SERVICE_ID', '10');
//本服务简称
define('MGR_LOCAL_SERVICE_ABBREWIATION', 'FrameWork');
//本服务 version 版本号
define('MGR_LOCAL_SERVICE_VERSION', '1.0.0');
//本服务 类型 0 Web端,1 移动端， 2 Wap端@todo
define('MGR_LOCAL_SERVICE_TYPE', '0');
//与基础配置通信的密钥
define('MGR_BASIC_SERVICE_KEY', 'dAP4ToQPrglgg9St7SxTNUzJ');
//redis存储服务配置的key
define('MGR_SERVICE_KEY_CACHE_KEY', MGR_LOCAL_SERVICE_ABBREWIATION.':Service:Keys:'.MGR_LOCAL_SERVICE_ID);
//redis存储服务信息的key
define('MGR_SERVICE_INFO_CACHE_KEY', MGR_LOCAL_SERVICE_ABBREWIATION.':Service:Infos:'.MGR_LOCAL_SERVICE_ID);

/****************本服务能调用的服务service_id配置--使用者请自行配置，自己必须知道每个服务的服务id******************/

/********API服务相关服务ID配置**********/
//资源服务service_id
define('ZY_SERVICE_ID', 9);
//资源服务简称
define('ZY_SERVICE', 'zy');

// 公共服务-API SERVICE_ID
define('API_COMMON_SERVICE_ID', '13');
// 公共服务-API SERVICE_NAME
define('API_COMMON_SERVICE_NAME', 'common');


/*******MGR服务相关服务ID配置**********/
