const test = require('ava');
var my = require('/mycode/timesten.js');

test('two times ten is twenty', t => {
  t.true(my.timesten(2) == 20);
})
