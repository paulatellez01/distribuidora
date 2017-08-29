<?php

require_once 'core/core.php';

//condicion declarada cuando no existe o no esta definida el parametro C por URL
if(!isset($_REQUEST['c'])){
    //controller valor por defecto index
    $controller="index";
    //se hace el llamado al archivo indexController.php que se encuentra en la carpeta Controller
    require_once('controller/'.$controller.'Controller.php');
    //se sobreescribe controller ya no vale index si no indexController
    $controller=$controller.'Controller';
    //se genera un objeto con la instancia de la clase
    $controller=new $controller();
    //se llama a un metodo de la clase llamado index
    $controller->index();
}
 else {
     
    $controller=$_REQUEST['c'];
    require_once('controller/'.$controller.'Controller.php');
    $controller=$controller.'Controller';
    $controller=new $controller();
    //Se genera una variable con el valor tomado por URL si m no existe por defecto es index
    $metodo=isset($_REQUEST['m'])?$_REQUEST['m'] : 'index';  
    //
    call_user_func(array($controller,$metodo));
    
}