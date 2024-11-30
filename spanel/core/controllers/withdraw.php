<?php


	for($i=1; $i<105; $i++){
		$html .= '<tr>
									<td> <span class="addtobadgestat badge badge-light-success">Completed</span> </td>
									<td> <a target="_blank" href="user-edit?id=140027" class="text-dark text-hover-primary fs-6">hulinada123@gmail.com</a> </td>
									<td class="text-dark  text-hover-primary fs-6">TXiLUSDqZXSUvLVFd1vxchon7RLg2ExK3k</td>
									<td class="text-dark  fs-6">1500 USDTTRC</td>
									<td class="text-dark  fs-6">2023-05-16 23:49:43</td>
								</tr>';
	}
	
	tpl::set([
		'{html}' => $html,
	]);
	
	
	tpl::load('withdraw.tpl');
	tpl::compile('content');



?>