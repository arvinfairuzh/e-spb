<form method="POST" action="<?= base_url('master/permintaan_barang/verifikasi/' . $id) ?>" id="upload-create" enctype="multipart/form-data">
    <div class="show_error"></div>
    <div class="form-group">
        <label>Terima atau Tolak Permintaan ini ?</label>
        <select name="status" class="form-control" id="status">
            <option value="0">Terima</option>
            <?php
            if ($_SESSION['role_id'] == 5) {
                ?>

            <?php
            } else {
                ?>
                <option value="1">Tolak</option>
            <?php
            }
            ?>
        </select>
    </div>
    <div class="form-group">
        <label>Catatan</label>
        <textarea name="catatan" class="form-control"></textarea>
    </div>
    <hr>
    <button type="submit" class="btn btn-primary btn-send-approve"><i class="fa fa-send"></i> Proses</button>
</form>
<script type="text/javascript">
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
                $(".btn-send-approve").addClass("disabled").html("<i class='la la-spinner la-spin'></i>  Processing...").attr('disabled', true);
                form.find(".show_error").slideUp().html("");
            },
            success: function(response, textStatus, xhr) {
                var str = response;
                if (str.indexOf("success") != -1) {
                    form.find(".show_error").hide().html(response).slideDown("fast");
                    setTimeout(function() {
                        $("#load-table").html('');
                        loadtable($("#select-status").val());
                        $("#modal-form").modal('hide');
                    }, 1000);
                    $(".btn-send-approve").removeClass("disabled").html('<i class="fa fa-send"></i> Kirim').attr('disabled', false);
                } else {
                    form.find(".show_error").hide().html(response).slideDown("fast");
                    $(".btn-send-approve").removeClass("disabled").html('<i class="fa fa-send"></i> Kirim').attr('disabled', false);
                }
            },
            error: function(xhr, textStatus, errorThrown) {
                $(".btn-send-approve").removeClass("disabled").html('<i class="fa fa-send"></i> Kirim').attr('disabled', false);
                form.find(".show_error").hide().html(xhr).slideDown("fast");
            }
        });
        return false;
    });
</script>