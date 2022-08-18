version 1.0

task hello {
  command {
    echo 'Hello world!'
  }

  output {
    File response = stdout()
  }

  runtime {
    docker: "quay.io/openshift-examples/multi-arch:multi"
  }
}

workflow test {
  call hello
}
