import { VimColors } from "vimcolors"

class JavaScriptExample extends VimColors {
  constructor(attributes = {}) {
    this.colorscheme = attributes.colorscheme;
  }

  static examples() {
    // Bacon ipsum dolor sit amet
    ['string', true, false, null, 99.9, 42, function(){}].forEach(function(value) {
      console.log(`it appears that ${value} is a ${typeof value}`);
    })

    Object.entries({string: 'value', number: 2}).forEach((key, value) => {
      console.warn(`the ${key} key has a value of ${typeof value}`);
    })
  }

  present(options) {
    if (this.colorscheme.match(/dark/)) {
      return "My colorscheme called " + this.colorscheme + " is dark.";
    }

    super(options);
  }
}

var example = new JavaScriptExample({ colorscheme: "simpleblack" });
document.getElementById("demo").innerHTML = example.present();

let changeMe = "42"
const cantChangeMe = 42
window.alert(changeMe)
console.log(changeMe = cantChangeMe, changeMe)


