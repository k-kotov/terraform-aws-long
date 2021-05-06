
module "win" {
   source  = "./azure"
   }
 
 module "win111" {
   source  = "./test"
   }

    
  module "qa" {
    source  = "./google"
                    name = "kostya"
    } 
   
   module "xxx" {
   source  = "./aws"
   }
      
      module "aaa" {
   source  = "./ec2"
   }
 
     
               
 
 #module "v1" {
 #source = "github.com/k-kotov/33.git"
#}
  

    
   

    


