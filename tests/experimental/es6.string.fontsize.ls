{module, test} = QUnit
module \ES6

test 'String#fontsize' (assert)->
  assert.isFunction String::fontsize
  assert.arity String::fontsize, 1
  assert.name String::fontsize, \fontsize
  assert.looksNative String::fontsize
  assert.same 'a'fontsize(\b), '<font size="b">a</font>', 'lower case'
  assert.same 'a'fontsize(\"), '<font size="&quot;">a</font>', 'escape quotes'