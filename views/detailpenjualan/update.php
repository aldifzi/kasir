<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Detailpenjualan $model */

$this->title = 'Update Detailpenjualan: ' . $model->DetailID;
$this->params['breadcrumbs'][] = ['label' => 'Detailpenjualans', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->DetailID, 'url' => ['view', 'DetailID' => $model->DetailID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="detailpenjualan-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
