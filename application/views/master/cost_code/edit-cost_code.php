

  <!-- Content Wrapper. Contains page content -->



    <form method="POST" action="<?= base_url('master/Cost_code/update') ?>" id="upload-create" enctype="multipart/form-data">

    <input type="hidden" name="id" value="<?= $cost_code['id'] ?>">



                <div class="show_error"></div><div class="form-group">

                      <label for="form-kode_kategori">Kode Kategori</label>

                      <input type="text" class="form-control" id="form-kode_kategori" placeholder="Masukan Kode Kategori" name="dt[kode_kategori]" value="<?= $cost_code['kode_kategori'] ?>">

                  </div><div class="form-group">

                      <label for="form-kode_costcontrol">Kode Costcontrol</label>

                      <input type="text" class="form-control" id="form-kode_costcontrol" placeholder="Masukan Kode Costcontrol" name="dt[kode_costcontrol]" value="<?= $cost_code['kode_costcontrol'] ?>">

                  </div><div class="form-group">

                      <label for="form-deskripsi">Deskripsi</label>

                      <input type="text" class="form-control" id="form-deskripsi" placeholder="Masukan Deskripsi" name="dt[deskripsi]" value="<?= $cost_code['deskripsi'] ?>">

                  </div><div class="form-group">

                      <label for="form-uom">Uom</label>

                      <select style='width:100%' name="dt[uom]" class="form-control select2">

                        <?php 

                        $master_uom = $this->mymodel->selectWhere('master_uom',null);

                        foreach ($master_uom as $master_uom_record) {

                          $text="";

                          if($master_uom_record['id']==$cost_code['uom']){

                            $text = "selected";

                          }



                          echo "<option value=".$master_uom_record['id']." ".$text." >".$master_uom_record['nama']."</option>";

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

                          // window.location.href = "<?= base_url('master/Cost_code') ?>";
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