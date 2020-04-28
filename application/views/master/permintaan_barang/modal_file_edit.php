<form method="POST" autocomplete="off" action="<?= base_url('master/Permintaan_barang/edit_file/' . $id) ?>" enctype="multipart/form-data">
    <input type="hidden" value="<?= $permintaan_barang['kode'] ?>" name="kode">
    <input type="hidden" value="<?= $permintaan_barang['id'] ?>" name="id">
    <div class="form-group">
        <label>Waktu Pelaksanaan</label>
        <input type="file" class="form-control" name="file" id="">
    </div>
    <div class="form-group">
        <label>Keterangan</label>
        <textarea class="form-control" name="keterangan" rows="1" id=""><?= $file['keterangan'] ?></textarea>
    </div>
    <div class="form-group">
        <hr>
        <button type="submit" class="btn btn-primary btn-send">Ubah</button>
        <button type="close" data-dismiss="modal" class="btn btn-danger btn-send-approve">Batal</button>
    </div>
</form>

<script>
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
                        // window.location.href = "<?= base_url('master/Permintaan_barang') ?>";
                        location.reload();
                    }, 1000);
                    $(".btn-send").addClass("disabled").html('Ubah item').attr('disabled', false);
                } else {
                    form.find(".show_error").hide().html(response).slideDown("fast");
                    $(".btn-send").removeClass("disabled").html('Ubah item').attr('disabled', false);
                }
            },

            error: function(xhr, textStatus, errorThrown) {
                console.log(xhr);
                $(".btn-send").removeClass("disabled").html('Ubah item').attr('disabled', false);
                form.find(".show_error").hide().html(xhr).slideDown("fast");
            }

        });
        return false;
    });
</script>