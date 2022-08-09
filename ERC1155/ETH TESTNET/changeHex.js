const fs = require('fs');


function zeroes(number, length) {
	var hex = number.toString(16);
    var my_string = '' + hex;
    while (my_string.length < length) {
        my_string = '0' + my_string;
    }

    return my_string;

};

 //console.log(zeroes(4568,12));


for(var i=1; i<= 10000; i++){
// console.log(zeroes(i,64));
var c = zeroes((i),64);

fs.renameSync(`./json/${i}.json`, `./json/${c}.json`);

}
