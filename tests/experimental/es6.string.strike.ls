{module, test} = QUnit
module \ES6

test 'String#strike' (assert)->
  assert.isFunction String::strike
  assert.arity String::strike, 0
  assert.name String::strike, \strike
  assert.looksNative String::strike
  assert.same 'a'strike!, '<strike>a</strike>', 'lower case'