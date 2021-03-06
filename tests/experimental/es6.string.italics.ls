{module, test} = QUnit
module \ES6

test 'String#italics' (assert)->
  assert.isFunction String::italics
  assert.arity String::italics, 0
  assert.name String::italics, \italics
  assert.looksNative String::italics
  assert.same 'a'italics!, '<i>a</i>', 'lower case'