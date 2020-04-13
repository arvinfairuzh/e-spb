<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Home extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
    }
    public function index()
    {
        $data['draft'] = $this->mymodel->selectWithQuery("SELECT COUNT(permintaan_barang.id) as jumlah
        FROM permintaan_barang
        WHERE status_permintaan = 0");
        
        $data['diproses'] = $this->mymodel->selectWithQuery("SELECT COUNT(permintaan_barang.id) as jumlah
        FROM permintaan_barang
        WHERE status_permintaan = 1 OR status_permintaan = 3 OR status_permintaan = 5");
        
        $data['ditolak'] = $this->mymodel->selectWithQuery("SELECT COUNT(permintaan_barang.id) as jumlah
        FROM permintaan_barang
        WHERE status_permintaan = 2 OR status_permintaan = 4 OR status_permintaan = 6");

        $data['selesai'] = $this->mymodel->selectWithQuery("SELECT COUNT(permintaan_barang.id) as jumlah
        FROM permintaan_barang
        WHERE status_permintaan = 7");

        $data['spperproyek'] = $this->mymodel->selectWithQuery("SELECT master_proyek.nama, COUNT(permintaan_barang.id) as jumlah
        FROM permintaan_barang
        LEFT JOIN master_proyek on permintaan_barang.id_proyek = master_proyek.id
        GROUP BY id_proyek
        ORDER BY jumlah desc");

        $data['spperjenis'] = $this->mymodel->selectWithQuery("SELECT jenis as nama, COUNT(permintaan_barang.id) as jumlah
        FROM permintaan_barang
        GROUP BY jenis
        ORDER BY jumlah desc");

        $data['spperstatus'] = $this->mymodel->selectWithQuery("SELECT master_status.nama, COALESCE(a.jumlah, 0) as jumlah
        FROM master_status
        LEFT JOIN (
            SELECT master_status.id, COUNT(permintaan_barang.id) as jumlah
            FROM permintaan_barang
            LEFT JOIN master_status on permintaan_barang.status_permintaan = master_status.id
            GROUP BY status_permintaan
            ORDER BY jumlah desc
        ) a
        ON master_status.id = a.id");

        $data['page_name'] = "home";
        $this->template->load('template/template', 'template/index', $data);
    }

    function chart($value = '')
    {
        $data['page_name'] = "chart";
        $this->template->load('template/template', 'chartscanvasjs/index', $data);
    }



    function get_autocomplete()
    {
        if (isset($_GET['term'])) {
            $this->db->like('name', $_GET['term'], 'both');
            $result = $this->mymodel->selectWhere('user', null);
            if (count($result) > 0) {
                foreach ($result as $row)
                    $arr_result[] = [
                        'id' => $row['id'],
                        'label' => $row['name']
                    ];

                echo json_encode($arr_result);
            }
        }
    }


    public function tes()
    {
        echo "'" . $this->template->sonDecode('V7-BW2sw1V5UHGX51TW3mmm1s87WfWK0-3_tBBlBpbU~') . "'";
    }
}
/* End of file Home.php */
/* Location: ./application/controllers/Home.php */
