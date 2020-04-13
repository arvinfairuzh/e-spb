<?php
$name = $_SESSION['name'];

?>
<link href='<?= base_url('assets/') ?>packages/core/main.css' rel='stylesheet' />
<link href='<?= base_url('assets/') ?>packages/daygrid/main.css' rel='stylesheet' />
<link href='<?= base_url('assets/') ?>packages/timegrid/main.css' rel='stylesheet' />
<link href='<?= base_url('assets/') ?>packages/list/main.css' rel='stylesheet' />
<script src='<?= base_url('assets/') ?>packages/core/main.js'></script>
<script src='<?= base_url('assets/') ?>packages/interaction/main.js'></script>
<script src='<?= base_url('assets/') ?>packages/daygrid/main.js'></script>
<script src='<?= base_url('assets/') ?>packages/timegrid/main.js'></script>
<script src='<?= base_url('assets/') ?>packages/list/main.js'></script>
<script src="<?= base_url() ?>assets/chart/core.js"></script>
<script src="<?= base_url() ?>assets/chart/charts.js"></script>
<script src="<?= base_url() ?>assets/chart/animated.js"></script>
<style>
  #chartspperproyek,
  #chartspperjenis,
  #chartspperstatus,
  #charttransaksiperdesa_1,
  #charttransaksiperdesa_2,
  #charttransaksiperdesa_3,
  #charttransaksiperdesa_4 {
    width: 100%;
    height: 300px;
    padding: 0px;
  }
