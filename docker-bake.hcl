group "default" {
	targets = ["alpine-latest", "alpine-12", "alpine-11"]
}

target "common" {
	platforms = ["linux/amd64", "linux/arm64", "linux/arm/v7"]
	args = {"GOCRONVER" = "v0.0.9"}
}

target "alpine" {
	inherits = ["common"]
	dockerfile = "Dockerfile-alpine"
}

target "alpine-latest" {
	inherits = ["alpine"]
	args = {"BASETAG" = "13-alpine"}
	tags = ["budelius/postgres-backup-local:alpine", "budelius/postgres-backup-local:13-alpine"]
}

target "alpine-12" {
  inherits = ["alpine"]
	args = {"BASETAG" = "12-alpine"}
  tags = ["budelius/postgres-backup-local:12-alpine"]
}

target "alpine-11" {
  inherits = ["alpine"]
	args = {"BASETAG" = "11-alpine"}
  tags = ["budelius/postgres-backup-local:11-alpine"]
}
