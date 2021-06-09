version 1.0

task hello {
  command {
    echo 'Hello world!'
  }

  output {
    File response = stdout()
  }

  runtime {
    docker: "quay.io/ga4gh-dream/dockstore-tool-helloworld"
  }
}

workflow test {
  call hello
}