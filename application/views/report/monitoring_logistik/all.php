<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>Monitoring Logistik</h1>
    <h5 style="padding-left:1px;"></h5>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="panel panel-success">
          <div class="panel-heading">
            <!-- FILTER  -->
            <div class="row">
              <form action='' method='POST'>
                <div class="col-md-12">
                  <a class="btn btn-success pull-right" href="<?= base_url('report/Monitoring_logistik/getExcel/') ?>" target="_blank"><i class="fa fa-file-excel-o"></i> Export Excel</a>
                </div>
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-3">
                      <div class="form-group">
                        <label>Proyek</label>
                        <select class="form-control select2" name="proyek">
                          <option value="">Semua Proyek</option>
                          <?php
                          $id_user = $_SESSION['id'];
                          if ($_SESSION['role_id'] == 0) {
                            $master_proyek = $this->mymodel->selectWithQuery("SELECT * FROM master_proyek");
                          } else {
                            $master_proyek = $this->mymodel->selectWithQuery("SELECT master_proyek.id, master_proyek.nama FROM master_proyek_sub LEFT JOIN master_proyek ON master_proyek_sub.kode = master_proyek.kode WHERE id_user = '$id_user'");
                          }
                          foreach ($master_proyek as $key => $value) {
                            $text = '';
                            if ($this->session->userdata('proyek') == $value['id']) {
                              $text = 'selected';
                            }
                            ?>
                            <option value="<?= $value['id'] ?>" <?= $text ?>><?= $value['nama'] ?></option>
                          <?php } ?>
                        </select>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div class="form-group">
                        <label>Status Permintaan</label>
                        <select class="form-control select2" name="status">
                          <option value="">Semua Status</option>
                          <?php
                          $master_status = $this->mymodel->selectData("master_status");
                          foreach ($master_status as $key => $value) {
                            $text = '';
                            if ($this->session->userdata('status') == $value['nama']) {
                              $text = 'selected';
                            }
                            ?>
                            <option value="<?= $value['id'] ?>" <?= $text ?>><?= $value['nama'] ?></option>
                          <?php } ?>
                        </select>
                      </div>
                    </div>
                    <div class="col-md-2">
                      <div class="form-group">
                        <label>Jenis Permintaan</label>
                        <select class="form-control select2" name="jenis">
                          <option value="">Semua Jenis</option>
                          <?php
                          $id_user = $_SESSION['id'];
                          if ($_SESSION['role_id'] == 0) {
                            $master_jenis = $this->mymodel->selectWithQuery("SELECT * FROM master_jenis");
                          } else {
                            $master_jenis = $this->mymodel->selectWithQuery("SELECT master_jenis.id, master_jenis.value FROM user_jenis LEFT JOIN master_jenis ON user_jenis.jenis = master_jenis.id WHERE id_user = '$id_user'");
                          }
                          foreach ($master_jenis as $key => $value) {
                            $text = '';
                            if ($this->session->userdata('jenis') == $value['value']) {
                              $text = 'selected';
                            }
                            ?>
                            <option value="<?= $value['value'] ?>" <?= $text ?>><?= $value['value'] ?></option>
                          <?php } ?>
                        </select>
                      </div>
                    </div>
                    <div class="col-md-2">
                      <div class="form-group">
                        <label>Kode Surat Permintaan</label>
                        <select class="form-control select2" name="kode_sp">
                          <option value="">Semua Kode</option>
                          <?php
                          $id_user = $_SESSION['id'];
                          $permintaan_barang = $this->mymodel->selectWithQuery("SELECT * FROM permintaan_barang");
                          foreach ($permintaan_barang as $key => $value) {
                            $text = '';
                            if ($this->session->userdata('kode_sp') == $value['kode']) {
                              $text = 'selected';
                            }
                            ?>
                            <option value="<?= $value['kode'] ?>" <?= $text ?>><?= $value['kode'] ?></option>
                          <?php } ?>
                        </select>
                      </div>
                    </div>
                    <div class="col-md-2">
                      <div class="form-group">
                        <label>&nbsp</label>
                        <!-- <label>&nbsp</label><br> -->
                        <button class="btn btn-primary btn-block"><i class="mdi mdi-database-search"></i> Filter Data</button>
                      </div>
                    </div>
                  </div>
              </form>
            </div>
          </div>
          <!-- FILTER  -->
        </div>
        <div class="panel-body">
          <table class="table table-hover table-bordered" id="idTable" style="width: 100%">
            <thead>
              <tr class="bg-success">
                <th>No</th>
                <th>Tanggal Diajukan</th>
                <th>Status Pengajuan</th>
                <th>Officer</th>
                <th>Kode Proyek</th>
                <th>Proyek</th>
                <th>No Sp</th>
                <th>Jenis Barang</th>
                <th>Vol</th>
                <th>Satuan</th>
                <th>Vol Po</th>
                <th>Satuan Po</th>
                <th>Harga Satuan</th>
                <th>Jumlah</th>
                <th>No Sp Proyek</th>
                <th>No Sp Ga It</th>
                <th>Jam Sp Diterima</th>
                <th>Tanggal Sp Diterima</th>
                <th>Tanggal Target Datang</th>
                <th>Target Pencapaian</th>
                <th>Supplier</th>
                <th>Contact</th>
                <th>No Po</th>
                <th>Keterangan</th>
                <th>Spk Angkutan</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
            </tbody>
          </table>
        </div>
      </div>
    </div>
</div>

</section>
</div>

<script type="text/javascript">
  var table;
  $(document).ready(function() {
    //datatables
    table = $('#idTable').DataTable({
      "processing": true, //Feature control the processing indicator.
      "serverSide": true, //Feature control DataTables' server-side processing mode.
      "order": [], //Initial no order.
      "scrollX": true,
      // Load data for the table's content from an Ajax source
      "ajax": {
        "url": "<?php echo base_url('report/Monitoring_logistik/ajaxall/') ?>",
        "type": "POST"
      },
      //Set column definition initialisation properties.
      "columnDefs": [{
        "targets": [0], //first column / numbering colum
        "orderable": true, //set not orderable
      }, ],
    });
  });
</script>