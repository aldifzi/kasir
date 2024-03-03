<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Penjualan $model */

$this->title = 'Pembayaran';
$this->params['breadcrumbs'][] = ['label' => 'Penjualans', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->PenjualanID, 'url' => ['view', 'PenjualanID' => $model->PenjualanID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="penjualan-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
