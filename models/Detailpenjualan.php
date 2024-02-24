<?php

namespace app\models;

use Yii;

use ItemTrait;

/**
 * This is the model class for table "detailpenjualan".
 *
 * @property int $DetailID
 * @property int $ProdukID
 * @property int $PelangganID
 * @property int $Nota
 * @property int $JumlahProduk
 * @property float $Subtotal
 *
 * @property Pelanggan $pelanggan
 * @property Produk $produk
 */
class Detailpenjualan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'detailpenjualan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['PelangganID', 'Nota'], 'required'],
            [['ProdukID', 'PelangganID', 'Nota', 'JumlahProduk'], 'integer'],
            [['Subtotal'], 'number'],
            [['ProdukID'], 'exist', 'skipOnError' => true, 'targetClass' => Produk::class, 'targetAttribute' => ['ProdukID' => 'ProdukID']],
            [['PelangganID'], 'exist', 'skipOnError' => true, 'targetClass' => Pelanggan::class, 'targetAttribute' => ['PelangganID' => 'PelangganID']],
        ];
    }

    

    public function getPrice()
    {
        return $this->harga;
    }

    public function getId()
    {
        return $this->ProdukID;
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'DetailID' => 'Detail ID',
            'ProdukID' => 'Produk ID',
            'PelangganID' => 'Pelanggan ID',
            'Nota' => 'Nota',
            'JumlahProduk' => 'Jumlah Produk',
            'Subtotal' => 'Subtotal',
        ];
    }

    /**
     * Gets query for [[Pelanggan]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getPelanggan()
    {
        return $this->hasMany(Pelanggan::class, ['PelangganID' => 'PelangganID']);
    }

    /**
     * Gets query for [[Produk]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProduk()
    {
        return $this->hasOne(Produk::class, ['ProdukID' => 'ProdukID']);
    }
}
