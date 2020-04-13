<div class="form-group">
    <select required id="jenis" class="form-control select2-modal" name="sp">
        <?php
        $id_user = $_SESSION['id'];
        $master_jenis = $this->mymodel->selectWithQuery("SELECT master_jenis.id, master_jenis.value FROM user_jenis LEFT JOIN master_jenis ON user_jenis.jenis = master_jenis.id WHERE id_user = '$id_user'");
        foreach ($master_jenis as $master_jenis_record) {
            echo "<option value=" . $master_jenis_record['id'] . "> Ajukan " . $master_jenis_record['value'] . "</option>";
        }
        ?>
    </select>
</div>
<div class="form-group">
    <select style="min-width: 150px;" required id="proyek" name="id_proyek" class="form-control select2-modal">
        <?php
        $id_user = $_SESSION['id'];
        $master_proyek = $this->mymodel->selectWithQuery("SELECT master_proyek.id, master_proyek.nama FROM master_proyek_sub LEFT JOIN master_proyek ON master_proyek_sub.kode = master_proyek.kode WHERE id_user = '$id_user'");
        foreach ($master_proyek as $master_proyek_record) {
            echo "<option value=" . $master_proyek_record['id'] . ">" . $master_proyek_record['nama'] . "</option>";
        }
        ?>
    </select>
</div>
<hr>
<button type="button" onclick="ajukan_confirm()" class="btn btn-primary btn-send-approve"><i class="fa fa-send"></i> Ajukan Surat Permintaan</button>
<script>
    $('.select2-modal').select2();

    function ajukan_confirm() {
        jenis = document.getElementById("jenis").value
        proyek = document.getElementById("proyek").value
        $("#load-form").html('loading...');
        $("#modal-form").modal();
        $("#title-form").html('Konfirmasi Ajukan Surat Permintaan');
        $("#load-form").load("<?= base_url('master/Permintaan_barang/ajukan_confirm_modal/') ?>" + jenis + '/' + proyek);
    }
</script>