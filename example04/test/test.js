import test from 'ava'
import sinon from 'sinon'

var my = require('/mycode/dangerlevel.js');

test('Danger level is correct', t => {
  [
    {
      tsunami: 1,
      volcano: 2,
      expected: 24,
    },
    {
      tsunami: 1,
      volcano: 1,
      expected: 14,
    },
  ].forEach(function(data) {
    var stub1 = sinon.stub(my, 'tsunamidangerlevel').returns(data.tsunami);
    var stub2 = sinon.stub(my, 'volcanodangerlevel').returns(data.volcano);

    var output = my.dangerlevel();

    t.true(output == data.expected, output + '==' + data.expected);

    stub1.restore();
    stub2.restore();
  });
})
