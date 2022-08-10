<?php
class Profil extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_pengunjung');
		$this->m_pengunjung->count_visitor();
	}
	function index(){
        
        $this->data['main_view']   = 'depan/v_profil';
        
		$this->data['tot_agenda']=$this->db->get('tbl_agenda')->num_rows();
        
        $this->load->view('theme/template',$this->data);
		
	}
}