</style>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h2 style="font-weight:700; text-align: center;">SELAMAT DATANG <?= $name ?>, DI SISTEM E-SURAT PERMINTAAN JAGAT KONTRUKSI</h2>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-aqua">
          <div class="inner">
            <h3><?= $draft[0]['jumlah'] ?></h3>
            <p>Draft</p>
          </div>
          <div class="icon">
            <i class="ion ion-stats-bars"></i>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
          <div class="inner">
            <h3><?= $diproses[0]['jumlah'] ?></h3>
            <p>Diproses</p>
          </div>
          <div class="icon">
            <i class="ion ion-stats-bars"></i>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-red">
          <div class="inner">
            <h3><?= $selesai[0]['jumlah'] ?></h3>
            <p>Selesai</p>
          </div>
          <div class="icon">
            <i class="ion ion-stats-bars"></i>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-yellow">
          <div class="inner">
            <h3><?= $ditolak[0]['jumlah'] ?></h3>
            <p>Ditolak</p>
          </div>
          <div class="icon">
            <i class="ion ion-stats-bars"></i>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4">
        <script src="<?= base_url() ?>assets/chart/charts.js"></script>
        <script src="<?= base_url() ?>assets/chart/animated.js"></script>
        <div class="showhide1">
          <h4 style="font-weight:700;">Surat Permintaan per Proyek</h4>
          <div class="row">
            <div class="col-md-12">
              <div id="chartspperproyek"></div>
            </div>
            <div class="col-md-12" style="padding-top: 10px;">
              <table class="table">
                <tbody>
                  <?php
                  $color_array = array('#106d80', '#189cb8', '#5db9cd', '#ff9900', '#ffb74c', '#ad5b54', '#f88379', '#faa8a1', '#888888', '#ababab', '#cfcfcf', '#FFEBEE', '#FFCDD2', '#EF9A9A', '#E57373', '#EF5350', '#F44336', '#E53935', '#D32F2F', '#C62828');
                  $total = 0;
                  foreach ($spperproyek as $key => $k) {
                    $total = $total + $k['jumlah']; ?>
                    <tr>
                      <td style="width:15px;">
                        <div class="legend_box" style="background-color:<?= $color_array[$key]; ?>;width:15px;height:15px;padding:0px;margin:0px;">
                        </div>
                      </td>
                      <td><?= $k['nama'] ?></td>
                      <td style="text-align:right;"><?= $k['jumlah'] ?></a></td>
                    </tr>
                  <?php } ?>
                  <tr>
                    <td style="width:15px;">

                    </td>
                    <td>TOTAL</td>
                    <td style="text-align:right;"><?= $total ?></a></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <script>
            // Set theme
            am4core.useTheme(am4themes_animated);
            // Create chart
            var chart = am4core.createFromConfig({
              // Set data
              data: [
                <?php foreach ($spperproyek as $key => $k) {   ?> {
                    "title": "<?= $k['nama'] ?>",
                    "value": <?= $k['jumlah'] ?>
                  },
                <?php } ?>
              ],

              // Create series

              "series": [{
                "type": "PieSeries",
                "colors": {
                  "list": [
                    '#00809b', '#189cb8', '#5db9cd', '#ff9900', '#ffb74c', '#ad5b54', '#f88379', '#faa8a1', '#888888', '#ababab', '#cfcfcf', '#FFEBEE', '#FFCDD2', '#EF9A9A', '#E57373', '#EF5350', '#F44336', '#E53935', '#D32F2F', '#C62828'
                  ]
                },
                "ticks": {
                  "disabled": true
                },
                "labels": {
                  "disabled": true
                },
                "dataFields": {
                  "value": "value",
                  "category": "title"
                },
                "hiddenState": {
                  "properties": {
                    // this creates initial animation
                    "opacity": 1,
                    "endAngle": -90,
                    "startAngle": -90
                  }
                }
              }],

              // Add legend
            }, "chartspperproyek", "PieChart");
          </script>
        </div>
      </div>
      <div class="col-md-4">
        <div class="showhide1">
          <h4 style="font-weight:700;">Surat Permintaan per Jenis</h4>
          <div class="row">
            <div class="col-md-12">
              <div id="chartspperjenis"></div>
            </div>
            <div class="col-md-12" style="padding-top: 10px;">
              <table class="table">
                <tbody>
                  <?php
                  $color_array = array('#106d80', '#189cb8', '#5db9cd', '#ff9900', '#ffb74c', '#ad5b54', '#f88379', '#faa8a1', '#888888', '#ababab', '#cfcfcf', '#FFEBEE', '#FFCDD2', '#EF9A9A', '#E57373', '#EF5350', '#F44336', '#E53935', '#D32F2F', '#C62828');
                  $total = 0;
                  foreach ($spperjenis as $key => $k) {
                    $total = $total + $k['jumlah']; ?>
                    <tr>
                      <td style="width:15px;">
                        <div class="legend_box" style="background-color:<?= $color_array[$key]; ?>;width:15px;height:15px;padding:0px;margin:0px;">
                        </div>
                      </td>
                      <td><?= $k['nama'] ?></td>
                      <td style="text-align:right;"><?= $k['jumlah'] ?></a></td>
                    </tr>
                  <?php } ?>
                  <tr>
                    <td style="width:15px;">

                    </td>
                    <td>TOTAL</td>
                    <td style="text-align:right;"><?= $total ?></a></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <script>
            // Set theme
            am4core.useTheme(am4themes_animated);
            // Create chart
            var chart = am4core.createFromConfig({
              // Set data
              data: [
                <?php foreach ($spperjenis as $key => $k) {   ?> {
                    "title": "<?= $k['nama'] ?>",
                    "value": <?= $k['jumlah'] ?>
                  },
                <?php } ?>
              ],

              // Create series

              "series": [{
                "type": "PieSeries",
                "colors": {
                  "list": [
                    '#00809b', '#189cb8', '#5db9cd', '#ff9900', '#ffb74c', '#ad5b54', '#f88379', '#faa8a1', '#888888', '#ababab', '#cfcfcf', '#FFEBEE', '#FFCDD2', '#EF9A9A', '#E57373', '#EF5350', '#F44336', '#E53935', '#D32F2F', '#C62828'
                  ]
                },
                "ticks": {
                  "disabled": true
                },
                "labels": {
                  "disabled": true
                },
                "dataFields": {
                  "value": "value",
                  "category": "title"
                },
                "hiddenState": {
                  "properties": {
                    // this creates initial animation
                    "opacity": 1,
                    "endAngle": -90,
                    "startAngle": -90
                  }
                }
              }],

              // Add legend
            }, "chartspperjenis", "PieChart");
          </script>
        </div>
      </div>
      <div class="col-md-4">
        <div class="showhide1">
          <h4 style="font-weight:700;">Surat Permintaan per Status</h4>
          <div class="row">
            <div class="col-md-12">
              <div id="chartspperstatus"></div>
            </div>
            <div class="col-md-12" style="padding-top: 10px;">
              <table class="table">
                <tbody>
                  <?php
                  $color_array = array('#106d80', '#189cb8', '#5db9cd', '#ff9900', '#ffb74c', '#ad5b54', '#f88379', '#faa8a1', '#888888', '#ababab', '#cfcfcf', '#FFEBEE', '#FFCDD2', '#EF9A9A', '#E57373', '#EF5350', '#F44336', '#E53935', '#D32F2F', '#C62828');
                  $total = 0;
                  foreach ($spperstatus as $key => $k) {
                    $total = $total + $k['jumlah']; ?>
                    <tr>
                      <td style="width:15px;">
                        <div class="legend_box" style="background-color:<?= $color_array[$key]; ?>;width:15px;height:15px;padding:0px;margin:0px;">
                        </div>
                      </td>
                      <td><?= $k['nama'] ?></td>
                      <td style="text-align:right;"><?= $k['jumlah'] ?></a></td>
                    </tr>
                  <?php } ?>
                  <tr>
                    <td style="width:15px;">

                    </td>
                    <td>TOTAL</td>
                    <td style="text-align:right;"><?= $total ?></a></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <script>
            // Set theme
            am4core.useTheme(am4themes_animated);
            // Create chart
            var chart = am4core.createFromConfig({
              // Set data
              data: [
                <?php foreach ($spperstatus as $key => $k) {   ?> {
                    "title": "<?= $k['nama'] ?>",
                    "value": <?= $k['jumlah'] ?>
                  },
                <?php } ?>
              ],

              // Create series

              "series": [{
                "type": "PieSeries",
                "colors": {
                  "list": [
                    '#00809b', '#189cb8', '#5db9cd', '#ff9900', '#ffb74c', '#ad5b54', '#f88379', '#faa8a1', '#888888', '#ababab', '#cfcfcf', '#FFEBEE', '#FFCDD2', '#EF9A9A', '#E57373', '#EF5350', '#F44336', '#E53935', '#D32F2F', '#C62828'
                  ]
                },
                "ticks": {
                  "disabled": true
                },
                "labels": {
                  "disabled": true
                },
                "dataFields": {
                  "value": "value",
                  "category": "title"
                },
                "hiddenState": {
                  "properties": {
                    // this creates initial animation
                    "opacity": 1,
                    "endAngle": -90,
                    "startAngle": -90
                  }
                }
              }],

              // Add legend
            }, "chartspperstatus", "PieChart");
          </script>
        </div>
      </div>
    </div>
  </section>

