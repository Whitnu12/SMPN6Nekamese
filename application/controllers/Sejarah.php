<?php
class Sejarah extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_pengunjung');
		$this->m_pengunjung->count_visitor();
	}
	function index(){
        
        $this->data['main_view']   = 'depan/v_sejarah';
                
        $this->load->view('theme/template',$this->data);
		
	}
}
