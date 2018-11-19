<?php
  error_reporting(0);
  session_start();
  class controller{
    private $hostname = "localhost";
    private $username = "root";
    private $password = "";
    private $database = "db_kustiawan";

    function __construct(){
      $this->koneksi();
    }
    public function koneksi(){
      $cn = mysql_connect($this->hostname,$this->username,$this->password) or die('<span style="font-family: sans-serif;">Tidak ada koneksi</span>');
      mysql_select_db($this->database) or die('<span style="font-family: sans-serif;">Tidak ada database</span>');
      return $cn;
    }
    function antiInject($kata){
      $fil = mysql_real_escape_string(stripcslashes(strip_tags(htmlspecialchars($kata, ENT_QUOTES))));
      return $fil;
    }
    function tampil($table){
      $sql = "SELECT * from ".$table;
      $jalan = mysql_query($sql);
      while ($data = mysql_fetch_array($jalan)) {
        $r[] = $data;
      }
      return $r;
    }
    function simpan($table, array $field){
      $sql = "insert into $table set ";
      foreach ($field as $key => $value) {
        $sql .= "$key='$value', ";
      }
      $sql = rtrim($sql, ', ');
      $jalan = mysql_query($sql);
      if ($jalan) {
        return true;
      }else{
        return false;
      }
    }
    function pilih($table, $where, $id){
      $sql = "select * from ".$table." where ".$where."='".$id."'";
      $jalan = mysql_query($sql);
      return mysql_fetch_assoc($jalan);
    }
    function update($table, array $field, $where, $id){
      $sql = "UPDATE ".$table." set ";
      foreach ($field as $key => $value) {
        $sql .= $key."='".$value."', ";
      }
      $sql = rtrim($sql, ', ');
      $sql .= "WHERE ".$where."='".$id."'";
      $jalan = mysql_query($sql);
      if ($jalan) {
        return true;
      }else{
        return false;
      }
    }
    function pilihTampil(array $field, $table){
      $sql = "SELECT ";
      $len = count($field);
      for ($i = 0; $i < $len; $i++) {
        $sql .= $field[$i].", ";
      }
      $sql = rtrim($sql,', ');
      $sql .= " from ".$table;
      $jalan = mysql_query($sql);
      while ($data = mysql_fetch_array($jalan)) {
        $tingali[] = $data;
      }
      return $tingali;
    }
    function hapus($table, $where, $id){
      $sql = "delete from $table where $where='$id'";
      $jalan = mysql_query($sql);
      if ($jalan) {
        return true;
      }else{
        return false;
      }
    }
    function konverTgl($tgl){
      $bulan = array("01" => "January", "02" => "February", "03" => "March", "04" => "April", "05" => "May", "06" => "June", "07" => "July", "08" => "August", "09" => "September", "10" => "October", "11" => "November", "12" => "December");
      $date = explode("-", $tgl);
      $tanggal1 = $date[2];
      $bulan1   = $date[1];
      $tahun1   = $date[0];
      foreach ($bulan as $key => $value) {
        $bulan1 = str_replace($key, $value, $bulan1);
      }
      return $tanggal1." ".$bulan1.", ".$tahun1;
    }
    function konverTgl2($tgl){
      $bulan = array("01" => "January", "02" => "February", "03" => "March", "04" => "April", "05" => "May", "06" => "June", "07" => "July", "08" => "August", "09" => "September", "10" => "October", "11" => "November", "12" => "December");
      foreach ($bulan as $key => $value) {
        $tgl = str_replace($value, $key, $tgl);
      }
      $tgl  = str_replace(",", "", $tgl);
      $tgl  = str_replace(" ", "-", $tgl);
      $date = explode("-", $tgl);
      $tgl1 = $date[0];
      $bln1 = $date[1];
      $thn1 = $date[2];
      return "$thn1-$bln1-$tgl1";
    }
    function getPosition($batas, $halaman){
      if (empty($halaman)) {
        $posisi = 0;
      }else{
        $posisi = ($halaman - 1) * $batas;
      }
      return $posisi;
    }
    function jumlahHalaman($jumlahData, $batas){
      $jmlHal = ceil($jumlahData/$batas);
      return $jmlHal;
    }
    function jumlahdata($table){
      $jalan = mysql_num_rows(mysql_query("SELECT * FROM $table"));
      return $jalan;
    }
  }