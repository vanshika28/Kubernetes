provider "kubernetes" {
  config_context_cluster   = "minikube"
}

resource "kubernetes_replication_controller" "rcpod" {
  metadata {
    name = "rcpod1"
  }

  spec {
     replicas = 2
    selector = {
       env="dev",
       dc="IN",
         
    }
    template {
      metadata {
        labels =  {
                              env="dev" ,
                               dc="IN"
        }
        annotations = {
          "key1" = "value1"
        }
      }

      spec {
        container {
            image="vimal13/apache-webserver-php"
           name="smallimage"
          
                                                 }
                                       }
}
}
}
