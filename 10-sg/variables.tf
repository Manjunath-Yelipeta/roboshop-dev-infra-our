variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "test"
}

variable "sg_names" {
    type = list
    default = [
        "mongodb", "redis", "mysql", "rabbitmq",
        "catalogue", "user", "cart", "shipping", "payment",
        "backend_alb",
        "frontend",
        "frontend_alb",
        "bastion"
    ]
}