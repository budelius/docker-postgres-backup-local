group "default" {
	targets = ["alpine-13"]
}

target "common" {
	platforms = ["linux/amd64", "linux/arm64", "linux/arm/v7"]
	args = {"GOCRONVER" = "v0.0.9"}
}

# target "debian" {
# 	inherits = ["common"]
# 	dockerfile = "Dockerfile-debian"
# }

target "alpine" {
	inherits = ["common"]
	dockerfile = "Dockerfile-alpine"
}

# target "debian-latest" {
# 	inherits = ["debian"]
# 	args = {"BASETAG" = "13"}
# 	tags = ["budelius/postgres-backup-local:latest", "budelius/postgres-backup-local:13"]
# }

# target "alpine-latest" {
# 	inherits = ["alpine"]
# 	args = {"BASETAG" = "13-alpine"}
# 	tags = ["budelius/postgres-backup-local:alpine", "budelius/postgres-backup-local:13-alpine"]
# }

# target "debian-13" {
#   inherits = ["debian"]
# 	args = {"BASETAG" = "13"}
#   tags = ["budelius/postgres-backup-local:13"]
# }

target "alpine-13" {
  inherits = ["alpine"]
	args = {"BASETAG" = "13-alpine"}
  tags = ["budelius/postgres-backup-local:13-alpine"]
}
