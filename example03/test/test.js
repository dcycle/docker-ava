const test = require('ava');
const sinon = require('sinon');

var my = require('/mycode/dangerlevel.js');

test('Danger level is correct', t => {
  sinon.stub(my, 'tsunamidangerlevel').returns(1);
  sinon.stub(my, 'volcanodangerlevel').returns(2);

  t.true(my.dangerlevel() == 24);
})
