{module, test} = QUnit
module \ES6

test 'Reflect.apply' (assert)->
  {apply} = core.Reflect
  assert.isFunction apply
  assert.arity apply, 3
  if \name of apply
    assert.name apply, \apply
  assert.strictEqual apply(Array::push, [1 2], [3 4 5]), 5
  C = (a, b, c)-> a + b + c
  C.apply = 42
  assert.strictEqual apply(C, null, <[foo bar baz]>), \foobarbaz, 'works with redefined apply'
  assert.throws (-> apply 42, null, []), TypeError, 'throws on primitive'