
const core = require("@actions/core");


async function action() {

  core.addPath("/usr/local/insomnia-inso/bin/inso")
}

if (require.main === module) {
  action();
}

module.exports = action;