<form method="POST" action="<?= base_url('master/permintaan_barang/ajukan/') ?>" id="upload-create" enctype="multipart/form-data">
    <div class="show_error"></div>
    <div class="row">
        <div class="col-md-12">
            <label> Apa anda yakin akan mengajukan surat permintaan ini?</label>
        </div>
        <div class="col-md-4">
            <label> Jenis Surat Pengajuan</label>
            <p><?= $master_jenis['value'] ?></p>
            <input type="hidden" value="<?= $jenis ?>" name="sp">
        </div>
        <div class="col-md-4">
            <label> Proyek</label>
            <p><?= $master_proyek['nama'] ?></p>
            <input type="hidden" value="<?= $proyek ?>" name="id_proyek">
        </div>
        <div class="col-md-12">
        <hr>
            <button type="submit" class="btn btn-primary btn-send-approve">Ajukan</button>
            <button type="close" data-dismiss="modal" class="btn btn-danger btn-send-approve">Batal</button>
        </div>
    </div>
</form>