<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Permintaan Barang
            <small>Cetak</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Master</a></li>
            <li class="#">Permintaan Barang</li>
            <li class="active">Cetak</li>
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
                            Cetak Permintaan Barang
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
                                    foreach ($permintaan_barang_sub as $pbs) {
                                        $master_barang = $this->mymodel->selectDataone('master_barang', array('id' => $pbs['id_barang']));
                                        $master_kode = $this->mymodel->selectDataone('master_barang', array('kode_pekerjaan' => $pbs['kode_pekerjaan']));
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
                                                <p><?= $pbs['fungsi'] ?></p>
                                            </td>
                                            <td style="width:10%;">
                                                <p><?= $pbs['target'] ?></p>
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
                        <div class="col-xs-12" align="right">
                            <a href="<?= base_url('master/surat_permintaan/print/' . $permintaan_barang['id']) ?>" target="_blank" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
                        </div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
        <br>
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->