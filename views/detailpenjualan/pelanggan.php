<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Detailpenjualan $model */

$this->title = 'Tambah Plgn';
$this->params['breadcrumbs'][] = ['label' => 'Detailpenjualans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="detailpenjualan-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_formpelanggan', [
        'model' => $model,
        'searchModel' => $searchModel,
        'dataProvider' => $dataProvider,
    ]) ?>
    

</div>