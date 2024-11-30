<?php

	$SEO['title'] 		= getSettingValue('domain_title');
	$SEO['description']	= getSettingValue('domain_description');
	$SEO['keywords'] 	= getSettingValue('domain_keywords');
	
	$MAIN['css_top']	= GM::css_ren(['swiper-bundle.min.css', 'style.min.css']);
	$MAIN['js_bottom']	= GM::js_ren(['swiper-bundle.min.js', 'main.js', 'header.js', 'slider-graphics.js', 'company.js', 'benefits.js', 'jquery.min.js', 'nouislider.min.js', 'section-calck.js']);

	
	if ($logged) {
		tpl::set_block("'\\[not_logged\\](.*?)\\[/not_logged\\]'si");
		tpl::set(['[logged]', '[/logged]']);
	}

	if (!$logged) {
		tpl::set_block("'\\[logged\\](.*?)\\[/logged\\]'si");
		tpl::set(['[not_logged]', '[/not_logged]']);
	}


	tpl::set([
		'{html}' => $html,
	]);
	
	
	tpl::load('index.tpl');
	tpl::compile('content');