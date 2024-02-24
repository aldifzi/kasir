<?php
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/**  @var yii\data\ActiveDataProvider $dataProvider */

echo GridView::widget([
    'dataProvider' => $dataProvider,
    'columns' => [
        ['class' => 'yii\grid\SerialColumn'],
        'ProdukID',
        'namabarang',
        'stok',
        'harga',
        [
            'class' => ActionColumn::className(),
            'urlCreator' => function ($action, $model, $key, $index) {
                return Url::toRoute([$action, 'ProdukID' => $model->ProdukID]);
            },
        ],
    ],
]);
?>
