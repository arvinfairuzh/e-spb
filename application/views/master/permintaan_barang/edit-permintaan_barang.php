<?php
if ($_SESSION['role_id'] == 1) {
  $keterangan_hidden = 'hide';
  $add_disable = '';
} else if ($_SESSION['role_id'] == 2) {
  $add_disable = '';
} else {
  $add_disable = 'disabled';
}
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Permintaan Barang
      <small>Edit</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="#">Master</a></li>
      <li class="#">Permintaan Barang</li>
      <li class="active">Edit</li>
    </ol>
  </section>
  <!-- Main content -->
  <section class="content">
    <div class="row">
    </div>
    <div class="row">
      <div class="col-xs-12">
        <div class="box">
          <!-- /.box-header -->
          <div class="box-header">
            <div class="col-md-12">
              <h5 class="box-title">
                Edit Permintaan Barang
              </h5>
            </div>
          </div>
          <div class="box-body">
            <div class="form-group col-md-3">
              <label for="form-nama_proyek">Proyek</label>
              <p><?= $master_proyek['nama'] ?></p>
              </select>
            </div>
            <div class="form-group col-md-3">
              <label for="form-lokasi">Lokasi</label>
              <p><?= $master_proyek['lokasi'] ?></p>
            </div>
            <div class="form-group col-md-3">
              <label for="form-kode">Kode</label>
              <p><?= $permintaan_barang['kode'] ?></p>
            </div>
            <div class="form-group col-md-3">
              <label for="form-tanggal">Tanggal</label>
              <p>
                <?php
                $tanggal = date_create($permintaan_barang['created_at']);
                echo date_format($tanggal, "d M Y h:i:s");
                ?>
              </p>
            </div>
            <div class="form-group col-md-12">
              <div class="table-responsive">
                <table class="table table-bordered" id="dynamic_fieldinvoice" style="width:100%;">
                  <tr>
                    <th style="width:10%;">
                      Kode Pekerjaan
                    </th>
                    <th style="width:10%;">
                      Jenis Barang
                    </th>
                    <th style="width:7%;">
                      Vol
                    </th>
                    <th style="width:10%;">
                      Satuan
                    </th>
                    <th style="width:10%;">
                      Fungsi
                    </th>
                    <th style="width:7%;">
                      Target Tanggal Datang
                    </th>
                    <th style="width:10%;">
                      Keterangan/Tujuannya
                    </th>
                    <th>
                    </th>
                  </tr>
                  <?php
                  $i = 100;
                  foreach ($permintaan_barang_sub as $pbs) {
                    $i++;
                    ?>
                    <tr>
                      <td style="width:10%;">
                        <p><?= $pbs['kode_pekerjaan'] ?></p>
                      </td>
                      <td style="width:10%;">
                        <p><?= $pbs['id_barang'] ?></p>
                      </td>
                      <td style="width:7%;">
                        <p><?= $pbs['qty'] ?></p>
                      </td>
                      <td style="width:10%;">
                        <p><?= $pbs['id_satuan'] ?></p>
                      </td>
                      <td style="width:10%;">
                        <p><?= $pbs['fungsi'] ?></p>
                      </td>
                      <td style="width:10%;">
                        <p><?= $pbs['target'] ?></p>
                      </td>
                      <td style="width:10%;">
                        <p><?= $pbs['keterangan'] ?></p>
                      </td>
                      <td style="width:6%;" align="center">
                        <button type="button" onclick="edit_item(<?= $pbs['id'] ?>)" data-toggle="modal" title="Edit" class="btn btn-sm btn-warning"><i class="fa fa-pencil"></i></button>
                        <button type="button" name="remove" id="<?= $i ?>" data-toggle="modal" title="Delete" data-target="#modal-delete-permintaan-<?= $i ?>" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></button>
                      </td>
                      <div class="modal modal-default fade" id="modal-delete-permintaan-<?= $i ?>" style="display: none;">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header bg-red">
                              <h4 class="modal-title" align="center"> Hapus Permintaan</h4>
                            </div>
                            <div class="modal-body" align="center">
                              <h3>Anda Yakin Ingin Menghapus data Permintaan ini?</h3>
                              <div class="box-footer" align="center">
                                <button type="button" class="btn btn-info" data-dismiss="modal"><i class="fa fa-close"></i> Tutup</button>
                                <a href="<?= base_url('master/permintaan_barang/delete_permintaan/' . $pbs['id']) ?>">
                                  <button type="button" class="btn btn-danger btn-send"><i class="fa fa-trash"></i> Hapus</button>
                                </a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </tr>
                  <?php
                  } ?>
                  <tfoot>
                    <tr>
                      <td colspan="7">
                      </td>
                      <td style="width:5%;">
                        <button type="button" onclick="tambah_item(<?= $permintaan_barang['id'] ?>)" <?= $add_disable ?> class="btn btn-block btn-primary pull-right"><i class="fa fa-plus"></i></button>
                      </td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
            <form method="POST" action="<?= base_url('master/Permintaan_barang/update') ?>" id="upload-create" enctype="multipart/form-data">
              <input type="hidden" value="<?= $permintaan_barang['kode'] ?>" name="kode">
              <input type="hidden" value="<?= $permintaan_barang['id'] ?>" name="id">
              <input type="hidden" value="<?= $count_log ?>" name="count_log">
              <div class="form-group col-md-12">
                <?php
                if ($permintaan_barang['file'] != "") {
                  ?>
                  <i class="fa fa-file fa-5x text-danger"></i>
                  <br>
                  <a href="<?= base_url('webfile/' . $permintaan_barang['file']) ?>" target="_blank"><i class="fa fa-download"></i> <?= $permintaan_barang['file'] ?></a>
                  <br>
                  <br>
                <?php } ?>
                <label for="form-file">File Lampiran</label>
                <input type="file" class="form-control" id="form-file" placeholder="Masukan File" name="file">
              </div>
              <div class="show_error"></div>
          </div>
          <div class="box-footer">
            <button type="submit" class="btn btn-primary btn-send"><i class="fa fa-save"></i> Simpan</button>
          </div>
          </form>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
        <!-- /.box -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

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
  $(document).ready(function() {
    $('[data-toggle="modal"]').tooltip();
  });

  function edit_item(id) {
    $("#load-form").html('loading...');
    $("#modal-form").modal();
    $("#title-form").html('Edit Item');
    $("#load-form").load("<?= base_url('master/Permintaan_barang/edit_item_barang_modal/') ?>" + id);
  }

  function tambah_item(id) {
    $("#load-form").html('loading...');
    $("#modal-form").modal();
    $("#title-form").html('Tambah Item');
    $("#load-form").load("<?= base_url('master/Permintaan_barang/tambah_item_barang_modal/') ?>" + id);
  }

  $(document).ready(function() {
    function get_lokasi(proyek_id) {
      if (proyek_id) {
        $.ajax({
          url: "<?= base_url() ?>ajax/get_lokasi/" + proyek_id,
          type: "GET",
          dataType: "json",
          success: function(data) {
            $("#lokasi").empty();
            if (!$.trim(data)) {
              $("#lokasi").text("Mohon pilih proyek terlebih dahulu");
            } else {
              $.each(data, function(key, value) {
                $("#lokasi").text(value.lokasi);
                $("#lokasi_input").val(value.lokasi);
              });
            }
          }
        });
      } else {
        $("#lokasi").empty();
        $("#lokasi").text("Mohon pilih proyek terlebih dahulu");
      }
    }

    $(document).on('change', '#proyek', function() {
      get_lokasi($("#proyek").val());
    });

    get_lokasi($("#proyek").val());

  });

  $("#upload-create").submit(function() {
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
        form.find(".show_error").slideUp().html("");
      },
      success: function(response, textStatus, xhr) {
        // alert(mydata);
        var str = response;
        if (str.indexOf("success") != -1) {
          form.find(".show_error").hide().html(response).slideDown("fast");
          setTimeout(function() {
            window.location.href = "<?= base_url('master/surat_permintaan/detail/' . $permintaan_barang['id']) ?>";
            // location.reload();
          }, 1000);
          $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled', false);
        } else {
          form.find(".show_error").hide().html(response).slideDown("fast");
          $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled', false);
        }
      },

      error: function(xhr, textStatus, errorThrown) {
        console.log(xhr);
        $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled', false);
        form.find(".show_error").hide().html(xhr).slideDown("fast");
      }

    });
    return false;
  });
</script>