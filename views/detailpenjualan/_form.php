<?php

use app\models\Detailpenjualan;
use app\models\Pelanggan;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\jui\DatePicker;
use app\models\Penjualan;
use app\models\Produk;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use yii\bootstrap\Button;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\widgets\Pjax;
use yii\helpers\Url;
use devanych\cart\CartItem;
use devanych\cart\Cart;

$cart = \Yii::$app->cart;

/** @var yii\web\View $this */
/** @var app\models\Detailpenjualan $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="detailpenjualan-form">

    <?php $form = ActiveForm::begin(); ?>

    

    <?php echo $form->field($model, 'PelangganID')->widget(Select2::classname(), [
        'name' => 'pelanggan',
        'id' => 'plgn-id',
        'data' => ArrayHelper::map(Pelanggan::find()->asArray()->all(), "PelangganID", "NamaPelanggan"),
        'language' => 'id',
        'options' => ['placeholder' => 'PIlih Pelanggan ...'],
        'pluginOptions' => [
            'allowClear' => true
            
        ],
    ]); ?>

    <?= $form->field($model, 'Nota')->textInput() ?>

    <?= $form->field($model, 'ProdukID')->widget(Select2::classname(), [
        'name' => 'pelanggan',
        'id' => 'produk-id',
        'data' => ArrayHelper::map(Produk::find()->asArray()->all(), "ProdukID", "namabarang", "harga"),
        'language' => 'id',
        'options' => ['placeholder' => 'Pilih Produk ...'],
        'pluginOptions' => [
            'allowClear' => true
        ],
    ]); ?>



    <?= $form->field($model, 'JumlahProduk')->textInput() ?>

    <div class="form-group">
        <?= Html::a('Update', ['subtotal'], ['class' => 'btn btn-success']) ?>
        <?= Html::submitButton('Simpan', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>