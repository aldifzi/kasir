<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/** @var yii\web\View $this */
/** @var app\models\Penjualan $model */

$this->title = $model->PenjualanID;
$this->params['breadcrumbs'][] = ['label' => 'Penjualans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="penjualan-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'PenjualanID' => $model->PenjualanID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'PenjualanID' => $model->PenjualanID], [
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
            'PenjualanID',
            'PelangganID',
            'TanggalPenjualan',
            [
                'attribute' => 'TotalHarga',
                'value' => 'Rp ' . number_format($model->TotalHarga, 0, ',', '.'),
            ],
            [
                'attribute' => 'Bayar',
                'value' => 'Rp ' . number_format($model->Bayar, 0, ',', '.'),
            ],
            [
                'attribute' => 'Kembali',
                'value' => 'Rp ' . number_format($model->Kembali, 0, ',', '.'),
            ],
            'Nota',
        ],
    ]) ?>

</div>
