{module, test} = QUnit
module \ES6

test 'String#sub' (assert)->
  assert.isFunction String::sub
  assert.arity String::sub, 0
  assert.name String::sub, \sub
  assert.looksNative String::sub
  assert.same 'a'sub!, '<sub>a</sub>', 'lower case'