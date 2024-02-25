#DNS of LoadBalancer
output "lb_dns_name" {
  description = "DNS of Loadbalancer"
  value       = aws_lb.external-alb.dns_name
}

