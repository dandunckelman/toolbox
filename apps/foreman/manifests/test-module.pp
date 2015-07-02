include apt

class { 'apt':
  update => {
    frequency => 'daily',
  },
  newthing => true,
}
