<?php


	
	
	
	
	
	
	tpl::set([	
		'{text}' => getSettingValue('terms_text'),
		//'{SERVER_NAME}' => $_SERVER['SERVER_NAME'],
	]);
		
	tpl::load('edit-terms.tpl');
	tpl::compile('content');
