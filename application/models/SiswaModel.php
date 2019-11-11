<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class SiswaModel extends CI_Model {
	public function view(){
		return $this->db->get('mahasiswa')->result();
	}
	
	public function view_by($nim){
		$this->db->where('nim', $nim);
		return $this->db->get('mahasiswa')->row();
	}
	
	public function validation($mode){
		$this->load->library('form_validation'); 
		if($mode == "save")
			$this->form_validation->set_rules('input_id', 'ID', 'required|numeric|max_length[20]');
			$this->form_validation->set_rules('input_nim', 'NIM', 'required|numeric|max_length[20]');
		
		$this->form_validation->set_rules('input_nama', 'Nama', 'required|max_length[50]');
		$this->form_validation->set_rules('input_jenkel', 'Jenis Kelamin', 'required');
		$this->form_validation->set_rules('input_no_hp', 'No Hp', 'required|numeric|max_length[15]');
		$this->form_validation->set_rules('input_alamat', 'Alamat', 'required');
			
		if($this->form_validation->run())
			return TRUE;
		else
			return FALSE;
	}
	
	public function save(){
		$data = array(
			"id" => $this->input->post('input_id'),
			"nim" => $this->input->post('input_nim'),
			"nama" => $this->input->post('input_nama'),
			"jenkel" => $this->input->post('input_jenkel'),
			"no_hp" => $this->input->post('input_no_hp'),
			"alamat" => $this->input->post('input_alamat')
		);
		
		$this->db->insert('mahasiswa', $data);
	}

	public function edit($nim){
		$data = array(
			"id" => $this->input->post('input_id'),
			"nim" => $this->input->post('input_nim'),
			"nama" => $this->input->post('input_nama'),
			"jenkel" => $this->input->post('input_jenkel'),
			"no_hp" => $this->input->post('input_no_hp'),
			"alamat" => $this->input->post('input_alamat')
		);
		
		$this->db->where('nim', $nim);
		$this->db->update('mahasiswa', $data);
	}
	
	public function delete($nim){
		$this->db->where('nim', $nim);
		$this->db->delete('mahasiswa');
	}
}
