

  <!-- Content Wrapper. Contains page content -->



    <form method="POST" action="<?= base_url('master/Master_barang/update') ?>" id="upload-create" enctype="multipart/form-data">

    <input type="hidden" name="id" value="<?= $master_barang['id'] ?>">



                <div class="show_error"></div><div class="form-group">

                      <label for="form-kode_pekerjaan">Kode Pekerjaan</label>

                      <input type="text" class="form-control" id="form-kode_pekerjaan" placeholder="Masukan Kode Pekerjaan" name="dt[kode_pekerjaan]" value="<?= $master_barang['kode_pekerjaan'] ?>">

                  </div><div class="form-group">

                      <label for="form-id_satuan">Id Satuan</label>

                      <select style='width:100%' name="dt[id_satuan]" class="form-control select2">

                        <?php 

                        $master_satuan = $this->mymodel->selectWhere('master_satuan',null);

                        foreach ($master_satuan as $master_satuan_record) {

                          $text="";

                          if($master_satuan_record['id']==$master_barang['id_satuan']){

                            $text = "selected";

                          }



                          echo "<option value=".$master_satuan_record['id']." ".$text." >".$master_satuan_record['nama']."</option>";

                        }

                        ?>

                      </select>

                  </div><div class="form-group">

                      <label for="form-nama">Nama</label>

                      <input type="text" class="form-control" id="form-nama" placeholder="Masukan Nama" name="dt[nama]" value="<?= $master_barang['nama'] ?>">

                  </div><div class="form-group">

                      <label for="form-jenis">Jenis</label>

                      <select style='width:100%' name="dt[jenis]" class="form-control select2">

                        <?php 

                        $master_jenis = $this->mymodel->selectWhere('master_jenis',null);

                        foreach ($master_jenis as $master_jenis_record) {

                          $text="";

                          if($master_jenis_record['value']==$master_barang['jenis']){

                            $text = "selected";

                          }



                          echo "<option value=".$master_jenis_record['value']." ".$text." >".$master_jenis_record['value']."</option>";

                        }

                        ?>

                      </select>

                  </div><?php

                  if($file['dir']!=""){

                  $types = explode("/", $file['mime']);

                  if($types[0]=="image"){

                  ?>

                    <img src="<?= base_url($file['dir']) ?>" style="width: 200px" class="img img-thumbnail">

                    <br>

                  <?php }else{ ?>

                    

                    <i class="fa fa-file fa-5x text-danger"></i>

                    <br>

                    <a href="<?= base_url($file['dir']) ?>" target="_blank"><i class="fa fa-download"></i> <?= $file['name'] ?></a>

                    <br>

                  <br>

                <?php } ?>

                <?php } ?><div class="form-group">

                      <label for="form-file">File</label>

                      <input type="file" class="form-control" id="form-file" placeholder="Masukan File" name="file">

                  </div>
                <hr>

                <button type="submit" class="btn btn-primary btn-send" ><i class="fa fa-save"></i> Save</button>

                <button type="reset" class="btn btn-danger"><i class="fa fa-refresh"></i> Reset</button>

             

           
      </form>


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

                          // window.location.href = "<?= base_url('master/Master_barang') ?>";
                          $("#load-table").html('');
                          loadtable($("#select-status").val());
                          $("#modal-form").modal('hide');

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