</div>

<!-- /.content -->

<!-- /.content-wrapper -->

<script type="text/javascript">
  function get_dusun(jenis_id) {
    if (jenis_id) {
      $.ajax({
        url: "<?= base_url() ?>ajax/get_dusun/" + jenis_id,
        type: "GET",
        dataType: "json",
        success: function(data) {
          $("#dusun").empty();
          if (!$.trim(data)) {
            $("#dusun").append('<option value="">Data Tidak Tersedia</option>');
          } else {
            $.each(data, function(key, value) {
              $("#dusun").append('<option value="' +
                value.id + '">' + value.nama +
                '</option>');
            });
            get_rt($("#dusun").val());
          }
        }
      });
    } else {
      $("#dusun").empty();
      $("#dusun").append('<option value="">-Mohon Pilih jenis dulu-</option>');
    }
  }

  function get_rt(jenis_id) {
    if (jenis_id) {
      $.ajax({
        url: "<?= base_url() ?>ajax/get_rt/" + jenis_id,
        type: "GET",
        dataType: "json",
        success: function(data) {
          $("#rt").empty();
          if (!$.trim(data)) {
            $("#rt").append('<option value="">Data Tidak Tersedia</option>');
          } else {
            $.each(data, function(key, value) {
              $("#rt").append('<option value="' +
                value.id + '">' + value.nama +
                '</option>');
            });
          }
        }
      });
    } else {
      $("#rt").empty();
      $("#rt").append('<option value="">-Mohon Pilih jenis dulu-</option>');
    }
  }

  $(document).on('change', '#desa', function() {
    get_dusun($("#desa").val());
  });

  $(document).on('change', '#dusun', function() {
    get_rt($("#dusun").val());
  });

  function showDiv(value) {
    if (value == 1) {
      $('.showhide3').show();
      $('.showhide2').hide();
      $('.showhide1').hide();
    } else if (value == 2) {
      $('.showhide3').hide();
      $('.showhide1').hide();
      $('.showhide2').show();
    } else if (value == 3) {
      $('.showhide1').show();
      $('.showhide2').hide();
      $('.showhide3').hide();
    }
  }

  $("#parent").change(function() {
    showDiv($("#parent").val());
  });

  showDiv($("#parent").val());

  $(document).ready(function() {

    var limit = 3;
    var start = 0;
    var action = 'inactive';
    var search = 0;

    function load_data(limit, start) {
      lazzy_loader(limit);
      // search = $('#filter-search').val();
      search = '';

      $.ajax({
        url: "<?= base_url(); ?>home/fetch?keyword=" + search,
        method: "POST",
        data: {
          limit: limit,
          start: start
        },
        cache: false,
        success: function(data) {
          if (data == '') {
            $('#load_data_message').html('<div class="row">' +
              '<div class="col-md-12" align="center">' +
              'Semua Data Telah Ditampilkan' +
              '</div>' +
              '</div>');
            action = 'active';
          } else {
            $('#load_data').append(data);
            $('#load_data_message').html('<div class="row">' +
              '<div class="col-md-12" align="center">' +
              'Tampilkan Lebih Banyak <br> <i class="fa fa-angle-down"></i>' +
              '</div>' +
              '</div>');
            action = 'inactive';
          }
        }
      })
    }

    if (action == 'inactive') {
      action = 'active';
      load_data(limit, start);
    }

    $(window).scroll(function() {
      if ($(window).scrollTop() + $(window).height() > $("#load_data").height() && action == 'inactive') {
        lazzy_loader(limit);
        action = 'active';
        start = start + limit;
        setTimeout(function() {
          load_data(limit, start);
        }, 1000);
      }
    });
  });
</script>