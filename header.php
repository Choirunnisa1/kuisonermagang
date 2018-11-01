<?php
include '_config/config.php';
 if (!isset($_SESSION['user'])) {
       echo "<script>window.location='".base_url('auth/login.php')."';</script>";
    } 
 ?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Jaya Metro</title>

    <!-- Bootstrap Core CSS -->
    <link href="<?=base_url()?>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<?=base_url()?>/asset/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<?=base_url()?>/asset/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<?=base_url()?>/asset/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

   <!-- DataTables CSS -->
    <link href="<?=base_url()?>/asset/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="<?=base_url()?>/asset/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <link type="text/css" rel="shortcut icon" href="<?=base_url('asset/image/logo.png')?>">

</head>

<body>
<script src="<?=base_url('asset/vendor/jquery/jquery.min.js')?>"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?=base_url('asset/vendor/bootstrap/js/bootstrap.min.js')?>"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<?=base_url('asset/vendor/metisMenu/metisMenu.min.js')?>"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<?=base_url('asset/dist/js/sb-admin-2.js')?>"></script>

    <!-- DataTables JavaScript -->
    <script src="<?=base_url('asset/vendor/datatables/js/jquery.dataTables.min.js')?>"></script>
    <script src="<?=base_url('asset/vendor/datatables-plugins/dataTables.bootstrap.min.js')?>"></script>
    <script src="<?=base_url('asset/vendor/datatables-responsive/dataTables.responsive.js')?>"></script>

    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <img src="<?=base_url('asset/image/logo.png')?>"> <a class="navbar-brand" href="index.php"></a></img>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
               <li><a href="<?=base_url('auth/logout.php')?>"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li> 
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="<?=base_url('dashboard')?>"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>                    
                        <li>
                            <a href="#"><i class="fa fa-table fa-fw"></i> Data Master<span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?=base_url('pertanyaan/data.php')?>">Data Pertanyaan</a>
                                </li>
                                <li>
                                    <a href="<?=base_url('jawaban/data.php')?>">Data Opsi Jawaban</a>
                                </li>
                                
                            </ul>
                        </li>
                        <li>
                            <a href="<?=base_url('customer')?>"><i class="fa fa-edit fa-fw"></i> Data Input Customer</a>
                        </li>
                       
                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Data Laporan Kuisoner</a>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">