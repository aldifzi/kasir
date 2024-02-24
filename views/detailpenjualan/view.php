<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/** @var yii\web\View $this */
/** @var app\models\Detailpenjualan $model */

$this->title = $model->DetailID;
$this->params['breadcrumbs'][] = ['label' => 'Detailpenjualans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="detailpenjualan-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'DetailID' => $model->DetailID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'DetailID' => $model->DetailID], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'DetailID',
            'ProdukID',
            'PelangganID',
            'Nota',
            'JumlahProduk',
            'Subtotal',
        ],
    ]) ?>

</div>
