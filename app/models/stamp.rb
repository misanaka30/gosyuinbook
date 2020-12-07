class Stamp < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'}, {id: 1, name: '寺院'},
    {id: 2, name: '神社'},{id: 3, name: '御朱印帳'},
    {id: 4, name: 'その他'},
  ]
  include ActiveHash::Associations
  has_many :gosyuins
end