<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "produk".
 *
 * @property int $ProdukID
 * @property string $namabarang
 * @property int $KategoriID
 * @property int $stok
 * @property float $harga
 *
 * @property Detailpenjualan[] $detailpenjualans
 * @property Kategori $kategori
 */
class Produk extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'produk';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['namabarang', 'KategoriID', 'stok', 'harga'], 'required'],
            [['KategoriID', 'stok'], 'integer'],
            [['harga'], 'number'],
            [['namabarang'], 'string', 'max' => 222],
            [['KategoriID'], 'exist', 'skipOnError' => true, 'targetClass' => Kategori::class, 'targetAttribute' => ['KategoriID' => 'KategoriID']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'ProdukID' => 'Produk ID',
            'namabarang' => 'Namabarang',
            'KategoriID' => 'Kategori ID',
            'stok' => 'Stok',
            'harga' => 'Harga',
        ];
    }

    /**
     * Gets query for [[Detailpenjualans]].
     *
     * @return \yii\db\ActiveQuery|yii\db\ActiveQuery
     */
    public function getDetailpenjualans()
    {
        return $this->hasMany(Detailpenjualan::class, ['ProdukID' => 'ProdukID']);
    }

    /**
     * Gets query for [[Kategori]].
     *
     * @return \yii\db\ActiveQuery|KategoriQuery
     */
    public function getKategori()
    {
        return $this->hasOne(Kategori::class, ['KategoriID' => 'KategoriID']);
    }

    /**
     * {@inheritdoc}
     * @return ProdukQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new ProdukQuery(get_called_class());
    }
}
