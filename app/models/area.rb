class Area < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }, { id: 2, name: 'Central' }, { id: 3, name: 'Edogawa' }, { id: 4, name: 'Funabori' },
    { id: 5, name: 'Haruechou' }, { id: 6, name: 'Higashikomatsugawa' }, { id: 7, name: 'Higashikasai' },
    { id: 8, name: 'Higashikoiwa' }, { id: 9, name: 'Higashimatsumoto' }, { id: 10, name: 'Higashishinozaki' },
    { id: 11, name: 'Higashishinozakimachi' }, { id: 12, name: 'Honisshiki' }, { id: 13, name: 'Horiechou' },
    { id: 14, name: 'Hirai' }, { id: 15, name: 'Ichinoe' }, { id: 16, name: 'Kitakasai' },
    { id: 17, name: 'Kitakoiwa' }, { id: 18, name: 'Kitashinozaki' }, { id: 19, name: 'Komatsugawa' },
    { id: 20, name: 'Kamiisshiki' }, { id: 21, name: 'Kamishinozaki' }, { id: 22, name: 'Matsue' },
    { id: 23, name: 'Matsumoto' }, { id: 24, name: 'Matsushima' }, { id: 25, name: 'Minamikasai' },
    { id: 26, name: 'Minamikoiwa' }, { id: 27, name: 'Minamishinozakimachi' }, { id: 28, name: 'Mizue' },
    { id: 29, name: 'Nakakasai' }, { id: 30, name: 'Niihori' }, { id: 31, name: 'Ninoechou' },
    { id: 32, name: 'Nishiichinoe' }, { id: 33, name: 'Nishikoiwa' }, { id: 34, name: 'Nishikomatsugawa' },
    { id: 35, name: 'Nishimizue' }, { id: 36, name: 'Nishishinozaki' }, { id: 37, name: 'Okinomiyachou' },
    { id: 38, name: 'Otsugi' }, { id: 39, name: 'Rinkaichou' }, { id: 40, name: 'Seishinchou' },
    { id: 41, name: 'Shishihonechou' }, { id: 42, name: 'Shimoshinozakimachi' }, { id: 43, name: 'Shinozakimachi' },
    { id: 44, name: 'Ukitachou' }, { id: 45, name: 'Yagouchi' },
  ]
 
  include ActiveHash::Associations
  has_many :eng_items

end