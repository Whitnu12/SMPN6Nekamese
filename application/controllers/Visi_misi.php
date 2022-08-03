<?php
class visi_misi extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_pengunjung');
		$this->m_pengunjung->count_visitor();
	}
	function index(){
		$this->data['main_view']   = 'depan/v_visi_misi';
                
        $this->load->view('theme/template',$this->data);
	}
}