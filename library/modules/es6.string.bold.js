'use strict';
// B.2.3.5 String.prototype.bold()
require('./$.string-html')('bold', function(createHTML){
  return function bold(){
    return createHTML(this, 'b', '', '');
  }
});