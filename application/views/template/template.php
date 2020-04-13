<?php

if ($this->session->userdata('session_sop') == "") {
  redirect('login/');
}
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?= TITLE_APPLICATION  ?></title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Select 2 -->

  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/select2/dist/css/select2.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/Ionicons/css/ionicons.min.css">
  <!-- Material Icons -->
  <link rel="stylesheet" href="<?= base_url('assets/') ?>fonts/material-icons/css/materialdesignicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

  <link rel="stylesheet" href="<?= base_url('assets/') ?>dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?= base_url('assets/') ?>dist/css/skins/_all-skins.min.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/morris.js/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/jvectormap/jquery-jvectormap.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="<?= base_url('assets/') ?>plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <link rel="stylesheet" href="<?= base_url('assets/') ?>custom/custom.css">
  <link href="<?= FAVICON ?>" rel=icon type=image/png> <link rel="stylesheet" href="https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome-font-awesome.min.css">

  <!-- <style type="text/css">
    @import url('https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700|Poppins:300,400,500,600,700|Raleway:300,400,500,600,700');
    body{
      font-family: Montserrat;
    }

  </style> -->

  <!-- <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet"> -->
  <link rel="stylesheet" href="<?= base_url('assets/') ?>dist/css/main.css">

  <!-- jQuery 3 -->
  <script src="<?= base_url('assets/') ?>bower_components/jquery/dist/jquery.min.js"></script>
  <!-- jQuery UI 1.11.4 -->
  <!-- <script src="<?= base_url('assets/') ?>bower_components/jquery-ui/jquery-ui.min.js"></script> -->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <!-- DataTables -->
  <script src="<?= base_url('assets/') ?>bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
  <script src="<?= base_url('assets/') ?>bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <script type="text/javascript">
    $.fn.dataTableExt.oApi.fnPagingInfo = function(oSettings) {
      return {
        "iStart": oSettings._iDisplayStart,
        "iEnd": oSettings.fnDisplayEnd(),
        "iLength": oSettings._iDisplayLength,
        "iTotal": oSettings.fnRecordsTotal(),
        "iFilteredTotal": oSettings.fnRecordsDisplay(),
        "iPage": Math.ceil(oSettings._iDisplayStart / oSettings._iDisplayLength),
        "iTotalPages": Math.ceil(oSettings.fnRecordsDisplay() / oSettings._iDisplayLength)
      };
    };

    function idleLogout() {
      var t;
      window.onload = resetTimer;
      window.onmousemove = resetTimer;
      window.onmousedown = resetTimer; // catches touchscreen presses
      window.onclick = resetTimer; // catches touchpad clicks
      window.onscroll = resetTimer; // catches scrolling with arrow keys
      window.onkeypress = resetTimer;

      function logout() {
        window.location.href = '<?= base_url('login/lockscreen?user=' . $this->session->userdata('nip')) ?>';
      }

      function resetTimer() {
        clearTimeout(t);
        t = setTimeout(logout, 900000); // time is in milliseconds //60000 = 1 minutes
      }
    }

    idleLogout();
  </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.min.js"></script>
  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

  <style>
    .ui-autocomplete {
      z-index: 2147483647;
    }

    h1,
    h2,
    h3,
    h4,
    h5,
    h6,
    h7,
    p,
    span,
    body {
      font-family: Poppins-Regular, sans-serif !important;
    }
  </style>


  <style type="text/css">
    ::-webkit-scrollbar-track {
      background-color: #1a1b1d;
    }

    ::-webkit-scrollbar {
      width: 5px;
      background-color: #1a1b1d;
    }

    ::-webkit-scrollbar-thumb {
      background-color: #ff0000;
    }
  </style>

</head>

