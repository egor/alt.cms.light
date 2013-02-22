<?php

class DefaultController extends Controller
{

    public function actionIndex()
    {
        $this->pageTitle = 'CMS ALTADMIN';
        if (Yii::app()->user->isGuest || Yii::app()->user->role != 'admin') {
            $model = new LoginForm;
            // if it is ajax validation request
            if (isset($_POST['ajax']) && $_POST['ajax'] === 'login-form') {
                echo CActiveForm::validate($model);
                Yii::app()->end();
            }

            // collect user input data
            if (isset($_POST['LoginForm'])) {
                $model->attributes = $_POST['LoginForm'];
                // validate user input and redirect to the previous page if valid
                if ($model->validate() && $model->login())
                //$this->redirect(Yii::app()->user->returnUrl);
                    $this->redirect('/altadmin/');
            }
            // display the login form
            $this->render('login', array('model' => $model));
        } else {
            $this->render('index');
        }
        //$model = new User;
        //$model=new LoginForm;
        //$this->render('index', array('model' => $model));
    }

    public function actionLogout()
    {
        Yii::app()->user->logout();
        $this->redirect(Yii::app()->homeUrl);
    }

}