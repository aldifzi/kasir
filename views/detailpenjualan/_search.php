<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var app\models\DetailpenjualanSearch $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="detailpenjualan-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <?= $form->field($model, 'DetailID') ?>

    <?= $form->field($model, 'ProdukID') ?>

    <?= $form->field($model, 'PelangganID') ?>

    <?= $form->field($model, 'Nota') ?>

    <?= $form->field($model, 'JumlahProduk') ?>

    <?php // echo $form->field($model, 'Subtotal') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
