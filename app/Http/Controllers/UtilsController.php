<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tools\DBBackupToolkit;


class UtilsController extends Controller{
    //

	protected $db_config = null;

    
    public function __construct(){
		$this->middleware('auth');
		$this->db_config = [\Config::get('database.connections.mysql.host'),\Config::get('database.connections.mysql.username'),\Config::get('database.connections.mysql.password'),\Config::get('database.connections.mysql.database')];
    }

    public function backUpList(){
    	$backup_list = glob(base_path('db-backups/BACK_UP_DB/*.sql'));
    	return view('utils.database-backups',['backup_list'=>$backup_list,'custom_js'=>['generate-backup.js']]);
    }

    public function generateBackUp(Request $req){

        $backup = new DBBackupToolkit($this->db_config);

        $filename = $backup->generateBackUp('sql-backup-'.date('Y-m-d').'-'.time());
 
       $files = glob(base_path('db-backups/BACK_UP_DB/*.sql'));

        \Madzipper::make(base_path('db-backups/BACK_UP_DB/zipped-backups.zip'))->add($files)->close();
        	 
        echo json_encode(['name'=>$filename,'status'=>'OK']);

    }

}
