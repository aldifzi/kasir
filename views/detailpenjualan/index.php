<?php

use app\models\Detailpenjualan;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\widgets\Pjax;
/** @var yii\web\View $this */
/** @var app\models\DetailpenjualanSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Detailpenjualans';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="detailpenjualan-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Detailpenjualan', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'DetailID',
            'produk.namabarang',
            'pelanggan1.NamaPelanggan',
            'Nota',
            'JumlahProduk',
            'Subtotal',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, Detailpenjualan $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'DetailID' => $model->DetailID]);
                 }
            ],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
