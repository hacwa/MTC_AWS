# --- root/outputs.tf

output "load_balancer_endpoint" {
    value = module.loadbalancing.lb_endpoint
}

output "instances" {
    value = {for i in module.compute.instance :i.tags.Name => "${i.public_ip}:${module.compute.test.port}" }
#    value = join(":", [{for i in module.compute.instance :i.tags.Name => i.public_ip }, module.compute.test[i].port])
#    module.compute.test[*].port
 #   sensitive = true
}