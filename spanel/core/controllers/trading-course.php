<?php



	$sql = db::super_query("SELECT * FROM `cryptocurrency` WHERE available = '1' ORDER BY id ASC LIMIT 20", true);

	
	foreach ($sql as $row) {			
		$course_pairs .= '<option value="'.$row['tiker'].'_USDT">'.$row['tiker'].'_USDT</option>';
		$stable_course_pairs .= '<option value="'.$row['tiker'].'_USDT">'.$row['tiker'].'_USDT</option>';
	}
	
	
	
	$sql = db::super_query("SELECT * FROM `trading_course` ORDER BY id ASC ", true);	
	foreach ($sql as $row) {			
		$stable_course_pairs_list .= '
		<tr>
			<td class="text-dark fs-6">#'.$row['id'].'</td>
			<td class="text-dark fs-6">'.$row['pair'].'</td>
			<td class="text-dark fs-6">'.$row['percent'].'%</td>
			<td class="text-dark fs-6"><span onclick="deleteTradingStablePairsCourse('.$row['id'].')" class="btn btn-danger btn-sm px-4 me-2">Delete</span></td>
		 </tr>';

	}	
	
	
	tpl::set([
		'{course_pairs}' => $course_pairs,
		'{stable_course_pairs}' => $stable_course_pairs,
		'{stable_course_pairs_list}' => $stable_course_pairs_list,
	]);
	
	
	tpl::load('trading-course.tpl');
	tpl::compile('content');



?>