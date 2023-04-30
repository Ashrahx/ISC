<?php
    class User{
        //Atributtes
        private $user;
        private $pass;

        //Construct
        function __construct($us, $pas){
            $this->user = $us;
            $this->pass = $pas;
        }

        //Method

        //Getters
        function getUsername() {
            return $this->user;
        }

        function getPass() {
            return $this->pass;
        }

        //Setters
        function setUsername($usr) {
            $this->user = $usr;
          }

        function setPass($pwd) {
            $this->pass = $pwd;
          }
    }
?>