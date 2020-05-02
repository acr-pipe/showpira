<?php
    session_start();
    require_once '_config/ecy.php';
    $cy = new _cy();

    if(!empty($_FILES)){
        require_once '_config/mysqlDB.php';
        $base = new DBClass();
        // UPLOAD IMG PRODUCTOS
        if (isset($_REQUEST['idproducto'])) {
        	print_r($_REQUEST['idproducto']);
            for ($i=0; $i < sizeof($_FILES['file']['name']); $i++) {

                $temp = $_FILES['file']['tmp_name'][$i];
                $dir_separator = DIRECTORY_SEPARATOR;
                $folder = 'assets/imgs';
                $bname = 'https://food.pipecr.com/assets/imgs/';

                $destination_path = dirname(__FILE__).$dir_separator.$folder.$dir_separator;

                $index = $base->ejecutar('select lpad(count(id)+1, 2,0) from productosurl where idproducto = '.$_REQUEST['idproducto'])->fetch_all()[0][0];
                $name = $_FILES['file']['name'][$i];
                $ext = end(explode('.', $name));
                $target_path = $destination_path.'img'.$_REQUEST['idproducto'].$index.'.'.$ext;
                $svg_path = $destination_path.'img'.$_REQUEST['idproducto'].$index.'.svg';
                
                $bname .= 'img'.$_REQUEST['idproducto'].$index.'.'.$ext;

                $base->ejecutar('insert into productosurl values(null,'.$_REQUEST['idproducto'].',"'.$bname.'")');

                print_r(move_uploaded_file($temp, $target_path));
            }
        }

        // UPLOAD IMG CUPONES
        if (isset($_REQUEST['idcupon'])) {
            print_r($_REQUEST['idcupon']);
            for ($i=0; $i < sizeof($_FILES['file']['name']); $i++) {

                $temp = $_FILES['file']['tmp_name'][$i];
                $dir_separator = DIRECTORY_SEPARATOR;
                $folder = 'assets/imgs/cupons';
                $bname = 'https://food.pipecr.com/assets/imgs/cupons/';

                $destination_path = dirname(__FILE__).$dir_separator.$folder.$dir_separator;

                $index = $base->ejecutar('select lpad(count(id)+1, 2,0) from cuponesurl where idcupon = '.$_REQUEST['idcupon'])->fetch_all()[0][0];
                $name = $_FILES['file']['name'][$i];
                $ext = end(explode('.', $name));
                $target_path = $destination_path.'cup'.$_REQUEST['idcupon'].$index.'.'.$ext;
                $svg_path = $destination_path.'cup'.$_REQUEST['idcupon'].$index.'.svg';
                
                $bname .= 'cup'.$_REQUEST['idcupon'].$index.'.'.$ext;

                $base->ejecutar('insert into cuponesurl values(null,'.$_REQUEST['idcupon'].',"'.$bname.'")');

                print_r(move_uploaded_file($temp, $target_path));
            }
        }
    }
?>