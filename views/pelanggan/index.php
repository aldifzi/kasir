<?php

use app\models\Pelanggan;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\widgets\Pjax;
/** @var yii\web\View $this */
/** @var app\models\PelangganSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Pelanggans';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pelanggan-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Pelanggan', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            
            'NamaPelanggan',
            'Alamat:ntext',
            'NomorTelepon',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, Pelanggan $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'PelangganID' => $model->PelangganID]);
                 }
            ],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
