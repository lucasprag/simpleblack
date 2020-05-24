import { VimColors } from "vimcolors"

export class TypeScriptExample extends VimColors {
  constructor(public colorscheme: string) {
    super(arguments);
    this.colorscheme = colorscheme;
  }

  static example(): Array<number> {
    // Bacon ipsum dolor sit amet
    let list: Array<number> = [1, 2, 3];

    ['string', true, false, null, 99.9, 42, function(){}].forEach(function(value) {
      console.log(`it appears that ${value || "null" } is a ${typeof value}`);
    })

    Object.entries({string: 'value', number: 2}).forEach((key: string, value: any) => {
      console.warn(`the ${key} key has a value of ${typeof value}`);
    })

    return list;
  }

  public present(): string {
    if (this.colorscheme.match(/dark/)) {
      return "My colorscheme called " + this.colorscheme + " is dark.";
    }
  }
}

interface Example {
  colorscheme: string;
}

function greeter(example: Example) {
  return "Hello, " + example.colorscheme;
}

var example = new TypeScriptExample("simpleblack");
document.getElementById("demo").innerHTML = example.present();

window.alert(greeter(example));

let changeMe: string = "42"
const cantChangeMe: number = 42
console.log(changeMe = "new value", changeMe, cantChangeMe)



