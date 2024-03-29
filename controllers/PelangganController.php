<?php

namespace app\controllers;

use app\models\Pelanggan;
use app\models\PelangganSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * PelangganController implements the CRUD actions for Pelanggan model.
 */
class PelangganController extends Controller
{
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    /**
     * Lists all Pelanggan models.
     *
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new PelangganSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Pelanggan model.
     * @param int $PelangganID Pelanggan ID
     * @return string
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($PelangganID)
    {
        return $this->render('view', [
            'model' => $this->findModel($PelangganID),
        ]);
    }

    /**
     * Creates a new Pelanggan model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new Pelanggan();

        if ($this->request->isPost) {
            if ($model->load($this->request->post()) && $model->save()) {
                return $this->redirect(['view', 'PelangganID' => $model->PelangganID]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Pelanggan model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $PelangganID Pelanggan ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($PelangganID)
    {
        $model = $this->findModel($PelangganID);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'PelangganID' => $model->PelangganID]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Pelanggan model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $PelangganID Pelanggan ID
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($PelangganID)
    {
        $this->findModel($PelangganID)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Pelanggan model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $PelangganID Pelanggan ID
     * @return Pelanggan the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($PelangganID)
    {
        if (($model = Pelanggan::findOne(['PelangganID' => $PelangganID])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
