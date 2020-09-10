<?php

namespace Nordic\Core;

class Category  extends \Nordic\Core\Unit
{

    //переопределение метода   
    public function setTable()
    {
        return 'categories';           
    }


}