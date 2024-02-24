<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Produk $model */

$this->title = 'Update Produk: ' . $model->ProdukID;
$this->params['breadcrumbs'][] = ['label' => 'Produks', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->ProdukID, 'url' => ['view', 'ProdukID' => $model->ProdukID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="produk-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
