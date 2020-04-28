<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      User
      <small>Edit</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="#">Master</a></li>
      <li class="#">User</li>
      <li class="active">Edit</li>
    </ol>
  </section>
  <!-- Main content -->
  <section class="content">
    <form method="POST" action="<?= base_url('master/User/update') ?>" id="upload-create" enctype="multipart/form-data">
      <input type="hidden" name="id" value="<?= $user['id'] ?>">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <!-- /.box-header -->
            <div class="box-header">
              <h5 class="box-title">
                Edit User
              </h5>
            </div>
            <div class="box-body">
              <div class="show_error"></div>
              <div class="form-group">
                <label for="form-nip">Nip</label>
                <input type="text" class="form-control" id="form-nip" placeholder="Masukan Nip" name="dt[nip]" value="<?= $user['nip'] ?>">
              </div>
              <div class="form-group">
                <label for="form-name">Name</label>
                <input type="text" class="form-control" id="form-name" placeholder="Masukan Name" name="dt[name]" value="<?= $user['name'] ?>">
              </div>
              <div class="form-group">
                <label for="form-email">Email</label>
                <input type="text" class="form-control" id="form-email" placeholder="Masukan Email" name="dt[email]" value="<?= $user['email'] ?>">
              </div>
              <div class="form-group">
                <label for="form-password">Password Baru</label>
                <input type="password" class="form-control" id="form-password" placeholder="Masukan Password" name="password">
              </div>
              <div class="form-group">
                <label for="form-password">Konfirmasi Password Baru</label>
                <input type="password" class="form-control" id="form-password" placeholder="Masukan Password" name="password_confirmation_field">
              </div>
              <div class="form-group">
                <label for="form-role_id">Role</label>
                <select style='width:100%' name="dt[role_id]" class="form-control select2">
                  <?php
                  $role = $this->mymodel->selectWhere('role', NULL);
                  foreach ($role as $role_record) {
                    $text = "";
                    if ($role_record['id'] == $user['role_id']) {
                      $text = "selected";
                    }
                    echo "<option value=" . $role_record['id'] . " " . $text . " >" . $role_record['role'] . "</option>";
                  }
                  ?>
                </select>
              </div>
              <div class="form-group">
                <label for="form-desc">Jenis Permintaan</label><br>
                <?php
                $master_jenis = $this->mymodel->selectWhere('master_jenis', null);
                $jenis = json_decode($user['jenis']);
                foreach ($master_jenis as $master_jenis_record) {
                  $text = '';
                  foreach ($jenis as $jenis_record) {
                    if ($master_jenis_record['id'] == $jenis_record->jenis) {
                      $text = 'checked';
                    }
                  }
                  echo "<input type='checkbox' value='" . $master_jenis_record['id'] . "' name='jenis[]' $text > " . $master_jenis_record['value'] . '<br>';
                }
                ?>
              </div>
              <div class="form-group">
                <label for="form-desc">Desc</label>
                <input type="text" class="form-control" id="form-desc" placeholder="Masukan Desc" name="dt[desc]" value="<?= $user['desc'] ?>">
              </div>
              <div class="form-group">
                <?php
                if ($user['file'] != "") {
                  ?>
                  <i class="fa fa-file fa-5x text-danger"></i>
                  <br>
                  <a href="<?= base_url('webfile/' . $user['file']) ?>" target="_blank"><i class="fa fa-download"></i> <?= $user['file'] ?></a>
                  <br>
                  <br>
                <?php } ?>
                <label for="form-file">File</label>
                <input type="file" class="form-control" id="form-file" placeholder="Masukan File" name="file">
              </div>
              <div class="form-group">
                <?php
                if ($user['ttd'] != "") {
                  ?>
                  <i class="fa fa-file fa-5x text-danger"></i>
                  <br>
                  <a href="<?= base_url('webfile/' . $user['ttd']) ?>" target="_blank"><i class="fa fa-download"></i> <?= $user['ttd'] ?></a>
                  <br>
                  <br>
                <?php } ?>
                <label for="form-ttd">Tanda Tangan</label>
                <input type="file" class="form-control" id="form-ttd" placeholder="Masukan ttd" name="ttd">
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
  function get_dusun(jenis_id) {
    if (jenis_id) {
      $.ajax({
        url: "<?= base_url() ?>ajax/get_dusun/" + jenis_id,
        type: "GET",
        dataType: "json",
        success: function(data) {
          $("#dusun").empty();
          if (!$.trim(data)) {
            $("#dusun").append('<option value="">Data Tidak Tersedia</option>');
          } else {
            $.each(data, function(key, value) {
              $("#dusun").append('<option value="' +
                value.id + '">' + value.nama +
                '</option>');
            });
            get_rt($("#dusun").val());
          }
        }
      });
    } else {
      $("#dusun").empty();
      $("#dusun").append('<option value="">-Mohon Pilih jenis dulu-</option>');
    }
  }

  function get_rt(jenis_id) {
    if (jenis_id) {
      $.ajax({
        url: "<?= base_url() ?>ajax/get_rt/" + jenis_id,
        type: "GET",
        dataType: "json",
        success: function(data) {
          $("#rt").empty();
          if (!$.trim(data)) {
            $("#rt").append('<option value="">Data Tidak Tersedia</option>');
          } else {
            $.each(data, function(key, value) {
              $("#rt").append('<option value="' +
                value.id + '">' + value.nama +
                '</option>');
            });
          }
        }
      });
    } else {
      $("#rt").empty();
      $("#rt").append('<option value="">-Mohon Pilih jenis dulu-</option>');
    }
  }

  $(document).on('change', '#desa', function() {
    get_dusun($("#desa").val());
  });

  $(document).on('change', '#dusun', function() {
    get_rt($("#dusun").val());
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
            // window.location.href = "<?= base_url('master/User') ?>";
            location.reload();
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