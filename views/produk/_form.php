<?php

use app\models\Kategori;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;

/** @var yii\web\View $this */
/** @var app\models\Produk $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="produk-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'namabarang')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'KategoriID')->widget(Select2::classname(), [
        'name' => 'pelanggan',
        'id' => 'produk-id',
        'data' => ArrayHelper::map(Kategori::find()->asArray()->all(), "KategoriID", "Namakategori"),
        'language' => 'id',
        'options' => ['placeholder' => 'Pilih Kategori ...'],
        'pluginOptions' => [
            'allowClear' => true
        ],
    ]); ?>

    <?= $form->field($model, 'stok')->textInput() ?>

    <?= $form->field($model, 'harga')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
