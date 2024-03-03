<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "kategori".
 *
 * @property int $KategoriID
 * @property string $Nama kategori
 *
 * @property Produk[] $produks
 */
class Kategori extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'kategori';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Namakategori'], 'required'],
            [['KategoriID'], 'integer'],
            [['Namakategori'], 'string', 'max' => 100],
            [['KategoriID'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'KategoriID' => 'Kategori ID',
            'Namakategori' => 'Nama Kategori',
        ];
    }

    /**
     * Gets query for [[Produks]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProduks()
    {
        return $this->hasMany(Produk::class, ['KategoriID' => 'KategoriID']);
    }
}
