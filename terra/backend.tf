terraform {
       backend "s3"{
         bucket = "terraformdo14wd"
         key = "terrraform.tfstate"
         region = "us-east-1"
}
}