<body class="hold-transition skin-red layout-top-nav scroll-bar">
  <?php //print_r($this->session->all_userdata())
  ?>
  <div class="wrapper">
    <header class="main-header">
      <nav class="navbar navbar-static-top">
        <div class="navbar-header">
          <a href="<?= base_url() ?>" class="navbar-brand" style="padding:10px 15px;">
            <img src="<?= base_url('assets/') ?>logo.png" width="70px" height="30px">
          </a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>
        </div>
        <div class="collapse navbar-collapse pull-left menu-custom_css" style="margin-left: 5px;" id="navbar-collapse">
          <ul class="nav navbar-nav">
            <?php
            $role = $this->mymodel->selectDataone('role', ['id' => $this->session->userdata('role_id')]);
            $jsonmenu = json_decode($role['menu']);
            $this->db->order_by('urutan asc');
            $this->db->where_in('id', $jsonmenu);
            $menu = $this->mymodel->selectWhere('menu_master', ['parent' => 0, 'status' => 'ENABLE']);
            foreach ($menu as $m) {
              $this->db->where_in('id', $jsonmenu);
              $parent = $this->mymodel->selectWhere('menu_master', ['parent' => $m['id'], 'status' => 'ENABLE']);
              if (count($parent) == 0) {
                ?>
                <li class="<?php if ($page_name == $m['name']) echo "active"; ?>">
                  <a href="<?= base_url($m['link']) ?>">
                    <span><?= $m['name'] ?></span>
                    <?php if ($m['notif'] != "") { ?>
                      <span class="pull-right-container">
                        <small class="label pull-right label-danger" id="<?= $m['notif'] ?>">0</small>
                      </span>
                    <?php } ?>
                  </a>
                </li>
              <?php } else { ?>

                <li class="<?php if ($page_name == $m['name']) echo "active"; ?>">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <span><?= $m['name'] ?></span>
                    <span class="caret"></span>
                  </a>
                  <ul class="dropdown-menu" role="menu">
                    <?php foreach ($parent as $p) { ?>
                      <li class="<?php if ($page_name == $p['name']) echo "active"; ?>">
                        <a href="<?= base_url($p['link']) ?>">
                          <?= $p['name'] ?>
                          <?php if ($p['notif'] != "") { ?>
                            <span class="pull-right-container">
                              <small class="label pull-right label-danger" id="<?= $p['notif'] ?>">0</small>
                            </span>
                          <?php } ?>
                        </a>
                      </li>
                    <?php } ?>

                  </ul>
                </li>
              <?php } ?>
            <?php } ?>
          </ul>
        </div>
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <li class="dropdown messages-menu">
              <?php
              $id_user = $_SESSION['id'];
              if ($_SESSION['role_id'] == 0) {
                $notification1 = $this->mymodel->selectWithQuery("SELECT *, DATE_FORMAT(created_at, '%d-%m-%Y %h:%i') as tanggal FROM notifikasi WHERE status_notifikasi = 0 GROUP BY id_permintaan, tipe, ke ORDER BY id desc");
                $notification2 = $this->mymodel->selectWithQuery("SELECT *, DATE_FORMAT(created_at, '%d-%m-%Y %h:%i') as tanggal FROM notifikasi WHERE status_notifikasi = 1 GROUP BY id_permintaan, tipe, ke ORDER BY id desc");
                $countnotifikasi = $this->mymodel->selectWithQuery("SELECT *, DATE_FORMAT(created_at, '%d-%m-%Y %h:%i') as tanggal FROM notifikasi WHERE status_notifikasi = 0 GROUP BY id_permintaan, tipe, ke ORDER BY id desc");
                $countnotif = count($countnotifikasi);
              } else {
                $notification1 = $this->mymodel->selectWithQuery("SELECT *, DATE_FORMAT(created_at, '%d-%m-%Y %h:%i') as tanggal FROM notifikasi WHERE id_user = '$id_user' AND status_notifikasi = 0 ORDER BY id desc");
                $notification2 = $this->mymodel->selectWithQuery("SELECT *, DATE_FORMAT(created_at, '%d-%m-%Y %h:%i') as tanggal FROM notifikasi WHERE id_user = '$id_user' AND status_notifikasi = 1 ORDER BY id desc");
                $countnotifikasi = $this->mymodel->selectWithQuery("SELECT *, DATE_FORMAT(created_at, '%d-%m-%Y %h:%i') as tanggal FROM notifikasi WHERE id_user = '$id_user' AND status_notifikasi = 0 ORDER BY id desc");
                $countnotif = count($countnotifikasi);
              }

              ?>
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                <i class="fa fa-envelope-o"></i>
                <span class="label label-success"> <?= $countnotif ?></span>
              </a>
              <ul class="dropdown-menu">
                <li class="header">Anda memiliki <?= $countnotif ?> pemberitahuan</li>
                <li style="padding-top:15px;">

                  <!-- inner menu: contains the actual data -->
                  <ul class="menu">
                    <?php
                    foreach ($notification1 as $notif) {
                      $user = $this->mymodel->selectDataone("user", array('id' => $notif['id_user']));
                      $master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => $notif['keterangan']));
                      $permintaan_barang = $this->mymodel->selectDataone("permintaan_barang", array('id' => $notif['id_permintaan']));
                      $user = $this->mymodel->selectDataone("user", array('id' => $notif['created_by']));
                      $role = $this->mymodel->selectDataone("role", array('id' => $user['role_id']));
                      $date = date_create($notif['created_at']);
                      $date = date_format($date, "d M Y h:i:s");
                      ?>
                      <a class="notifikasi" href="<?= base_url('master/permintaan_barang/read/' . $notif['id']) ?>" style="color: black;">

                        <li>
                          <!-- start message -->
                          <div class="pull-left">
                            <img src="<?= base_url() ?>webfile/no_image.jpg" class="img-circle" alt="">
                          </div>
                          <div class="col-md-12">
                            <i class="fa fa-clock-o"></i><?= $notif['tanggal'] ?>
                            <br>
                            <?= $master_notifikasi['notifikasi'] ?>
                            <br>
                            Surat Permintaan : <?= $permintaan_barang['kode'] ?> <br>
                            User : <?= $user['name'] ?> <br>
                            Role : <?= $role['role'] ?> <br>
                            Tanggal : <?= $date ?>
                            <hr style="padding:5px;margin:5px;">
                          </div>
                        </li>
                      </a>
                    <?php }
                    foreach ($notification2 as $notif) {
                      $user = $this->mymodel->selectDataone("user", array('id' => $notif['id_user']));
                      $master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => $notif['keterangan']));
                      $permintaan_barang = $this->mymodel->selectDataone("permintaan_barang", array('id' => $notif['id_permintaan']));
                      $user = $this->mymodel->selectDataone("user", array('id' => $notif['created_by']));
                      $role = $this->mymodel->selectDataone("role", array('id' => $user['role_id']));
                      $date = date_create($notif['created_at']);
                      $date = date_format($date, "d M Y h:i:s");
                      ?>
                      <a class="notifikasi" href="<?= base_url('master/permintaan_barang/read/' . $notif['id']) ?>" style="color: gray;">

                        <li>
                          <!-- start message -->
                          <div class="pull-left">
                            <img src="<?= base_url() ?>webfile/no_image.jpg" class="img-circle" alt="">
                          </div>
                          <div class="col-md-12">
                            <i class="fa fa-clock-o"></i><?= $notif['tanggal'] ?>
                            <br>
                            <?= $master_notifikasi['notifikasi'] ?>
                            <br>
                            Surat Permintaan : <?= $permintaan_barang['kode'] ?> <br>
                            User : <?= $user['name'] ?> <br>
                            Role : <?= $role['role'] ?> <br>
                            Tanggal : <?= $date ?>
                            <hr style="padding:5px;margin:5px;">
                          </div>
                        </li>
                      </a>
                    <?php
                    } ?>
                  </ul>
                </li>
                <!-- <li class="footer"><a href="#">See All Messages</a></li> -->
              </ul>
            </li>
            <li class="dropdown user user-menu">
              <?php
              $id = $this->session->userdata('id');
              $file = $this->mymodel->selectDataone('file', array('table' => 'user', 'table_id' => $id));
              $user = $this->mymodel->selectDataone('user', array('id' => $id));
              if ($user['file'] == '') {
                $user['file'] = 'default.png';
              }
              ?>
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <object data="<?= base_url('webfile/' . $user['file']) ?>" type="image/png" class="user-image" alt="User Image">
                  <img src="https://www.library.caltech.edu/sites/default/files/styles/headshot/public/default_images/user.png?itok=1HlTtL2d" class="user-image" alt="User Image">
                </object>
                <span class="hidden-xs"><?= $this->session->userdata('name'); ?></span>
              </a>
              <ul class="dropdown-menu">
                <!-- User image -->
                <li class="user-header" style="min-height: 180px">
                  <object data="<?= base_url('webfile/' . $user['file']) ?>" type="image/png" style="max-height: 120px">
                    <img src="https://www.library.caltech.edu/sites/default/files/styles/headshot/public/default_images/user.png?itok=1HlTtL2d" style="max-height: 120px" alt="example">
                  </object>

                  <p>
                    <?= $this->session->userdata('name'); ?> - <?php $role = $this->mymodel->selectWhere('role', array('id' => $this->session->userdata('role_id')));
                                                                echo $role[0]['role']; ?>
                  </p>
                </li>
                <!-- Menu Footer-->
                <li class="user-footer">
                  <!-- <div class="pull-left"> -->
                  <a href="<?= base_url('master/user/editUser/') . $this->template->sonEncode($this->session->userdata('id')); ?>" class="btn btn-default btn-flat"><i class="fa fa-user"></i> Profile</a>
                  <a href="<?= base_url('login/lockscreen?user=') . $this->session->userdata('nip'); ?>" class="btn btn-default btn-flat"><i class="fa fa-key"></i> Lockscreen</a>
                  <!-- </div> -->
                  <!-- <div class="pull-right"> -->
                  <a href="<?= base_url('login/logout') ?>" class="btn btn-default btn-flat"><i class="fa fa-sign-out"></i> Sign out</a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>
    </header>
    <div class="row" style="height: 45px;background-color: #ff0000;"></div>

    <?= $contents ?>

    <footer class="main-footer">
      <div class="pull-right hidden-xs">
        <b>Version</b> <?= VERSION ?>
      </div>
      <strong>Copyright <?= COPYRIGHT ?>
    </footer>

    <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
  </div>
  <!-- ./wrapper -->

  <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
  <script>
    $.widget.bridge('uibutton', $.ui.button);
  </script>
  <!-- Canvas JS -->
  <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="<?= base_url('assets/') ?>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- Morris.js charts -->
  <script src="<?= base_url('assets/') ?>bower_components/select2/dist/js/select2.full.min.js"></script>
  <script src="<?= base_url('assets/') ?>bower_components/raphael/raphael.min.js"></script>
  <script src="<?= base_url('assets/') ?>bower_components/morris.js/morris.min.js"></script>
  <!-- Sparkline -->
  <script src="<?= base_url('assets/') ?>bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
  <!-- jvectormap -->
  <script src="<?= base_url('assets/') ?>plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
  <script src="<?= base_url('assets/') ?>plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
  <!-- jQuery Knob Chart -->
  <script src="<?= base_url('assets/') ?>bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
  <!-- daterangepicker -->
  <script src="<?= base_url('assets/') ?>bower_components/moment/min/moment.min.js"></script>
  <script src="<?= base_url('assets/') ?>bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
  <!-- datepicker -->
  <script src="<?= base_url('assets/') ?>bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
  <!-- Bootstrap WYSIHTML5 -->
  <script src="<?= base_url('assets/') ?>plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
  <!-- Slimscroll -->
  <script src="<?= base_url('assets/') ?>bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
  <!-- FastClick -->
  <script src="<?= base_url('assets/') ?>bower_components/fastclick/lib/fastclick.js"></script>
  <!-- AdminLTE App -->
  <script src="<?= base_url('assets/') ?>dist/js/adminlte.min.js"></script>
  <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
  <script src="<?= base_url('assets/') ?>dist/js/pages/dashboard.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="<?= base_url('assets/') ?>dist/js/demo.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {

      $('#user-data-autocomplete').autocomplete({
        source: "<?php echo site_url('home/get_autocomplete'); ?>",

        select: function(event, ui) {
          // $('[name="title"]').val(ui.item.label); 
          // $('[name="description"]').val(ui.item.description); 
          window.location.href = "<?= base_url('master/user/editUser_redirect/') ?>" + ui.item.id;
        }
      });
    });

    var url = window.location;
    // for sidebar menu but not for treeview submenu
    $('ul.sidebar-menu a').filter(function() {
      return this.href == url;
    }).parent().siblings().removeClass('active').end().addClass('active');
    // for treeview which is like a submenu
    $('ul.treeview-menu a').filter(function() {
      return this.href == url;
    }).parentsUntil(".sidebar-menu > .treeview-menu").siblings().removeClass('active menu-open').end().addClass('active menu-open');
  </script>

  <script type="text/javascript">
    $('.select2').select2();

    $('.tgl').datepicker({
      autoclose: true,
      format: 'yyyy-mm-dd'
    });

    $(function() {
      $('.datatable').DataTable()
      $('#example2').DataTable({
        'paging': true,
        'lengthChange': false,
        'searching': false,
        'ordering': true,
        'info': true,
        'autoWidth': false
      })
    });

    function startTime() {
      var today = new Date();
      var hr = today.getHours();
      var min = today.getMinutes();
      var sec = today.getSeconds();
      ap = (hr < 12) ? "<span>AM</span>" : "<span>PM</span>";
      hr = (hr == 0) ? 12 : hr;
      hr = (hr > 12) ? hr - 12 : hr;
      //Add a zero in front of numbers<10
      hr = checkTime(hr);
      min = checkTime(min);
      sec = checkTime(sec);
      document.getElementById("clock").innerHTML = hr + ":" + min + ":" + sec + " " + ap;

      var months = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
      var days = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];
      var curWeekDay = days[today.getDay()];
      var curDay = today.getDate();
      var curMonth = months[today.getMonth()];
      var curYear = today.getFullYear();
      var date = curWeekDay + ", " + curDay + " " + curMonth + " " + curYear + " /";
      document.getElementById("date").innerHTML = date;

      var time = setTimeout(function() {
        startTime()
      }, 500);
    }

    function checkTime(i) {
      if (i < 10) {
        i = "0" + i;
      }
      return i;
    }

    /* Fungsi formatRupiah */
    function fungsiRupiah() {
      $(".rupiah").keyup(function() {
        $(this).val(formatRupiah(this.value, ''));
      });

      function formatRupiah(angka, prefix) {
        var number_string = angka.replace(/[^,\d]/g, '').toString(),
          split = number_string.split(','),
          sisa = split[0].length % 3,
          rupiah = split[0].substr(0, sisa),
          ribuan = split[0].substr(sisa).match(/\d{3}/gi);

        // tambahkan titik jika yang di input sudah menjadi angka ribuan
        if (ribuan) {
          separator = sisa ? '.' : '';
          rupiah += separator + ribuan.join('.');
        }

        rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
        return prefix == undefined ? rupiah : (rupiah ? '' + rupiah : '');
      }
    }

    fungsiRupiah();

    function maskRupiah(angka) {
      var bilangan = angka;

      var reverse = bilangan.toString().split('').reverse().join(''),
        ribuan = reverse.match(/\d{1,3}/g);
      ribuan = ribuan.join('.').split('').reverse().join('');

      // Cetak hasil  
      return ribuan;
    }
  </script>

</body>

</html>