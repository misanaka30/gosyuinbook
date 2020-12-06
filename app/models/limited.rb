class Limited < ActiveHash::Base
  self.data = [
    {id: 0, name: 'ノーマル'}, {id: 1, name: '期間限定御朱印'},
    {id: 2, name: '季節限定御朱印'},{id: 3, name: '月限定御朱印'},
    {id: 4, name: 'その他'},
  ]
  include ActiveHash::Associations
  has_many :gosyuins
end