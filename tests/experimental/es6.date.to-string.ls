{module, test} = QUnit
module \ES6

test 'Date#toString' (assert)->
  assert.isFunction Date::toString
  assert.arity Date::toString, 0
  assert.name Date::toString, \toString
  assert.looksNative Date::toString
  assert.same String(new Date NaN), 'Invalid Date'