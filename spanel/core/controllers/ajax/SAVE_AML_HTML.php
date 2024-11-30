<?php
	# [SAVE_AML_HTML]

	
	
	
	$termsHtml = $_POST['termsHtml'];						# html

	$termsHtml = addslashes($termsHtml);
	
	 
	updateSettingValue('aml_text', $termsHtml);


	die('1');
	

	

	