import test from 'ava'

var my = require('/mycode/timesten.js');

test('one plus one is two', t => {
  t.true(my.timesten(2) == 20);
})
