<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Home extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
    }
    public function index()
    {

        $id_user = $_SESSION['id'];

        $master_proyek_sub = $this->mymodel->selectWithQuery("SELECT master_proyek.id, master_proyek.nama FROM master_proyek_sub LEFT JOIN master_proyek ON master_proyek_sub.kode = master_proyek.kode WHERE id_user = '$id_user'");
        $jenisku = $this->mymodel->selectWithQuery("SELECT master_jenis.id, master_jenis.value FROM user_jenis LEFT JOIN master_jenis ON user_jenis.jenis = master_jenis.id WHERE id_user = '$id_user'");

        $qry_proyekku_arr = '';
        $qry_jenisku_arr = '';
        $a = 0;
        $b = 0;
        foreach ($master_proyek_sub as $ps) {
            $a++;
            if ($a == 1) {
                $or = '';
            } else {
                $or = ' OR ';
            }
            $id_ps = $ps['id'];
            $qry_proyekku_arr .=  $or . "permintaan_barang.id_proyek = '$id_ps'";
        }

        foreach ($jenisku as $jk) {
            $b++;
            if ($b == 1) {
                $or = '';
            } else {
                $or = ' OR ';
            }
            $id_jk = $jk['value'];
            $qry_jenisku_arr .= $or . "permintaan_barang.jenis = '$id_jk'";
        }

        if ($master_proyek_sub) {
            $qry_proyekku = ' AND (' . $qry_proyekku_arr . ')';
        } else {
            $qry_proyekku = '';
        }

        if ($jenisku) {
            $qry_jenisku = ' AND (' . $qry_jenisku_arr . ')';
        } else {
            $qry_jenisku = '';
        }


        if ($_SESSION['role_id'] == 0) {
            $qry_page1 = "";
            $qry_page2 = "";
            $qry_page3 = "";
        } else if ($_SESSION['role_id'] == 5 || $_SESSION['role_id'] == 6) {
            $qry_page1 = "WHERE permintaan_barang.status = 'ENABLE' " . $qry_jenisku;
            $qry_page2 = "WHERE permintaan_barang.status = 'ENABLE' " . $qry_jenisku;
            $qry_page3 = "WHERE permintaan_barang.status = 'ENABLE' " . $qry_jenisku;
        } else {
            $qry_page1 = "WHERE permintaan_barang.status = 'ENABLE' " . $qry_proyekku;
            $qry_page2 = "WHERE permintaan_barang.status = 'ENABLE' " . $qry_jenisku;
            $qry_page3 = "WHERE permintaan_barang.status = 'ENABLE' " . $qry_proyekku . " " . $qry_jenisku;
        }

        $data['draft'] = $this->mymodel->selectWithQuery("SELECT COUNT(permintaan_barang.id) as jumlah
        FROM permintaan_barang
        WHERE status_permintaan = 0 " . $qry_proyekku . $qry_jenisku);

        $data['diproses'] = $this->mymodel->selectWithQuery("SELECT COUNT(permintaan_barang.id) as jumlah
        FROM permintaan_barang
        WHERE status_permintaan = 1 OR status_permintaan = 3 OR status_permintaan = 5 OR status_permintaan = 7 " . $qry_proyekku . $qry_jenisku);

        $data['ditolak'] = $this->mymodel->selectWithQuery("SELECT COUNT(permintaan_barang.id) as jumlah
        FROM permintaan_barang
        WHERE status_permintaan = 2 OR status_permintaan = 4 OR status_permintaan = 6 " . $qry_proyekku . $qry_jenisku);

        $data['selesai'] = $this->mymodel->selectWithQuery("SELECT COUNT(permintaan_barang.id) as jumlah
        FROM permintaan_barang
        WHERE status_permintaan = 8 "  . $qry_proyekku . $qry_jenisku);

        $data['spperproyek'] = $this->mymodel->selectWithQuery("SELECT master_proyek.nama, COUNT(permintaan_barang.id) as jumlah
        FROM permintaan_barang
        LEFT JOIN master_proyek on permintaan_barang.id_proyek = master_proyek.id
        " . $qry_page1 . "
        GROUP BY id_proyek
        ORDER BY jumlah desc");

        $data['spperjenis'] = $this->mymodel->selectWithQuery("SELECT jenis as nama, COUNT(permintaan_barang.id) as jumlah
        FROM permintaan_barang
        " . $qry_page2 . "
        GROUP BY jenis
        ORDER BY jumlah desc");

        $data['spperstatus'] = $this->mymodel->selectWithQuery("SELECT master_status.value as nama, COALESCE(a.jumlah, 0) as jumlah
        FROM master_status
        LEFT JOIN (
            SELECT master_status.value, COUNT(permintaan_barang.id) as jumlah
            FROM permintaan_barang
            LEFT JOIN master_status on permintaan_barang.status_permintaan = master_status.id
            " . $qry_page3 . "
            GROUP BY status_permintaan
            ORDER BY jumlah desc
        ) a
        ON master_status.value = a.value
        GROUP BY master_status.value");

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
