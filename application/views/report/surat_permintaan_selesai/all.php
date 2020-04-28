<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Surat Permintaan Selesai
      <small>Report</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="#">Master</a></li>
      <li class="#">Surat Permintaan Selesai</li>
      <li class="active">Report</li>
    </ol>
  </section>
  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-xs-12">
        <div class="box">
          <!-- /.box-header -->
          <div class="box-header">
            <div class="row">
              <form action="<?= base_url("report/surat_permintaan_selesai/") ?>" method="post">
                <div class="col-md-5">
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
                <div class="col-md-5">
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
                    <label>&nbsp</label>
                    <!-- <label>&nbsp</label><br> -->
                    <button class="btn btn-primary btn-block"><i class="mdi mdi-database-search"></i> Filter Data</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
          <div class="box-body">
            <div class="show_error"></div>
            <div class="table-responsive">
              <table class="table table-hover table-bordered" id="idTable" style="width: 100%">
                <thead>
                  <tr class="bg-success">
                    <th>No</th>
                    <th>Kode</th>
                    <th>Tanggal Pengajuan</th>
                    <th>Durasi</th>
                    <th>Proyek</th>
                    <th>Lokasi</th>
                    <th>Status permintaan</th>
                    <th>Jenis</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                </tbody>
              </table>
            </div>
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<div class="modal fade bd-example-modal-sm" tabindex="-1" permintaan_barang="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="modal-delete">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <form id="upload-delete" action="<?= base_url('master/Permintaan_barang/delete') ?>">
        <div class="modal-header">
          <h5 class="modal-title">Confirm delete</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <input type="hidden" name="id" id="delete-input">
          <p>Are you sure to delete this data?</p>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-send">Yes, Delete</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        </div>
      </form>
    </div>
  </div>
</div>

<div class="modal fade bd-example-modal-sm" master_bank="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="modal-form">
  <div class="modal-dialog modal-md">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h5 class="modal-title" id="title-form"></h5>
      </div>
      <div class="modal-body">
        <div id="load-form"></div>
      </div>
    </div>
  </div>
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
        "url": "<?php echo base_url('report/Surat_permintaan_selesai/ajaxall/') ?>",
        "type": "POST"
      },
      //Set column definition initialisation properties.
      "columnDefs": [{
        "targets": [0], //first column / numbering colum
        "orderable": true, //set not orderable
      }, ],
    });
  });

  function edit(id) {
    location.href = "<?= base_url('master/surat_permintaan/edit/') ?>" + id;
  }

  function detail(id) {
    location.href = "<?= base_url('master/surat_permintaan/detail/') ?>" + id;
  }

  function cetak(id) {
    window.open("<?= base_url('master/surat_permintaan/print/') ?>" + id);
  }

  function verifikasi(id) {
    $("#load-form").html('loading...');
    $("#modal-form").modal();
    $("#title-form").html('Verifikasi');
    $("#load-form").load("<?= base_url('master/Permintaan_barang/verifikasi_modal/') ?>" + id);
  }

  function ajukan(id) {
    $("#load-form").html('loading...');
    $("#modal-form").modal();
    $("#title-form").html('Ajukan Surat Permintaan');
    $("#load-form").load("<?= base_url('master/Permintaan_barang/ajukan_modal/') ?>");
  }

  function hapus(id) {
    $("#modal-delete").modal('show');
    $("#delete-input").val(id);
  }

  $("#upload-delete").submit(function() {

    event.preventDefault();

    var form = $(this);

    var mydata = new FormData(this);



    $.ajax({

      type: "POST",

      url: form.attr("action"),

      data: mydata,

      cache: false,

      contentType: false,

      processData: false,

      beforeSend: function() {

        $(".btn-send").addClass("disabled").html("<i class='la la-spinner la-spin'></i>  Processing...").attr('disabled', true);

        $(".show_error").slideUp().html("");

      },

      success: function(response, textStatus, xhr) {

        var str = response;

        if (str.indexOf("success") != -1) {

          $(".show_error").hide().html(response).slideDown("fast");



          $(".btn-send").removeClass("disabled").html('Yes, Delete it').attr('disabled', false);

        } else {

          setTimeout(function() {

            $("#modal-delete").modal('hide');

          }, 1000);

          $(".show_error").hide().html(response).slideDown("fast");

          $(".btn-send").removeClass("disabled").html('Yes , Delete it').attr('disabled', false);

          loadtable($("#select-status").val());

        }

      },

      error: function(xhr, textStatus, errorThrown) {



      }

    });

    return false;



  });
</script>