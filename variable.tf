
variable "compartment_ocid" {
	default = "ocid1.tenancy.oc1..aaaaaaaak2bppm6h6xpghpco4evq7kzyb6z54sa4piforkfto6khbcu7aota"
}

variable "region" {
	default = "us-ashburn-1"
}

variable "InstanceImageOCID" {
  type = map
  
  default = {
    // See https://docs.cloud.oracle.com/images/
    // Platform image "Oracle-Linux-7.5-2018.10.16-0"
    "eu-frankfurt-1" = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaitzn6tdyjer7jl34h2ujz74jwy5nkbukbh55ekp6oyzwrtfa4zma"
    "uk-london-1" = "ocid1.image.oc1.uk-london-1.aaaaaaaa32voyikkkzfxyo4xbdmadc2dmvorfxxgdhpnk6dw64fa3l4jh7wa"
    "us-ashburn-1" = "ocid1.image.oc1.iad.aaaaaaaageeenzyuxgia726xur4ztaoxbxyjlxogdhreu3ngfj2gji3bayda"
    "us-phoenix-1" = "ocid1.image.oc1.phx.aaaaaaaaoqj42sokaoh42l76wsyhn3k2beuntrh5maj3gmgmzeyr55zzrwwa"
  }
}


variable "ssh_public_key" {
	default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDBJ/qa4n1lbHr0j5TLaQqb0+tI+SxezMVtLDjP6o7P2yaZk7uWzs16i5FqFYPCTfRA18PUD1PZ10jIZlmAO2Yd6Gjfg0m1oPhelpH5Qx2TvrUZl6H1eNn091nuKUJw5EE/1K1Ihlq9nHdcPCeHij2VuC/kNk4jwqE1cDscGgQsbsj3jnBR0dagM6rQGLAZTpoxY0GyFAAS1crsUBGRhc9kVHvfNH/mR5pa24BznD+ozfTZSyR9o6yCilK9ATEuDVQIubgK12+2QgpAFcqXW1vy1THbd20jlXkrmJHcrk1LL9YWWIoLcSwoxWYv8mvN6yEbn8aRQIel+sOe4UoC2ftvdf4ap5s1NvIMwNj2dqCD9lTfpoF3HKzozyV1p6QM/dS0+DLQXJrMfsjkPCMn67wVHjgqjkfBrF0qjUA+adZYZiR7oBi6yIhkFGMfr5/xGbiHWIBFOEp+8BR2yA/knCThWTdkTlrIj/otZKqje8OOLCWEtO8upDRG718/VrbhJYc= root@vm1"
}

# Defines the number of instances to deploy
variable "NumInstances" {
    default = "2"
}

variable "InstanceShape" {
    default = "VM.Standard.E4.Flex"
}

# Specifies the Availability Domain
variable "localAD" {
    default = "xEqw:US-ASHBURN-AD-1"
}
