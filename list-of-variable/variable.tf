variable "map_of_objects" {
    type = map(object({
      name = string
      size = string
    }))
    default = {
       "dev" ={
        name = "developmnt"
        size = "t2.micro"
    }
    "prod" = {
        name = "production"
        size = "t2.large"
    } 
}
}