# [shunit2-colorize](https://github.com/joelpurra/shunit2-colorize)

Add colors to shUnit2 output.



> ## ⚠️ This project has been archived
>
> No future updates are planned. Feel free to continue using it, but expect no support.



## Usage


```bash
#!/usr/bin/env bash

function testFailedColors () {
	assertEquals 'This will fail' 'true' 'false'
}

source "${BASH_SOURCE%/*}/shunit2-colorize.sh"

# Requires shUnit2.
# https://code.google.com/p/shunit2/
[[ -z $(which shunit2) ]] && { echo "shunit2 is required." >&2; exit 1; }
source shunit2 |& colorizeShUnit2
```



## Kudos

- Based on [maven-antsy-color](https://github.com/builddoctor/maven-antsy-color) by [Julian Simpson, "The Build Doctor"](https://www.build-doctor.com/)
- Julian Simpson thanks: [Bernd Jünger](https://bjuenger.de/), [Colorize Maven Output](https://blog.blindgaenger.net/colorize_maven_output.html).
- Julian Simpson thanks: ~~https://johannes.jakeapp.com/blog/category/fun-with-linux/200901/maven-colorized~~



---

## License
Copyright (c) 2015 Joel Purra <https://joelpurra.com/>
All rights reserved.

When using **shunit2-colorize**, comply to the MIT license. Please see the LICENSE file for details.
