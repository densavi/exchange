<?php






	tpl::set([	
		'{text}' => getSettingValue('aml_text'),
		//'{SERVER_NAME}' => $_SERVER['SERVER_NAME'],
	]);
	
	tpl::load('edit-aml.tpl');
	tpl::compile('content');


