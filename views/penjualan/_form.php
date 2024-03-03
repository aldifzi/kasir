<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use yii\bootstrap\Button;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\widgets\Pjax;
use yii\helpers\Url;
use app\models\Pelanggan;

/** @var yii\web\View $this */
/** @var app\models\Penjualan $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="penjualan-form">

    <?php $form = ActiveForm::begin(); ?>

    

    <?php echo $form->field($model, 'PelangganID')->widget(Select2::classname(), [
        'name' => 'pelanggan',
        'id' => 'plgn-id',
        'data' => ArrayHelper::map(Pelanggan::find()->asArray()->all(), "PelangganID", "NamaPelanggan"),
        'language' => 'id',
        'options' => ['placeholder' => 'PIlih Pelanggan ...', ],
        'pluginOptions' => [
            'allowClear' => true,
            /* 'disabled' => true */
        ],
    ]); ?>

    <?= $form->field($model, 'TanggalPenjualan')->textInput() ?>

    <?= $form->field($model, 'TotalHarga')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Bayar')->textInput() ?>

    <?= $form->field($model, 'Nota')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
