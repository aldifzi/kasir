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
        'options' => ['placeholder' => 'PIlih Pelanggan ...',],
        'pluginOptions' => [
            'allowClear' => true,
            /* 'disabled' => true */
        ],
    ]); ?>

    <?= $form->field($model, 'TanggalPenjualan')->textInput(['readOnly' => true]) ?>

    <?= $form->field($model, 'TotalHarga')->textInput(['readOnly' => true, 'maxlength' => true, 'id' => 'total-harga']) ?>

    <?= $form->field($model, 'Bayar')->textInput(['id' => 'bayar']) ?>

    <?= $form->field($model, 'Kembali')->textInput(['readOnly' => true, 'id' => 'kembali']) ?>
    <p id="pesan"></p>

    <?= $form->field($model, 'Nota')->textInput(['readOnly' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
<script type="text/javascript">
    // Fungsi untuk menghitung dan mengisi nilai kembali
    function calculateKembali() {
        // Ambil nilai Total Harga dan Bayar
        var totalHarga = parseFloat(document.getElementById('total-harga').value);
        var bayar = parseFloat(document.getElementById('bayar').value);

        // Hitung kembali
        var kembali = bayar - totalHarga;

        // Pastikan kembali tidak negatif
        kembali = kembali >= 0 ? kembali : 0;

        // Isi nilai kembali ke dalam input
        document.getElementById('kembali').value = kembali.toFixed(2);
         // Tampilkan pesan jika uang bayar kurang dari total harga
         if (bayar < totalHarga) {
            document.getElementById('pesan').innerText = 'Uang tidak cukup';
        } else {
            document.getElementById('pesan').innerText = '';
        }
    }

    // Panggil fungsi calculateKembali() setiap kali nilai Total Harga atau Bayar berubah
    document.getElementById('total-harga').addEventListener('input', calculateKembali);
    document.getElementById('bayar').addEventListener('input', calculateKembali);

    // Panggil fungsi calculateKembali() saat halaman pertama dimuat
    window.addEventListener('load', calculateKembali);
</script>