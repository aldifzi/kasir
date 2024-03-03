<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var app\models\PenjualanSearch $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="penjualan-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <?= $form->field($model, 'PenjualanID') ?>

    <?= $form->field($model, 'PelangganID') ?>

    <?= $form->field($model, 'TanggalPenjualan') ?>

    <?= $form->field($model, 'TotalHarga') ?>

    <?= $form->field($model, 'Bayar') ?>

    <?php // echo $form->field($model, 'Nota') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
