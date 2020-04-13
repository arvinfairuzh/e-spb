<?php
$kode_readonly = '';
$add_disable = '';
$keterangan_readonly = '';
$select2 = '';
if ($_SESSION['role_id'] == 1) {
    $keterangan_hidden = 'hide';
} else if ($_SESSION['role_id'] == 2) { } else if ($_SESSION['role_id'] == 3) {
    $add_disable = 'disabled';
    $select2 = 'select2';
}
?>

<form method="POST" autocomplete="off" action="<?= base_url('master/Permintaan_barang/ubah_subkon/' . $permintaan_barang_sub['id']) ?>">
    <input type="hidden" value="<?= $permintaan_barang['kode'] ?>" name="kode">
    <input type="hidden" value="<?= $permintaan_barang['id'] ?>" name="id">
    <div class="form-group">
        <label>Kode Pekerjaan</label>
        <select id="kode_cost" style="width: 100%;" name="kode_pekerjaan[]" class="form-control select2">
            <option value="0">Pilih Kode Pekerjaan</option>
            <?php
            $cost_code = $this->mymodel->selectWhere('cost_code', null);
            foreach ($cost_code as $cost_code_record) {
                $text = '';
                if ($cost_code_record['kode_costcontrol'] == $permintaan_barang_sub['kode_pekerjaan']) {
                    $text = 'selected';
                }
                echo "<option value=" . $cost_code_record['kode_costcontrol'] . " $text >" . $cost_code_record['kode_costcontrol'] . "</option>";
            }
            ?>
        </select>
    </div>
    <div class="form-group autocomplete">
        <label>Jenis Barang</label>
        <input type="text" class="form-control" id="myInput" value="<?= $permintaan_barang_sub['id_barang'] ?>" name="id_barang[]">
    </div>
    <div class="form-group">
        <label>Volume</label>
        <input style="" type="number" step="0.01" value="<?= $permintaan_barang_sub['qty'] ?>" class="form-control qty" id="qty" name="qty[]">
    </div>
    <div class="form-group">
        <label>Satuan</label>
        <select style="width: 100%;" id="satuan" name="id_satuan[]" class="form-control satuan">
            <?php
            $cost_code = $this->mymodel->selectWithQuery("SELECT * FROM cost_code GROUP BY uom");
            foreach ($cost_code as $cost_code_record) {
                $text = '';
                if ($cost_code_record['uom'] == $permintaan_barang_sub['id_satuan']) {
                    $text = 'selected';
                }
                echo "<option value=" . $cost_code_record['uom'] . " $text >" . $cost_code_record['uom'] . "</option>";
            }
            ?>
        </select>
    </div>
    <div class="form-group">
        <label>Waktu Pelaksanaan</label>
        <input type="date" class="form-control" name="waktu_pelaksanaan[]" value="<?= $permintaan_barang_sub['waktu_pelaksanaan'] ?>" id="">
    </div>
    <div class="form-group">
        <label>Persyaratan</label><br>
        <?php
        $master_persyaratan = $this->mymodel->selectWhere('master_persyaratan', null);
        $persyaratan = json_decode($permintaan_barang_sub['persyaratan']);
        foreach ($master_persyaratan as $master_persyaratan_record) {
            $text = '';
            foreach ($persyaratan as $persyaratan_record) {
                if ($master_persyaratan_record['id'] == $persyaratan_record->persyaratan) {
                    $text = 'checked';
                }
            }
            echo "<input type='checkbox' value='" . $master_persyaratan_record['id'] . "' name='persyaratan[]' $text > " . $master_persyaratan_record['nama'] . '<br>';
        }
        ?>
    </div>
    <div class="form-group <?= $keterangan_hidden ?> ">
        <label>Keterangan</label>
        <textarea class="form-control" name="keterangan[]" rows="1" id=""><?= $permintaan_barang_sub['keterangan'] ?></textarea>
    </div>
    <div class="form-group">
        <hr>
        <button type="submit" class="btn btn-primary btn-send">Ubah item</button>
        <button type="close" data-dismiss="modal" class="btn btn-danger btn-send-approve">Batal</button>
    </div>
</form>

<script>
    function autocomplete(inp, arr) {
        var currentFocus;
        inp.addEventListener("input", function(e) {
            var a, b, i, val = this.value;
            closeAllLists();
            if (!val) {
                return false;
            }
            currentFocus = -1;
            a = document.createElement("DIV");
            a.setAttribute("id", this.id + "autocomplete-list");
            a.setAttribute("class", "autocomplete-items");
            this.parentNode.appendChild(a);
            for (i = 0; i < arr.length; i++) {
                if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
                    b = document.createElement("DIV");
                    b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
                    b.innerHTML += arr[i].substr(val.length);
                    b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
                    b.addEventListener("click", function(e) {
                        inp.value = this.getElementsByTagName("input")[0].value;
                        closeAllLists();
                    });
                    a.appendChild(b);
                }
            }
        });
        inp.addEventListener("keydown", function(e) {
            var x = document.getElementById(this.id + "autocomplete-list");
            if (x) x = x.getElementsByTagName("div");
            if (e.keyCode == 40) {
                currentFocus++;
                addActive(x);
            } else if (e.keyCode == 38) {
                currentFocus--;
                addActive(x);
            } else if (e.keyCode == 13) {
                e.preventDefault();
                if (currentFocus > -1) {
                    if (x) x[currentFocus].click();
                }
            }
        });

        function addActive(x) {
            if (!x) return false;
            removeActive(x);
            if (currentFocus >= x.length) currentFocus = 0;
            if (currentFocus < 0) currentFocus = (x.length - 1);
            x[currentFocus].classList.add("autocomplete-active");
        }

        function removeActive(x) {
            for (var i = 0; i < x.length; i++) {
                x[i].classList.remove("autocomplete-active");
            }
        }

        function closeAllLists(elmnt) {
            var x = document.getElementsByClassName("autocomplete-items");
            for (var i = 0; i < x.length; i++) {
                if (elmnt != x[i] && elmnt != inp) {
                    x[i].parentNode.removeChild(x[i]);
                }
            }
        }
        document.addEventListener("click", function(e) {
            closeAllLists(e.target);
        });
    }

    var countries = [
        <?php foreach ($cost_code as $key => $k) {   ?> '<?= $k['deskripsi'] ?> ',
        <?php } ?>
    ];
    autocomplete(document.getElementById("myInput"), countries);

    $(document).ready(function() {
        function get_jenis_barang(kode_id) {
            if (kode_id) {
                $.ajax({
                    url: "<?= base_url() ?>ajax/get_jenis_barang/" + kode_id,
                    type: "GET",
                    dataType: "json",
                    success: function(data) {
                        $("#myInput").empty();
                        if (!$.trim(data)) {
                            $("#myInput").val("Mohon pilih kode terlebih dahulu");
                        } else {
                            $.each(data, function(key, value) {
                                $("#myInput").val(value.deskripsi);
                                $("#satuan").val(value.uom);
                            });
                        }
                    }
                });
            } else {
                $("#myInput").empty();
                $("#myInput").val("Mohon pilih kode terlebih dahulu");
            }
        }

        $(document).on('change', '#kode_cost', function() {
            get_jenis_barang($("#kode_cost").val());
        });

    });

    $('.select2').select2();
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