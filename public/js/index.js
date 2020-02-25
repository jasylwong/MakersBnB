function Space () {
  this.name = "Castle"
}

var space = new Space()

Space.prototype.show_name = function() {
  return this.name
}

console.log(space.show_name())
