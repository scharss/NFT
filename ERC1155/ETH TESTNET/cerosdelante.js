const fs = require('fs');


function zeroes(number, length) {

    var my_string = '' + number;
    while (my_string.length < length) {
        my_string = '0' + my_string;
    }

    return my_string;

};

for(var i=1; i<= 10000; i++){
// console.log(zeroes(i,64));
var c = zeroes((i),64);

fs.renameSync(`./json/${i}.json`, `./json/${c}.json`);

}




