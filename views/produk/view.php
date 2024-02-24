<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/** @var yii\web\View $this */
/** @var app\models\Produk $model */

$this->title = $model->ProdukID;
$this->params['breadcrumbs'][] = ['label' => 'Produks', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="produk-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'ProdukID' => $model->ProdukID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'ProdukID' => $model->ProdukID], [
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
            'ProdukID',
            'namabarang',
            'KategoriID',
            'stok',
            'harga',
        ],
    ]) ?>

</div>
