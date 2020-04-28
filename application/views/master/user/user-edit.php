  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Profile
        <small>Ubah Profile</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Profile</a></li>
        <li class="active">Ubah Profile</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="panel">
            <div class="panel-heading">
              <h3 class="panel-title">
              </h3>
              <div class="pull-right">
              </div>
            </div>
            <!-- /.panel-header -->
            <div class="panel-body">
              <form action="<?= base_url('master/user/updateUser') ?>" enctype="multipart/form-data" method="POST" id="upload">
                <div class="show_error"></div>
                <input type="hidden" name="ids" value="<?= $user['id'] ?>">
                <input type="hidden" name="email" value="<?= $user['email'] ?>">
                <div class="col-lg-12 col-md-12 col-sm-12">
                  <div class="form-group">
                    <center>
                      <img src="<?= base_url('webfile/' . $user['file']) ?>" style="width: 200px" class="img img-thumbnail">
                      <br>
                    </center>
                    <label for="form-file">File</label>
                    <input type="file" class="form-control" id="form-file" placeholder="Masukan File" name="file">
                  </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12">
                  <div class="form-group">
                    <label>NIP</label>
                    <input type="text" name="nip" disabled class="form-control" value="<?= $user['nip'] ?>">
                  </div>
                  <div class="form-group">
                    <label>Nama</label>
                    <input type="text" name="dt[name]" class="form-control" value="<?= $user['name'] ?>">
                  </div>
                  <div class="form-group">
                    <label>Email</label>
                    <input type="text" name="dt[email]" class="form-control" value="<?= $user['email'] ?>">
                  </div>
                  <div class="form-group">
                    <label>Password Lama</label>
                    <input type="password" name="password_last" class="form-control" value="">
                  </div>
                  <div class="form-group">
                    <label>Password Baru</label>
                    <input type="password" name="password_new" class="form-control" value="">
                  </div>
                  <div class="form-group">
                    <label>Konfirmasi Password</label>
                    <input type="password" name="password_confirm" class="form-control" value="">
                  </div>
                  <div class="form-group">
                    <label for="form-role_id">Role</label>
                    <select style='width:100%' disabled class="form-control select2">
                      <?php
                      $role = $this->mymodel->selectWhere('role', 'id != 0');
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
                  <div class="form-group disable">
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
                      echo "<input type='checkbox' disabled value='" . $master_jenis_record['id'] . "' $text > " . $master_jenis_record['value'] . '<br>';
                    }
                    ?>
                  </div>
                  <div class="form-group">
                    <label>Description</label>
                    <textarea class="form-control" name="dt[desc]"><?= $user['desc'] ?></textarea>
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
                  <div style="float: right;">
                    <button class="btn btn-success btn-flat" type="submit"><i class="fa fa-floppy-o"></i> Save</button>
                  </div>
                </div>
              </form>
            </div>
            <!-- /.panel-body -->
          </div>
          <!-- /.panel -->

          <!-- /.panel -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <script type="text/javascript">
    $("#upload").submit(function() {
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
              window.location.href = "<?= base_url() ?>";
            }, 1000);
            $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i>Tambah Data').attr('disabled', false);
          } else {
            form.find(".show_error").hide().html(response).slideDown("fast");
            $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i>Tambah Data').attr('disabled', false);
          }
        },
        error: function(xhr, textStatus, errorThrown) {
          console.log(xhr);
          $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i>Tambah Data').attr('disabled', false);
          form.find(".show_error").hide().html(xhr).slideDown("fast");
        }
      });
      return false;
    });
  </script>