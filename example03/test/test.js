import test from 'ava'
import sinon from 'sinon'
// This is not actually used in this test, just confirming it does not break
// things.
import Vue from 'vue'

var my = require('/mycode/dangerlevel.js');

test('Danger level is correct', t => {
  sinon.stub(my, 'tsunamidangerlevel').returns(1);
  sinon.stub(my, 'volcanodangerlevel').returns(2);

  t.true(my.dangerlevel() == 24);
})
