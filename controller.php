<?php
require "./Smarty/Smarty.class.php";
$smarty = new Smarty();
ini_set('display_errors', "0");
$smarty->template_dir = 'templates/';
$smarty->compile_dir = 'templates_c/';
$smarty->display('index.tpl');
