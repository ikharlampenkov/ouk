<?php

//phpinfo();
//print_r($_SERVER);

ini_set('display_errors', 1);
ini_set('error_reporting', E_ALL);


if (!defined("PATH_SEPARATOR")) {
    if (strpos($_ENV["OS"], "Win") !== false)
        define("PATH_SEPARATOR", ";");
    else define("PATH_SEPARATOR", ":");
}


// Define path to application directory
defined('APPLICATION_PATH')
|| define('APPLICATION_PATH', 'D:/inetpub/vhosts/ouk-ko.ru/httpdocs/application'); //define('APPLICATION_PATH', realpath(dirname(__FILE__) . '/../vault_scripts/application'));


// Define application environment
defined('APPLICATION_ENV')
|| define('APPLICATION_ENV', (getenv('APPLICATION_ENV') ? getenv('APPLICATION_ENV') : 'development'));

//echo APPLICATION_PATH;

// Ensure library/ is on include_path


set_include_path(implode(PATH_SEPARATOR, array(
    realpath(APPLICATION_PATH . '/../library'),
    get_include_path()
)));


//set_include_path('D:/inetpub/vhosts/ouk-ko.ru/httpdocs/library');

/** Zend_Application **/

require_once 'Zend/Application.php';


// Create application, bootstrap, and run
$application = new Zend_Application(
    APPLICATION_ENV,
    APPLICATION_PATH . '/configs/application.ini'
);


$application->bootstrap()
    ->run();
