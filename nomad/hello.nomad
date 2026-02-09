job "hello-devops" {
  datacenters = ["dc1"]
  type = "service"

  group "hello-group" {
    count = 1

    task "hello-task" {
      driver = "docker"

      config {
        image = "hello-devop:v1"
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}

