<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pelanggan".
 *
 * @property int $PelangganID
 * @property string $NamaPelanggan
 * @property string $Alamat
 * @property string $NomorTelepon
 *
 * @property Detailpenjualan[] $detailpenjualans
 */
class Pelanggan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pelanggan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['NamaPelanggan', 'Alamat', 'NomorTelepon'], 'required'],
            [['Alamat'], 'string'],
            [['NamaPelanggan'], 'string', 'max' => 255],
            [['NomorTelepon'], 'string', 'max' => 15],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'PelangganID' => 'Pelanggan ID',
            'NamaPelanggan' => 'Nama Pelanggan',
            'Alamat' => 'Alamat',
            'NomorTelepon' => 'Nomor Telepon',
        ];
    }

    /**
     * Gets query for [[Detailpenjualans]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getDetailpenjualans()
    {
        return $this->hasMany(Detailpenjualan::class, ['PelangganID' => 'PelangganID']);
    }
}
