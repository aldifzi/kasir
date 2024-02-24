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



/** @var yii\web\View $this */
/** @var app\models\Detailpenjualan $model */
/** @var yii\widgets\ActiveForm $form */
?>

<?php $form = ActiveForm::begin(); ?>

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

    <div class="form-group">
        <?= Html::a('<button style="background-color: aqua; padding: 10px;"></button>', ['add-to-cart', 'id' => $model->ProdukID]);?>
    </div>
    <table class="table" id="tabel-barang">
        <thead>
            <tr>
                <th>Nama Barang</th>
                <th style="">Jumlah</th>
                <th>Harga</th>
                <th>Subtotal</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            <!-- Baris-baris akan ditambahkan secara dinamis di sini -->
        </tbody>
        <tfoot>
            <tr>
                <th colspan="3">Total</th>
                <th id="total">0</th>
                <th></th>
            </tr>
        </tfoot>
    </table>
    <?php ActiveForm::end(); ?>