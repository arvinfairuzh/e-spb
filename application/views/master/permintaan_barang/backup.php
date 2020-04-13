<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Permintaan Alat
            <small>Detail</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Master</a></li>
            <li class="#">Permintaan Alat</li>
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
                        <h5 class="box-title">
                            Detail Permintaan Alat
                        </h5>
                    </div>
                    <div class="box-body">
                        <div class="form-group col-md-4">
                            <label for="form-nama_proyek">Proyek</label>
                            <p><?= $master_proyek['nama'] ?></p>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="form-lokasi">Lokasi</label>
                            <p><?= $master_proyek['lokasi'] ?></p>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="form-cost_control">Kode</label>
                            <p><?= $permintaan_barang['kode'] ?></p>
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
                                            Kapasitas
                                        </th>
                                        <th style="width:7%;">
                                            Merk
                                        </th>
                                        <th style="width:7%;">
                                            Waktu Pemakaian
                                        </th>
                                        <th style="width:10%;">
                                            Keterangan/Tujuannya
                                        </th>
                                    </tr>
                                    <?php
                                    foreach ($permintaan_barang_sub as $pbs) {
                                        $master_barang = $this->mymodel->selectDataone('master_barang', array('id' => $pbs['id_barang']));
                                        $master_kode = $this->mymodel->selectDataone('master_barang', array('id' => $pbs['kode_pekerjaan']));
                                        $master_satuan = $this->mymodel->selectDataone('master_satuan', array('id' => $pbs['id_satuan']));
                                        ?>
                                        <tr>
                                            <td style="width:10%;">
                                                <p><?= $master_kode['kode_pekerjaan'] ?></p>
                                            </td>
                                            <td style="width:10%;">
                                                <p><?= $master_barang['nama'] ?></p>
                                            </td>
                                            <td style="width:7%;">
                                                <p><?= $pbs['qty'] ?></p>
                                            </td>
                                            <td style="width:10%;">
                                                <p><?= $master_satuan['nama'] ?></p>
                                            </td>
                                            <td style="width:10%;">
                                                <p><?= $pbs['kapasitas'] ?></p>
                                            </td>
                                            <td style="width:7%;">
                                                <p><?= $pbs['merk'] ?></p>
                                            </td>
                                            <td style="width:7%;">
                                                <p><?= $pbs['waktu_pemakaian'] ?></p>
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
                    </div>
                    <div class="box-footer">
                        <?php
                        if ($_SESSION['role_id'] == 1) {
                            ?>
                        <?php
                        } else if ($_SESSION['role_id'] == 2) {
                            ?>
                            <?php
                                if ($permintaan_barang['status_permintaan'] == 1) {
                                    ?>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-terima" class="btn btn-success">Terima</a>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-tolak" class="btn btn-danger">Tolak</a>
                            <?php
                                } else { ?>
                            <?php
                                }
                            } else if ($_SESSION['role_id'] == 3) {
                                ?>
                            <?php
                                if ($permintaan_barang['status_permintaan'] == 2) {
                                    ?>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-terima" class="btn btn-success">Terima</a>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-tolak" class="btn btn-danger">Tolak</a>
                            <?php
                                } else { ?>
                            <?php
                                }
                            } else if ($_SESSION['role_id'] == 4) {
                                ?>
                            <?php
                                if ($permintaan_barang['status_permintaan'] == 4) {
                                    ?>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-terima" class="btn btn-success">Terima</a>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-tolak" class="btn btn-danger">Tolak</a>
                            <?php
                                } else { ?>
                            <?php
                                }
                            } else if ($_SESSION['role_id'] == 5) {
                                ?>
                            <?php
                                if ($permintaan_barang['status_permintaan'] == 6) {
                                    ?>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-terima" class="btn btn-success">Terima</a>
                                <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-tolak" class="btn btn-danger">Tolak</a>
                            <?php
                                } else { ?>
                            <?php
                                }
                            } else {
                                ?>

                            <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-terima" class="btn btn-success">Terima</a>
                            <a data-toggle="modal" data-target="#modal-verifikasi-permintaan-tolak" class="btn btn-danger">Tolak</a>
                        <?php
                        }
                        ?>
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
                <div class="box box-danger">
                    <!-- /.box-header -->
                    <div class="box-header">
                        <h5 class="box-title">
                            History Permintaan Barang
                        </h5>
                    </div>
                    <div class="box-body">
                        <?php
                        $log_data = json_decode($permintaan_barang['log']);
                        $count = count($log_data) + 1;
                        rsort($log_data);
                        // print_r($log_data);
                        // die();
                        $i = $count;
                        foreach ($log_data as $log) {
                            $i--;
                            $permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('kode' => $log->kode));
                            $master_proyek = $this->mymodel->selectDataone('master_proyek', array('id' => $log->id_proyek));
                            $master_status = $this->mymodel->selectDataone('master_status', array('id' => $log->status_permintaan));
                            ?>
                            <h5>
                                History Permintaan Barang ke <?= $i ?>
                            </h5>
                            <br>
                            <div class="form-group col-md-4">
                                <label for="form-nama_proyek">Proyek</label>
                                <p><?= $master_proyek['nama'] ?></p>
                                </select>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="form-lokasi">Lokasi</label>
                                <p><?= $master_proyek['lokasi'] ?></p>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="form-cost_control">Kode</label>
                                <p><?= $permintaan_barang['kode'] ?></p>
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
                                                Kapasitas
                                            </th>
                                            <th style="width:7%;">
                                                Merk
                                            </th>
                                            <th style="width:7%;">
                                                Waktu Pemakaian
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
                                                    <p><?= $pbs->kapasitas ?></p>
                                                </td>
                                                <td style="width:7%;">
                                                    <p><?= $pbs->merk ?></p>
                                                </td>
                                                <td style="width:7%;">
                                                    <p><?= $pbs->waktu_pemakaian ?></p>
                                                </td>
                                                <td style="width:10%;">
                                                    <p><?= $pbs->keterangan ?></p>
                                                </td>
                                            </tr>
                                        <?php
                                            } ?>
                                    </table>
                                </div>
                                <hr>
                            </div>
                            <!-- <div class="form-group col-md-12">
                                <label for="form-cost_control">Status Permintaan</label>
                                <p><?= $master_status['nama'] ?></p>
                            </div> -->
                        <?php
                        } ?>
                    </div>
                </div>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

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