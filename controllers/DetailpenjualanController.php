<?php

namespace app\controllers;

use app\models\ProdukSearch;
use Yii;
use app\models\Detailpenjualan;
use app\models\DetailpenjualanSearch;
use app\models\Produk;
use app\models\Penjualan;
use app\models\Pelanggan;
use yii\helpers\Html;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use devanych\cart\CartItem;
use yz\shoppingcart\ShoppingCart;
use devanych\cart\Cart;

/**
 * DetailpenjualanController implements the CRUD actions for Detailpenjualan model.
 */
class DetailpenjualanController extends Controller
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
     * Lists all Detailpenjualan models.
     *
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new DetailpenjualanSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Detailpenjualan model.
     * @param int $DetailID Detail ID
     * @return string
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($DetailID)
    {
        return $this->render('view', [
            'model' => $this->findModel($DetailID),
        ]);
    }

    /**
     * Creates a new Detailpenjualan model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new Detailpenjualan();
        $searchModel = new ProdukSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        if ($this->request->isPost) {
            if ($model->load($this->request->post()) && $model->save()) {
                return $this->redirect(['update', 'DetailID' => $model->DetailID]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('pelanggan', [
            'model' => $model,
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    

    

    /**
     * Updates an existing Detailpenjualan model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $DetailID Detail ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($DetailID)
    {
        $model = $this->findModel($DetailID);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['update', 'DetailID' => $model->DetailID]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Detailpenjualan model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $DetailID Detail ID
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($DetailID)
    {
        $this->findModel($DetailID)->delete();

        return $this->redirect(['index']);
    }

    public function actionSubtotal($formjumlah, $formharga) {
        $subtotal = $formjumlah * $formharga;
        return $subtotal;
    }

   

    /* public function actionAddToCart($id)
    {
        $cart = new ShoppingCart();
        
        $totalCost = $cart->getCost();

        $model = Produk::findOne($id);
        if ($model) {
            $cart->put($model, 1);
            $data = $cart->getPositions();
            return $this->render('cart', [
                'data' => $data,
                'total'=> $totalCost,
            ]);
        }
        throw new NotFoundHttpException();
    }

    public function actionCart($id)
    {
        $cart = new ShoppingCart();
        
        $totalCost = $cart->getCost();

        $model = Produk::findOne($id);
        if ($model) {
            $cart->put($model, 1);
            $data = $cart->getPositions();
            return $this->render('create', [
                'data' => $data,
                'total'=> $totalCost,
            ]);
        }
        throw new NotFoundHttpException();
    }
    

    public function actionCheckout()
    {
        $cart = new ShoppingCart;
        $morder = new Penjualan();
        

        $pelid = Pelanggan::find()->where(['PelangganID'=>Yii::$app->user->identity->id])->one();

        $morder->TanggalPenjualan = date('d-m-Y');
        $morder->PelangganID;
        $morder->Pelangganid = $pelid->PenjualanID;
        $morder->save();

        foreach ($cart->getPositions() as $data):
            $mdetorder = new Detailpenjualan();
            $mdetorder->PenjualanID = $morder->$id;
            $mdetorder->ProdukID = $data->$id;
            $mdetorder->save();
        endforeach;
        throw new NotFoundHttpException();
    } */
    




    /**
     * Finds the Detailpenjualan model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $DetailID Detail ID
     * @return Detailpenjualan the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($DetailID)
    {
        if (($model = Detailpenjualan::findOne(['DetailID' => $DetailID])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
