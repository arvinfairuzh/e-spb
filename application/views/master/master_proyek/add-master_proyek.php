<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Master Proyek
      <small>Tambah</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="#">Master</a></li>
      <li class="#">Master Proyek</li>
      <li class="active">Tambah</li>
    </ol>
  </section>
  <!-- Main content -->
  <section class="content">
    <form method="POST" action="<?= base_url('master/Master_proyek/store') ?>" id="upload-create" enctype="multipart/form-data">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <!-- /.box-header -->
            <div class="box-header">
              <h5 class="box-title">
                Tambah Master Proyek
              </h5>
            </div>
            <div class="box-body">
              <div class="show_error"></div>
              <div class="form-group col-md-12">
                <label for="form-kode">Kode Proyek</label>
                <input type="text" class="form-control" id="form-kode" placeholder="Masukan Kode" name="dt[kode]">
              </div>
              <div class="form-group col-md-12">
                <label for="form-nama">Nama Proyek</label>
                <input type="text" class="form-control" id="form-nama" placeholder="Masukan Nama" name="dt[nama]">
              </div>
              <div class="form-group col-md-12">
                <label for="form-lokasi">Lokasi</label>
                <input type="text" class="form-control" id="form-lokasi" placeholder="Masukan Lokasi" name="dt[lokasi]">
              </div>
              <div class="form-group col-md-12">
                <div class="table-responsive">
                  <table class="table table-bordered" id="dynamic_fieldinvoice" style="width:100%;">
                    <tr>
                      <th>
                        Role
                      </th>
                      <th>
                        Nama
                      </th>
                      <th>
                      </th>
                    </tr>
                    <tr>
                      <td>
                        <select style="width: 100%" id="role0" name="id_role[]" class="form-control select2 role">
                          <option value="0">Pilih Role</option>
                          <?php
                          $role = $this->mymodel->selectWhere('role', 'id != 0 AND id != 5 AND id != 6');
                          foreach ($role as $role_record) {
                            echo "<option value=" . $role_record['id'] . ">" . $role_record['role'] . "</option>";
                          }
                          ?>
                        </select>
                      </td>
                      <td>
                        <select style="width: 100%" id="user0" name="id_user[]" class="form-control select2 user">
                          <option value="0">Pilih User</option>
                      </td>
                      <td style="width:5%;">
                        <button type="button" name="addinvoice" id="addinvoice" class="btn btn-primary pull-right"><i class="fa fa-plus"></i></button>
                      </td>
                    </tr>
                  </table>
                </div>
              </div>
              <div class="form-group col-md-12">
                <label for="form-file">File</label>
                <input type="file" class="form-control" id="form-file" placeholder="Masukan File" name="file">
              </div>
            </div>
            <div class="box-footer">
              <button type="submit" class="btn btn-primary btn-send"><i class="fa fa-save"></i> Save</button>
              <button type="reset" class="btn btn-danger"><i class="fa fa-refresh"></i> Reset</button>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </form>
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script type="text/javascript">
  $(document).ready(function() {
    var i = 1;
    $('#addinvoice').click(function() {
      i++;
      $('#dynamic_fieldinvoice').append('<tr id="rowinvoice' + i + '">' +

        '<td style="width:10%;">' +
        '<select style="width: 100%" id="role' + i + '" name="id_role[]" class="form-control select2 role">' +
        '<option value="0">Pilih Role</option>' +
        <?php
        $role = $this->mymodel->selectWhere('role', 'id != 0 AND id != 5 AND id != 6');
        foreach ($role as $role_record) {
          ?> '        <option value="<?= $role_record['id'] ?>"><?= $role_record['role'] ?></option>' +
        <?php } ?> '</select>' +
        '</td>' +
        '<td style="width:10%;">' +
        '<select style="width: 100%" id="user' + i + '" name="id_user[]" class="form-control select2 user">' +
        '<option value="0">Pilih User</option>' +
        '</td>' +
        '<td><button type="button" name="remove" id="' + i + '" class="btn btn-danger btn_remove pull-right"><i class="fa fa-trash"></i></button></td>' +
        '</tr>');
      $('.select2').select2();

    });

    function get_user(role_id, id) {
      if (role_id) {
        $.ajax({
          url: "<?= base_url() ?>ajax/get_user/" + role_id,
          type: "GET",
          dataType: "json",
          success: function(data) {
            $("#user" + id).empty();
            if (!$.trim(data)) {
              $("#user" + id).append('<option value="">Data Tidak Tersedia</option>');
            } else {
              $.each(data, function(key, value) {
                $("#user" + id).append('<option value="' +
                  value.id + '">' + value.name +
                  '</option>');
              });
            }
          }
        });
      } else {
        $("#user" + id).empty();
        $("#user" + id).append('<option value="">-Mohon Pilih Role dulu-</option>');
      }
    }

    $(document).on('change', '.role', function() {
      var str = $(this).attr("id");
      var id = str.substring(4);
      get_user($("#role" + id).val(), id);
    });

    $(document).on('click', '.btn_remove', function() {
      var button_id = $(this).attr("id");
      $('#rowinvoice' + button_id + '').remove();
    });

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
            window.location.href = "<?= base_url('master/Master_proyek') ?>";
          }, 1000);
          $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
        } else {
          form.find(".show_error").hide().html(response).slideDown("fast");
          $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
        }
      },
      error: function(xhr, textStatus, errorThrown) {
        console.log(xhr);
        $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
        form.find(".show_error").hide().html(xhr).slideDown("fast");
      }
    });
    return false;
  });
</script>