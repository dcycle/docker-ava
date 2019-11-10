// This is a node module.
// See https://www.sitepoint.com/understanding-module-exports-exports-node-js/
module.exports = {
  dangerlevel: function(){
    return this.tsunamidangerlevel() * 4 + this.volcanodangerlevel() * 10;
  },

  tsunamidangerlevel: function(num){
    // Call some external API.
    return this_will_fail_during_testing();
    // During tests, we want to ignore this function.
  },

  volcanodangerlevel: function(num){
    // Call some external API.
    return this_will_fail_during_testing();
    // During tests, we want to ignore this function.
  }
}
