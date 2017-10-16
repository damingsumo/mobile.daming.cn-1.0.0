<?php
/**
 * Excel 类库
 * @author zy
 */

require_once FW_PATH.'/core/excel/PHPExcel.php';
class Excel {
	
 	/**
	 * excel 下载
	 * @param array $contentHeader
	 * @param array $contents
	 * @param string $fileName
	 * @param string $type 
	 * @author zy
	 */
 	public static function download($contentHeader, $contents, $fileName = '', $type = 'xlsx') {
		if(!in_array($type, array('xls', 'xlsx'))) {
			$type = 'xlsx';
		}
		
		if($fileName == '') {
			$fileName = date('YmdHis').rand(1000,9999);
		}

		$phpExcel = new PHPExcel();
		$getActiveSheet = $phpExcel->getActiveSheet();
		if($type == 'xls') {
			require_once FW_PATH.'/core/excel/PHPExcel/Writer/Excel5.php';
			$phpExcelWrite = new PHPExcel_Writer_Excel5($phpExcel);
			$outputFileName = $fileName.".xls";
		}else {
			require_once FW_PATH.'/core/excel/PHPExcel/Writer/Excel2007.php';
			$phpExcelWrite = new PHPExcel_Writer_Excel2007($phpExcel);
			$outputFileName = $fileName.".xlsx";
		}
		
		$phpExcelWrite->setPreCalculateFormulas(false); 
		
		$columnKeys = self::getColumnKeys();
		$columnKeyIndex = 0;
		$line = 1;
		
		// plugins::convertEncode();
		// 添加 $contentHeader
		foreach($contentHeader as $columnVal) {
			$columnKey = $columnKeys[$columnKeyIndex];
			$column = $columnKey.$line;
			$getActiveSheet->setCellValue($column, plugins::convertEncode($columnVal, 'utf-8'));
			++$columnKeyIndex;
		}
		
		++$line;
		$columnKeyIndex = 0;
		foreach($contents as $everyLineContent) {
			$columnKeyIndex = 0;
			foreach($everyLineContent as $columnVal) {
				$columnKey = $columnKeys[$columnKeyIndex];
				$column = $columnKey.$line;
				$getActiveSheet->setCellValue($column, plugins::convertEncode($columnVal, 'utf-8'));
				++$columnKeyIndex;
			}
			
			++$line;
		}

		header("Content-Type: application/force-download");  
		header("Content-Type: application/octet-stream");  
		header("Content-Type: application/download");  
		header('Content-Disposition:attachment;filename="'.$outputFileName.'"');  
		header("Content-Transfer-Encoding: binary");  
		header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");  
		header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");  
		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");  
		header("Pragma: no-cache");  
		$phpExcelWrite->save('php://output');
	}
	
	/**
	 * excel 下载
	 * @param array $contentHeader
	 * @param array $contents
	 * @param string $fileName
	 * @param string $type 
	 * @author zy
	 */
 	public static function write($contentHeader, $contents, $path = '', $fileName = '', $type = 'xlsx') {
		if(!in_array($type, array('xls', 'xlsx'))) {
			$type = 'xlsx';
		}
		
		if($path == '') {
			$path = WWW_ROOT.'/tmp_file';
		}
		
		if($fileName == '') {
			$fileName = date('YmdHis').rand(1000,9999);
		}

		$phpExcel = new PHPExcel();
		$getActiveSheet = $phpExcel->getActiveSheet();
		if($type == 'xls') {
			require_once FW_PATH.'/core/excel/PHPExcel/Writer/Excel5.php';
			$phpExcelWrite = new PHPExcel_Writer_Excel5($phpExcel);
			$outputFileName = $path.'/'.$fileName.".xls";
		}else {
			require_once FW_PATH.'/core/excel/PHPExcel/Writer/Excel2007.php';
			$phpExcelWrite = new PHPExcel_Writer_Excel2007($phpExcel);
			$outputFileName = $path.'/'.$fileName.".xlsx";
		}
		
		$phpExcelWrite->setPreCalculateFormulas(false); 
		
		$columnKeys = self::getColumnKeys();
		$columnKeyIndex = 0;
		$line = 1;
		
		// plugins::convertEncode();
		// 添加 $contentHeader
		foreach($contentHeader as $columnVal) {
			$columnKey = $columnKeys[$columnKeyIndex];
			$column = $columnKey.$line;
			$getActiveSheet->setCellValue($column, plugins::convertEncode($columnVal, 'utf-8'));
			++$columnKeyIndex;
		}
		
		++$line;
		$columnKeyIndex = 0;
		foreach($contents as $everyLineContent) {
			$columnKeyIndex = 0;
			foreach($everyLineContent as $columnVal) {
				$columnKey = $columnKeys[$columnKeyIndex];
				$column = $columnKey.$line;
				$getActiveSheet->setCellValue($column, plugins::convertEncode($columnVal, 'utf-8'));
				++$columnKeyIndex;
			}
			
			++$line;
		}

		$phpExcelWrite->save($outputFileName);
	}
	
	public static function getColumnKeys() {
		$kes = array(
			0 => 'A',
			1 => 'B',
			2 => 'C',
			3 => 'D',
			4 => 'E',
			5 => 'F',
			6 => 'G',
			7 => 'H',
			8 => 'I',
			9 => 'J',
			10 => 'K',
			11 => 'L',
			12 => 'M',
			13 => 'N',
			14 => 'O',
			15 => 'P',
			16 => 'Q',
			17 => 'R',
			18 => 'S',
			19 => 'T',
			20 => 'U',
			21 => 'V',
			22 => 'W',
			23 => 'X',
			24 => 'Y',
			25 => 'Z',
			
			26 => 'AA',
			27 => 'AB',
			28 => 'AC',
			29 => 'AD',
			30 => 'AE',
			31 => 'AF',
			32 => 'AG',
			33 => 'AH',
			34 => 'AI',
			35 => 'AJ',
			36 => 'AK',
			37 => 'AL',
			38 => 'AM',
			39 => 'AN',
			40 => 'AO',
			41 => 'AP',
			42 => 'AQ',
			43 => 'AR',
			44 => 'AS',
			45 => 'AT',
			46 => 'AU',
			47 => 'AV',
			48 => 'AW',
			49 => 'AX',
			50 => 'AY',
			51 => 'AZ',
		);
		
		return $kes;
	}
	
}

?>