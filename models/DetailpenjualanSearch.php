<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Detailpenjualan;

/**
 * DetailpenjualanSearch represents the model behind the search form of `app\models\Detailpenjualan`.
 */
class DetailpenjualanSearch extends Detailpenjualan
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['DetailID', 'ProdukID', 'PelangganID', 'Nota', 'JumlahProduk'], 'integer'],
            [['Subtotal'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Detailpenjualan::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'DetailID' => $this->DetailID,
            'ProdukID' => $this->ProdukID,
            'PelangganID' => $this->PelangganID,
            'Nota' => $this->Nota,
            'JumlahProduk' => $this->JumlahProduk,
            'Subtotal' => $this->Subtotal,
        ]);

        return $dataProvider;
    }
}
