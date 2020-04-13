<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Permintaan Subkon
            <small>Detail</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Master</a></li>
            <li class="#">Permintaan Subkon</li>
            <li class="active">Detail</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-primary">
                    <!-- /.box-header -->
                    <div class="box-header">
                        <div class="col-md-12">
                            <h5 class="box-title">
                                Detail Permintaan Subkon
                            </h5>
                            <div class="pull-right">
                                <button type="button" class="btn btn-info" onclick="cetak(<?= $permintaan_barang['id'] ?>)"><i class="fa fa-print"></i> Cetak</button>
                                <?php
                                if ($permintaan_barang['id_pic'] == $_SESSION['id']) {
                                    ?>
                                    <button type="button" onclick="hapus()" class="btn btn-danger"><i class="fa fa-trash-o"></i> Hapus</button>
                                <?php
                                } else if ($_SESSION['role_id'] == 0) { ?>
                                    <button type="button" onclick="hapus()" class="btn btn-danger"><i class="fa fa-trash-o"></i> Hapus</button>
                                <?php } else { ?>
                                <?php
                                }
                                ?>
                            </div>
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="form-group col-md-3">
                            <label for="form-nama_proyek">Proyek</label>
                            <p><?= $master_proyek['nama'] ?></p>
                            </select>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="form-lokasi">Lokasi</label>
                            <p><?= $master_proyek['lokasi'] ?></p>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="form-kode">Kode</label>
                            <p><?= $permintaan_barang['kode'] ?></p>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="form-tanggal">Tanggal</label>
                            <p>
                                <?php
                                $tanggal = date_create($permintaan_barang['created_at']);
                                echo date_format($tanggal, "d M Y h:i:s");
                                ?>
                            </p>
                        </div>
                        <div class="form-group col-md-12">
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
                                            Waktu Pelaksanaan
                                        </th>
                                        <th style="width:7%;">
                                            Persyaratan
                                        </th>
                                        <th style="width:10%;">
                                            Keterangan/Tujuannya
                                        </th>
                                    </tr>
                                    <?php
                                    foreach ($permintaan_barang_sub as $pbs) {
                                        ?>
                                        <tr>
                                            <td style="width:10%;">
                                                <p><?= $pbs['kode_pekerjaan'] ?></p>
                                            </td>
                                            <td style="width:10%;">
                                                <p><?= $pbs['id_barang'] ?></p>
                                            </td>
                                            <td style="width:7%;">
                                                <p><?= $pbs['qty'] ?></p>
                                            </td>
                                            <td style="width:10%;">
                                                <p><?= $pbs['id_satuan'] ?></p>
                                            </td>
                                            <td style="width:10%;">
                                                <p><?= $pbs['waktu_pelaksanaan'] ?></p>
                                            </td>
                                            <td style="width:10%;">
                                                <?php
                                                    $master_persyaratan = $this->mymodel->selectWhere('master_persyaratan', null);
                                                    $persyaratan = json_decode($pbs['persyaratan']);
                                                    foreach ($master_persyaratan as $master_persyaratan_record) {
                                                        $text = '';
                                                        foreach ($persyaratan as $persyaratan_record) {
                                                            if ($master_persyaratan_record['id'] == $persyaratan_record->persyaratan) {
                                                                $text = 'checked';
                                                            }
                                                        }
                                                        echo "<input type='checkbox' disabled value='" . $master_persyaratan_record['id'] . "' name='persyaratan[]' $text > " . $master_persyaratan_record['nama'] . '<br>';
                                                    }
                                                    ?>
                                            </td>
                                            <td style="width:10%;">
                                                <p><?= $pbs['keterangan'] ?></p>
                                            </td>
                                        </tr>
                                    <?php
                                    } ?>
                                </table>
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <label for="form-cost_control">Status Permintaan</label>
                            <p><?= $master_status['nama'] ?></p>
                        </div>
                        <div class="form-group col-md-12">
                            <label for="form-file">File Lampiran</label><br>
                            <?php
                            if ($permintaan_barang['file'] != "") {
                                ?>
                                <i class="fa fa-file fa-5x text-danger"></i>
                                <br>
                                <a href="<?= base_url('webfile/' . $permintaan_barang['file']) ?>" target="_blank"><i class="fa fa-download"></i> <?= $permintaan_barang['file'] ?></a>
                                <br>
                                <br>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="box-footer">
                        <?php
                        if ($_SESSION['role_id'] == 1) {
                            ?>
                            <?php
                                if ($permintaan_barang['status_permintaan'] == 0) {
                                    ?>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-ajukan" class="btn btn-success"><i class="fa fa-archive"></i> Ajukan</a>
                                <button type="button" class="btn btn-primary" onclick="edit(<?= $permintaan_barang['id'] ?>)"><i class="fa fa-pencil"></i> Edit</button>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-batalkan" class="btn btn-danger"><i class="fa fa-ban"></i> Batalkan</a>
                            <?php
                                } else { ?>
                            <?php
                                }
                            } else if ($_SESSION['role_id'] == 2) {
                                ?>
                            <?php
                                if ($permintaan_barang['status_permintaan'] == 1) {
                                    ?>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-terima" class="btn btn-success"><i class="fa fa-check"></i> Terima</a>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-tolak" class="btn btn-danger"><i class="fa fa-times"></i> Tolak</a>
                                <button type="button" class="btn btn-primary" onclick="edit(<?= $permintaan_barang['id'] ?>)"><i class="fa fa-pencil"></i> Edit</button>
                            <?php
                                } else { ?>
                            <?php
                                }
                            } else if ($_SESSION['role_id'] == 3) {
                                ?>
                            <?php
                                if ($permintaan_barang['status_permintaan'] == 3) {
                                    ?>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-terima" class="btn btn-success"><i class="fa fa-check"></i> Terima</a>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-tolak" class="btn btn-danger"><i class="fa fa-times"></i> Tolak</a>
                                <button type="button" class="btn btn-primary" onclick="edit(<?= $permintaan_barang['id'] ?>)"><i class="fa fa-pencil"></i> Edit</button>
                            <?php
                                } else { ?>
                            <?php
                                }
                            } else if ($_SESSION['role_id'] == 4) {
                                ?>
                            <?php
                                if ($permintaan_barang['status_permintaan'] == 5) {
                                    ?>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-terima" class="btn btn-success"><i class="fa fa-check"></i> Terima</a>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-tolak" class="btn btn-danger"><i class="fa fa-times"></i> Tolak</a>
                            <?php
                                } else { ?>
                            <?php
                                }
                            } else if ($_SESSION['role_id'] == 5) {
                                ?>
                            <?php
                                if ($permintaan_barang['status_permintaan'] == 7) {
                                    ?>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-terima" class="btn btn-success"><i class="fa fa-check"></i> Terima</a>
                            <?php
                                } else { ?>
                            <?php
                                }
                            } else if ($_SESSION['role_id'] == 6) {
                                ?>
                            <?php
                                if ($permintaan_barang['status_permintaan'] == 8) {
                                    ?>
                            <?php
                                } else { ?>
                            <?php
                                }
                            } else {
                                ?>
                            <button type="button" class="btn btn-primary" onclick="edit(<?= $permintaan_barang['id'] ?>)"><i class="fa fa-pencil"></i> Edit</button>
                        <?php
                        }
                        ?>
                        <div class="modal modal-default fade" id="modal-verifikasi-permintaan-batalkan" style="display: none;">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header bg-green">
                                        <h4 class="modal-title" align="center"> Batalkan Permintaan</h4>
                                    </div>
                                    <div class="modal-body" align="center">
                                        <form action="<?= base_url('master/permintaan_barang/batalkan/' . $permintaan_barang['id']) ?>" id="upload-create" method="post">
                                            <h3>Anda Yakin Ingin Membatalkan Permintaan ini?</h3>
                                            <div class="box-footer" align="center">
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Tutup</button>
                                                <button type="submit" class="btn btn-primary btn-send">Batalkan</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal modal-default fade" id="modal-verifikasi-permintaan-ajukan" style="display: none;">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header bg-green">
                                        <h4 class="modal-title" align="center"> Ajukan Permintaan</h4>
                                    </div>
                                    <div class="modal-body" align="center">
                                        <form action="<?= base_url('master/permintaan_barang/ajukan_to_pm/' . $permintaan_barang['id']) ?>" id="upload-create" method="post">
                                            <h3>Anda Yakin Ingin Mengajukan Permintaan ini?</h3>
                                            <div class="box-footer" align="center">
                                                <button type="button" class="btn btn-info" data-dismiss="modal">Tutup</button>
                                                <button type="submit" class="btn btn-success btn-send">Ajukan</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal modal-default fade" id="modal-verifikasi-permintaan-terima" style="display: none;">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header bg-green">
                                        <h4 class="modal-title" align="center"> Terima Permintaan</h4>
                                    </div>
                                    <div class="modal-body" align="center">
                                        <form action="<?= base_url('master/permintaan_barang/verifikasi/' . $permintaan_barang['id']) ?>" id="upload-create" method="post">
                                            <h3>Anda Yakin Ingin Menerima Permintaan ini?</h3>
                                            <input type="hidden" name="status" value="0">
                                            <div class="box-footer" align="center">
                                                <button type="button" class="btn btn-info" data-dismiss="modal">Tutup</button>
                                                <button type="submit" class="btn btn-success btn-send">Terima</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal modal-default fade" id="modal-verifikasi-permintaan-tolak" style="display: none;">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header bg-red">
                                        <h4 class="modal-title" align="center"> Tolak Permintaan</h4>
                                    </div>
                                    <div class="modal-body" align="center">
                                        <form action="<?= base_url('master/permintaan_barang/verifikasi/' . $permintaan_barang['id']) ?>" id="upload-create" method="post">
                                            <h3>Masukkan catatan jika anda menolak permintaan ini.</h3>
                                            <input type="hidden" name="status" value="1">
                                            <textarea name="dt[catatan]" class="form-control" id="" cols="20" rows="5">(Tulis catatan disini)</textarea>
                                            <div class="box-footer" align="center">
                                                <button type="button" class="btn btn-info" data-dismiss="modal">Tutup</button>
                                                <button type="submit" class="btn btn-danger btn-send">Tolak</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
                <!-- /.box -->
            </div>
            <div class="col-xs-12">
                <h5>
                    History Permintaan Subkon
                </h5>
                <ul class="timeline">
                    <?php
                    $id_pb = $permintaan_barang['id'];
                    $id_user = $permintaan_barang['created_by'];
                    $first_notif = $this->mymodel->selectWithQuery("SELECT * FROM notifikasi WHERE id_permintaan = '$id_pb' AND id_user = '$id_user' ORDER BY created_at asc LIMIT 1");
                    ?>
                    <li class="time-label">
                        <span class="bg-blue">
                            <?php
                            if ($first_notif[0]['created_at']) {
                                $date = date_create($first_notif[0]['created_at']);
                                echo date_format($date, "d M Y h:i:s");
                            } else {
                                echo 'Menunggu..';
                            }
                            ?>
                        </span>
                    </li>
                    <?php
                    $count_array = 0;
                    foreach ($notifikasi as $notif) {
                        $master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => $notif['keterangan']));
                        $user = $this->mymodel->selectDataone("user", array('id' => $notif['created_by']));
                        $role = $this->mymodel->selectDataone("role", array('id' => $user['role_id']));
                        $permintaan_barang = $this->mymodel->selectDataone("permintaan_barang", array('id' => $notif['id_permintaan']));
                        $bg = '';
                        $icon = '';
                        if ($notif['tipe'] == 'create') {
                            $bg = 'bg-orange';
                            $icon = 'fa fa-plus-circle';
                        } else if ($notif['tipe'] == 'edit') {
                            $bg = 'bg-gray';
                            $icon = 'fa fa-pencil';
                            $count_array++;
                        } else if ($notif['tipe'] == 'verifikasi-terima') {
                            $bg = 'bg-green';
                            $icon = 'fa fa-check';
                        } else if ($notif['tipe'] == 'verifikasi-tolak') {
                            $bg = 'bg-red';
                            $icon = 'fa fa-times';
                        }
                        $date = date_create($notif['created_at']);
                        $date = date_format($date, "d M Y h:i:s");
                        ?>
                        <li>
                            <i class="<?= $icon ?> <?= $bg ?>"></i>
                            <?php
                                if ($notif['tipe'] == 'edit') {
                                    ?>
                                <div class="timeline-item">
                                    <h3 class="timeline-header <?= $bg ?>">
                                        <?= $master_notifikasi['keterangan'] ?>
                                        <a data-toggle="modal" class="pull-right" data-target="#modal-history-edit<?= $count_array ?>">
                                            Detail
                                        </a>
                                        <div class="modal fade bd-example-modal-sm" id="modal-history-edit<?= $count_array ?>" style="display: none;">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <h4 class="modal-title">History Permintaan Subkon</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <?php
                                                                $log_data = json_decode($permintaan_barang['log']);
                                                                $count = count($log_data) + 1;
                                                                $text_count = 0;
                                                                for ($a = $count_array - 2; $a <= $count_array - 1; $a++) {
                                                                    // rsort($log_data);
                                                                    $text_count++;
                                                                    if ($text_count == 1) {
                                                                        $text = 'Lama';
                                                                    } else {
                                                                        $text = 'Baru';
                                                                    }
                                                                    $permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('kode' => $log_data[$a]->kode));
                                                                    $master_proyek = $this->mymodel->selectDataone('master_proyek', array('id' => $log_data[$a]->id_proyek));
                                                                    $master_status = $this->mymodel->selectDataone('master_status', array('id' => $log_data[$a]->status_permintaan));
                                                                    ?>
                                                            <h4>
                                                                <?= $text ?>
                                                            </h4>
                                                            <br>
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
                                                                                    $permintaan_barang_sub = $log_data[$a]->sub;
                                                                                    foreach ($permintaan_barang_sub as $pbs) {
                                                                                        ?>
                                                                            <tr>
                                                                                <td style="width:10%;">
                                                                                    <p><?= $pbs->kode_pekerjaan ?></p>
                                                                                </td>
                                                                                <td style="width:10%;">
                                                                                    <p><?= $pbs->id_barang ?></p>
                                                                                </td>
                                                                                <td style="width:7%;">
                                                                                    <p><?= $pbs->qty ?></p>
                                                                                </td>
                                                                                <td style="width:10%;">
                                                                                    <p><?= $pbs->id_satuan ?></p>
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
                                                                            if ($log_data[$a]->file != "") {
                                                                                ?>
                                                                    <i class="fa fa-file fa-5x text-danger"></i>
                                                                    <br>
                                                                    <a href="<?= base_url('webfile/' . $log_data[$a]->file) ?>" target="_blank"><i class="fa fa-download"></i> <?= $log_data[$a]->file ?></a>
                                                                    <br>
                                                                    <br>
                                                                <?php } ?>
                                                                <hr>
                                                            </div>
                                                        <?php
                                                                } ?>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </h3>
                                    <div class="timeline-body">
                                        User : <?= $user['name'] ?> <br>
                                        Role : <?= $role['role'] ?> <br>
                                        Tanggal : <?= $date ?>
                                    </div>
                                </div>
                            <?php
                                } else if ($notif['tipe'] == 'verifikasi-tolak') {
                                    ?>
                                <div class="timeline-item">
                                    <h3 class="timeline-header <?= $bg ?>">
                                        <?= $master_notifikasi['keterangan'] ?></h3>
                                    <div class="timeline-body">
                                        User : <?= $user['name'] ?> <br>
                                        Role : <?= $role['role'] ?> <br>
                                        Catatan : <?= $permintaan_barang['catatan'] ?> <br>
                                        Tanggal : <?= $date ?>
                                    </div>
                                </div>
                            <?php
                                } else {
                                    ?>
                                <div class="timeline-item">
                                    <h3 class="timeline-header <?= $bg ?>">
                                        <?= $master_notifikasi['keterangan'] ?></h3>
                                    <div class="timeline-body">
                                        User : <?= $user['name'] ?> <br>
                                        Role : <?= $role['role'] ?> <br>
                                        Tanggal : <?= $date ?>
                                    </div>
                                </div>
                            <?php
                                }
                                ?>
                        </li>
                    <?php
                    }
                    ?>
                </ul>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<div class="modal fade bd-example-modal-sm" tabindex="-1" permintaan_barang="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="modal-delete">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <form id="upload-delete" action="<?= base_url('master/Permintaan_barang/delete') ?>">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5 class="modal-title">Konfirmasi Hapus</h5>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="id" id="delete-input" value="<?= $permintaan_barang['id'] ?>">
                    <p>Apa anda yakin akan menghapus permintaan ini?</p>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-danger btn-send">Ya, Hapus</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript">
    function hapus() {
        $("#modal-delete").modal('show');
        $("#delete-input").val();
    }

    function edit(id) {
        location.href = "<?= base_url('master/surat_permintaan/edit/') ?>" + id;
    }

    function cetak(id) {
        window.open("<?= base_url('master/surat_permintaan/print/') ?>" + id);
    }

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
                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
                } else {
                    form.find(".show_error").hide().html(response).slideDown("fast");
                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
                }
            },

            error: function(xhr, textStatus, errorThrown) {
                console.log(xhr);
                $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
                form.find(".show_error").hide().html(xhr).slideDown("fast");
            }

        });
        return false;
    });
</script>