<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->model('Slide_top_Model');
		$this->load->model('Bg01_Model');
		$this->load->model('Bg02_Model');
		$this->load->model('Bg03_Model');
		$this->load->model('About_Model');
		$this->load->model('Product_Model');
		$this->load->model('Category_Model');
		$this->load->model('News_Model');
		$this->load->model('Footer_Model');

		
		$dulieu['item'] = $this->Slide_top_Model->get();
		$dulieu['item_bg'] = $this->Bg01_Model->get();
		$dulieu['it_bg'] = $this->Bg02_Model->get();
		$dulieu['it_bg_vd'] = $this->Bg03_Model->get();
		$dulieu['it_about'] = $this->About_Model->get();
		$dulieu['it_prd'] = $this->Product_Model->get();
		$dulieu['it_ctgr_p4c'] = $this->Category_Model->get_cate_c4();
		$dulieu['it_ctgr_p6c'] = $this->Category_Model->get_cate_c6();
		$dulieu['it_ctgr_p12c'] = $this->Category_Model->get_cate_c12();
		$dulieu['it_ctgr_tt'] = $this->Category_Model->get_cate_title();
		$dulieu['it_news'] = $this->News_Model->get();
		$dulieu['it_footer'] = $this->Footer_Model->get();

		$this->load->view('home', $dulieu);
	}

	
}
