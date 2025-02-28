version 1.0

meta {
    author: "Test 3"
    email: "YOUR_EMAIL_HERE"
    description: "This is sample WDL Tool code taken and adapted from the [dockstore-tool-bamstats](https://github.com/CancerCollaboratory/dockstore-tool-bamstats/blob/develop/Dockstore.wdl) repository. For more information, see 'Getting Started with WDL' in the Dockstore Docs."
}

task hello {
  command {
    echo 'Hello world!!'
  }

  output {
    File response = stdout()
  }

  runtime {
    docker: "quay.io/calico/node:v3.23.0-0.dev-417-g89b438f573e2"
  }
}

workflow test {
  call hello
 
  meta {
    author : "Test User 2"
    email : "test@dockstore.org"
    description: "This is a description!"
  }
}
