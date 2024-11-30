<?php
	# [SAVE_TERMS_HTML]

	
	
	
	$termsHtml = $_POST['termsHtml'];						# html

	
	$termsHtml = addslashes($termsHtml);
	 
	updateSettingValue('terms_text', $termsHtml);


	die('1');
	

	

	