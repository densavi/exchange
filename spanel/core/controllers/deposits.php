<?php


	for($i=1; $i<105; $i++){
		$html .= '<tr>
									<td> <span class="addtobadgestat badge badge-light-success">Completed</span> </td>
									<td class="text-dark fs-6">0.157252 LTC</td>
									<td> <a target="_blank" href="user-edit?id=138982" class="text-dark text-hover-primary fs-6">roman.kompaniets00@gmail.com</a> </td>
									<td> <a target="_blank" href="https://blockchair.com/litecoin/address/LSLHd931dyJii32kexJLiccg5BeUph9KLJ" class="text-dark text-hover-primary fs-6">LSLHd931dyJii32kexJLiccg5BeUph9KLJ</a> </td>
									<td class="text-dark fs-6">2023-05-14 15:38:51</td>
									<td class="text-dark fs-6"><span style="background: #50cd89; display: block; text-align: center; padding: 3px 15px; color: white; border-radius: 5px; font-size: 13px;">Paid</span></td>
								</tr>';
	}
	
	tpl::set([
		'{html}' => $html,
	]);
	
	
	tpl::load('deposits.tpl');
	tpl::compile('content');



?>