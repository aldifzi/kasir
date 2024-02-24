<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "penjualan".
 *
 * @property int $PenjualanID
 * @property int $DetailID
 * @property string $TanggalPenjualan
 * @property float $TotalHarga
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
            [['DetailID', 'TanggalPenjualan', 'TotalHarga', 'Nota'], 'required'],
            [['DetailID', 'Nota'], 'integer'],
            [['TotalHarga'], 'number'],
            [['TanggalPenjualan'], 'date'],
            [['DetailID'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'PenjualanID' => 'Penjualan ID',
            'DetailID' => 'Detail ID',
            'TanggalPenjualan' => 'Tanggal Penjualan',
            'TotalHarga' => 'Total Harga',
            'Nota' => 'Nota',
        ];
    }

    public function getPelanggan()
    {
        return $this->hasMany(Pelanggan::class, ['PenjualanID' => 'PenjualanID']);
    }
}
