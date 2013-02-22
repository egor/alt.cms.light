<?php

class DefaultController extends Controller
{

    public function actionIndex()
    {
        //$model = new User;
        $model=new LoginForm;
        $this->render('index', array('model' => $model));
    }

}