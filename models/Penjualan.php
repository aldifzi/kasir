<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "penjualan".
 *
 * @property int $PenjualanID
 * @property int $PelangganID
 * @property string $TanggalPenjualan
 * @property float|null $TotalHarga
 * @property float $Bayar
 * @property int $Nota
 */
class Penjualan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'penjualan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['PelangganID', 'TanggalPenjualan', 'Nota'], 'required'],
            [['PelangganID', 'Nota'], 'integer'],
            [['TanggalPenjualan'], 'safe'],
            [['TotalHarga', 'Bayar', 'Kembali'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'PenjualanID' => 'Penjualan ID',
            'PelangganID' => 'Pelanggan ID',
            'TanggalPenjualan' => 'Tanggal Penjualan',
            'TotalHarga' => 'Total Harga',
            'Bayar' => 'Bayar',
            'Kembali' => 'Kembali',
            'Nota' => 'Nota',
        ];
    }
}
