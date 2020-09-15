class Priority < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '絶対やる！！' },
    { id: 3, name: 'やる！！' },
    { id: 4, name: 'やれたら、やる！' }
  ]
end
