<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title><?= TITLE_APPLICATION  ?></title>
    <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/bootstrap/dist/css/bootstrap.min.css" media="all">
</head>

<style type="text/css" media="all">
    th {
        height: 50px;
        width: 50px;
        text-align: center;
    }

    #cssTable td {
        text-align: center;
        vertical-align: middle;
    }

    .dot {
        border-bottom: 1px dotted #000;
        text-decoration: none;
    }

    .watermark {
        opacity: 0.5;
        color: black;
        position: fixed;
        top: 50%;
        left: 18%;
        width: 100%;
        transform: rotate(50deg);
        transform-origin: 50% 50%;
        font-size: 80pt;
    }

    .keep-together {
        page-break-inside: avoid;
    }

    .break-before {
        page-break-before: always;
    }

    .break-after {
        page-break-after: always;
    }
</style>

<body>
    <div class="wrapper">
        <div class="col-xl-12">
            <div class="table-responsive">
                <table class="table table-bordered" id="dynamic_fieldinvoice" style="width:100%;">
                    <tr>
                        <td style="width:25%;" align="center" rowspan="4">
                            <img src="<?= base_url('assets/') ?>logo.png" width="100%" style="margin-top:20px;">
                        </td>
                        <td style="width:50%;" align="center" rowspan="4">
                            <h3 style="margin-top:20px;">
                                <u> SURAT PERMINTAAN ALAT</u>
                            </h3>
                            <p>JBPU-F10-03A/R3</p>
                        </td>
                        <td style="width:25%;" align="center" colspan="2">
                            No. SPB
                        </td>
                    </tr>
                    <tr align="center">
                        <td width="50">Cost Control</td>
                        <td width="50">Proyek</td>
                    </tr>
                    <tr align="center">
                        <td>
                            <p><?= $permintaan_barang['kode'] ?></p>
                        </td>
                        <td>
                            <p><?= $master_proyek['kode'] ?></p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            Halaman ...
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            Proyek : <?= $master_proyek['nama'] ?>
                            <br>
                            Lokasi : <?= $master_proyek['lokasi'] ?>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
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
                                        ?>
                                        <tr align="center">
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
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>
                                <br><br><br>
                                Distribusi :<br>
                                1. Putih : Logistik<br>
                                2. Biru : CC<br>
                                3. Merah : Proyek<br>
                            </p>
                        </td>
                        <td colspan="3">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dynamic_fieldinvoice" style="width:100%; align:center;">
                                    <tr align="center">
                                        <td colspan="5">
                                            Paraf Tanggal <?= date('d-m-Y') ?>
                                        </td>
                                    </tr>
                                    <tr align="center">
                                        <td colspan="1">
                                            Dibuat
                                        </td>
                                        <td colspan="4">
                                            Diperiksa
                                        </td>
                                    </tr>
                                    <?php
                                    $pic = $this->mymodel->selectDataone('user', array('id' => $permintaan_barang['id_pic']));
                                    $pm = $this->mymodel->selectDataone('user', array('id' => $permintaan_barang['id_pm']));
                                    $cc = $this->mymodel->selectDataone('user', array('id' => $permintaan_barang['id_cc']));
                                    $pd = $this->mymodel->selectDataone('user', array('id' => $permintaan_barang['id_pd']));
                                    $lp = $this->mymodel->selectDataone('user', array('id' => $permintaan_barang['id_lp']));
                                    ?>
                                    <tr align="center">
                                        <td style="width:20%;">
                                            <img src="<?= base_url('webfile/' . $pic['ttd']) ?>" style="width: 100px" onerror="this.src = '<?= base_url('webfile/no-image.png') ?>';">
                                        </td>
                                        <td style="width:20%;">
                                            <img src="<?= base_url('webfile/' . $pm['ttd']) ?>" style="width: 100px" onerror="this.src = '<?= base_url('webfile/no-image.png') ?>';">
                                        </td>
                                        <td style="width:20%;">
                                            <img src="<?= base_url('webfile/' . $cc['ttd']) ?>" style="width: 100px" onerror="this.src = '<?= base_url('webfile/no-image.png') ?>';">
                                        </td>
                                        <td style="width:20%;">
                                            <img src="<?= base_url('webfile/' . $pd['ttd']) ?>" style="width: 100px" onerror="this.src = '<?= base_url('webfile/no-image.png') ?>';">
                                        </td>
                                        <td style="width:20%;">
                                            <img src="<?= base_url('webfile/' . $lp['ttd']) ?>" style="width: 100px" onerror="this.src = '<?= base_url('webfile/no-image.png') ?>';">
                                        </td>
                                    </tr>
                                    <tr align="center">
                                        <td style="width:20%;">
                                            PIC
                                        </td>
                                        <td style="width:20%;">
                                            PM
                                        </td>
                                        <td style="width:20%;">
                                            CC
                                        </td>
                                        <td style="width:20%;">
                                            PD
                                        </td>
                                        <td style="width:20%;">
                                            LP
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        window.print();
    </script>
</body>

</html>