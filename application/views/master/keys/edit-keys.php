
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Keys
        <small>Master</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">master</a></li>
        <li class="active">Keys</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
    <form method="POST" action="<?= base_url('master/Keys/update') ?>" id="upload-create" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<?= $keys['id'] ?>">


      <div class="row">
        <div class="col-xs-8">
          <div class="box">
            <!-- /.box-header -->
            <div class="box-header">
              <h5 class="box-title">
                  Edit Keys
              </h5>
            </div>
            <div class="box-body">
                <div class="show_error"></div><div class="form-group">
                      <label for="form-user_id">User Id</label>
                      <input type="text" class="form-control" id="form-user_id" placeholder="Masukan User Id" name="dt[user_id]" value="<?= $keys['user_id'] ?>">
                  </div><div class="form-group">
                      <label for="form-key">Key</label>
                      <input type="text" class="form-control" id="form-key" placeholder="Masukan Key" name="dt[key]" value="<?= $keys['key'] ?>">
                  </div><div class="form-group">
                      <label for="form-level">Level</label>
                      <input type="text" class="form-control" id="form-level" placeholder="Masukan Level" name="dt[level]" value="<?= $keys['level'] ?>">
                  </div><div class="form-group">
                      <label for="form-ignore_limits">Ignore Limits</label>
                      <input type="text" class="form-control" id="form-ignore_limits" placeholder="Masukan Ignore Limits" name="dt[ignore_limits]" value="<?= $keys['ignore_limits'] ?>">
                  </div><div class="form-group">
                      <label for="form-is_private_key">Is Private Key</label>
                      <input type="text" class="form-control" id="form-is_private_key" placeholder="Masukan Is Private Key" name="dt[is_private_key]" value="<?= $keys['is_private_key'] ?>">
                  </div><div class="form-group">
                      <label for="form-ip_addresses">Ip Addresses</label>
                      <input type="text" class="form-control" id="form-ip_addresses" placeholder="Masukan Ip Addresses" name="dt[ip_addresses]" value="<?= $keys['ip_addresses'] ?>">
                  </div><div class="form-group">
                      <label for="form-date_created">Date Created</label>
                      <input type="text" class="form-control" id="form-date_created" placeholder="Masukan Date Created" name="dt[date_created]" value="<?= $keys['date_created'] ?>">
                  </div></div>
            <div class="box-footer">
                <button type="submit" class="btn btn-primary btn-send" ><i class="fa fa-save"></i> Save</button>
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
      $("#upload-create").submit(function(){
            var form = $(this);
            var mydata = new FormData(this);
            $.ajax({
                type: "POST",
                url: form.attr("action"),
                data: mydata,
                cache: false,
                contentType: false,
                processData: false,
                beforeSend : function(){
                    $(".btn-send").addClass("disabled").html("<i class='la la-spinner la-spin'></i>  Processing...").attr('disabled',true);
                    form.find(".show_error").slideUp().html("");
                },
                success: function(response, textStatus, xhr) {
                    // alert(mydata);
                   var str = response;
                    if (str.indexOf("success") != -1){
                        form.find(".show_error").hide().html(response).slideDown("fast");
                        setTimeout(function(){ 
                           window.location.href = "<?= base_url('master/Keys') ?>";
                        }, 1000);
                        $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);


                    }else{
                        form.find(".show_error").hide().html(response).slideDown("fast");
                        $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);
                        
                    }
                },
                error: function(xhr, textStatus, errorThrown) {
                  console.log(xhr);
                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);
                    form.find(".show_error").hide().html(xhr).slideDown("fast");

                }
            });
            return false;
    
        });
  </script>