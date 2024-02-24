<?php

use app\models\Produk;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\widgets\Pjax;
use kartik\export\ExportMenu;

$gridColumns = [
    ['class' => 'yii\grid\SerialColumn'],
    'ProdukID',
    'namabarang',
    'KategoriID',
    'stok',
    'harga',
    ['class' => 'yii\grid\ActionColumn'],
];

/** @var yii\web\View $this */
/** @var app\models\ProdukSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Produks';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="produk-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Produk', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); 
    ?>
    <?= ExportMenu::widget([
        'dataProvider' => $dataProvider,
        'columns' => $gridColumns,
        'clearBuffers' => true, //optional
    ]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'ProdukID',
            'namabarang',
            'KategoriID',
            'stok',
            'harga',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, Produk $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'ProdukID' => $model->ProdukID]);
                }
            ],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>