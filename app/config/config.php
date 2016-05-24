<?php
define('ENV', 'online');

return array(
	'env' => ENV,
	'logger' => array(
		'level' => 'all', // none/off|(LEVEL)
		'dump' => 'file', // none|html|file, 可用'|'组合
		'files' => array( // ALL|(LEVEL)
			#'ALL'	=> dirname(__FILE__) . '/../../logs/' . date('Y-m') . '.log',
		),
	),
	'servers' => array(
		array(
			'host' => $_ENV["DB_HOST"],
			'port' => $_ENV["DB_PORT"],
			'password' => $_ENV["DB_AUTH"],
		),
	),
	'login' => array(
		'name' => $_ENV["USERNAME"],
		'password' => $_ENV["USER_PWD"], // at least 6 characters
	),
);