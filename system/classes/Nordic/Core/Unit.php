<?php

namespace Nordic\Core;

abstract class Unit implements \Nordic\Interfaces\UnitActions
{
    private $id;
    private $data;
    //Атоматически при создании класса
    public function __construct($id = null){
        $this->id = $id;
    }
    //магический метод
    public function __get($name){

 
    }
    public function __set($name,$value){

    }
    //сообщаем инфо извне
    public function getTable($table){
        $this->table = $table;
    }

    public function setTable(){
        return $this->table;
    }

    public function getElements(){
        $connect = new \Nordic\Core\Connect();
        $result = mysqli_query($connect->getConnection(), "SELECT * FROM ".$this->setTable());
        return $result;

    }

    public function getData(){
        $link = mysqli_connect('localhost', 'root', '', 'eshop');
        mysqli_set_charset($link, 'utf8');
        
        $result = mysqli_query($link, "SELECT * FROM ".$this->setTable()." WHERE id =".$this->id);
        
        $row = mysqli_fetch_assoc($result);
        //момент кеширования
        $this->data = $row;

        mysqli_close($link);
    
    }

    public function getField($field){

        if(!$this->data){
           $this->getData();       
        }       
        
        return ($this->data)[$field];
    }

    public function title(){
        return $this->getField('title');
    }
}