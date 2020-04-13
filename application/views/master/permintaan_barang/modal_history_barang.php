<?php
$log_data = json_decode($permintaan_barang['log']);
rsort($log_data);
$count = count($log_data) + 1;
// print_r($log_data);
// die();
$i = $count;
foreach ($log_data as $log) {
    $i--;
    $permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('kode' => $log->kode));
    $master_proyek = $this->mymodel->selectDataone('master_proyek', array('id' => $log->id_proyek));
    $master_status = $this->mymodel->selectDataone('master_status', array('id' => $log->status_permintaan));
    ?>
    <div class="form-group">
        <div class="table-responsive">
            <table class="table table-bordered" id="dynamic_fieldinvoice" style="width:100%;">
                <tr>
                    <th style="width:10%;">
                        Kode Pekerjaan
                    </th>
                    <th style="width:10%;">
                        Jenis Barang
                    </th>
                    <th style="width:7%;">
                        Vol
                    </th>
                    <th style="width:10%;">
                        Satuan
                    </th>
                    <th style="width:10%;">
                        Fungsi
                    </th>
                    <th style="width:7%;">
                        Target Tanggal Datang
                    </th>
                    <th style="width:10%;">
                        Keterangan/Tujuannya
                    </th>
                </tr>
                <?php
                    $permintaan_barang_sub = $log->sub;
                    foreach ($permintaan_barang_sub as $pbs) {
                        $master_barang = $this->mymodel->selectDataone('master_barang', array('id' => $pbs->id_barang));
                        $master_kode = $this->mymodel->selectDataone('master_barang', array('id' => $pbs->kode_pekerjaan));
                        $master_satuan = $this->mymodel->selectDataone('master_satuan', array('id' => $pbs->id_satuan));
                        ?>
                    <tr>
                        <td style="width:10%;">
                            <p><?= $master_kode['kode_pekerjaan'] ?></p>
                        </td>
                        <td style="width:10%;">
                            <p><?= $master_barang['nama'] ?></p>
                        </td>
                        <td style="width:7%;">
                            <p><?= $pbs->qty ?></p>
                        </td>
                        <td style="width:10%;">
                            <p><?= $master_satuan['nama'] ?></p>
                        </td>
                        <td style="width:10%;">
                            <p><?= $pbs->fungsi ?></p>
                        </td>
                        <td style="width:10%;">
                            <p><?= $pbs->target ?></p>
                        </td>
                        <td style="width:10%;">
                            <p><?= $pbs->keterangan ?></p>
                        </td>
                    </tr>
                <?php
                    } ?>
            </table>
        </div>
    </div>
    <div class="form-group">
        <?php
            if ($log->file != "") {
                ?>
            <i class="fa fa-file fa-5x text-danger"></i>
            <br>
            <a href="<?= base_url('webfile/' . $log->file) ?>" target="_blank"><i class="fa fa-download"></i> <?= $log->file ?></a>
            <br>
            <br>
        <?php } ?>
        <hr>
    </div>
<?php
} ?>