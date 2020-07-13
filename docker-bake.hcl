group "default" {
	targets = ["alpine-12", "alpine-11", "alpine-10"]
}

target "common" {
	platforms = ["linux/amd64"]
	args = {"GOCRONVER" = "v0.0.9"}
}

target "debian" {
	inherits = ["common"]
	dockerfile = "Dockerfile-debian"
}

target "alpine" {
	inherits = ["common"]
	dockerfile = "Dockerfile-alpine"
}

target "debian-latest" {
	inherits = ["debian"]
	args = {"BASETAG" = "13"}
	tags = ["budelius/postgres-backup-local:latest", "budelius/postgres-backup-local:13"]
}

target "alpine-latest" {
	inherits = ["alpine"]
	args = {"BASETAG" = "13-alpine"}
	tags = ["budelius/postgres-backup-local:alpine", "budelius/postgres-backup-local:13-alpine"]
}

target "debian-12" {
  inherits = ["debian"]
	args = {"BASETAG" = "12"}
  tags = ["budelius/postgres-backup-local:12"]
}

target "alpine-12" {
  inherits = ["alpine"]
	args = {"BASETAG" = "12-alpine"}
  tags = ["budelius/postgres-backup-local:12-alpine"]
}

target "debian-11" {
  inherits = ["debian"]
	args = {"BASETAG" = "11"}
  tags = ["budelius/postgres-backup-local:11"]
}

target "alpine-11" {
  inherits = ["alpine"]
	args = {"BASETAG" = "11-alpine"}
  tags = ["budelius/postgres-backup-local:11-alpine"]
}

target "debian-10" {
  inherits = ["debian"]
	args = {"BASETAG" = "10"}
  tags = ["budelius/postgres-backup-local:10"]
}

target "alpine-10" {
  inherits = ["alpine"]
	args = {"BASETAG" = "10-alpine"}
  tags = ["budelius/postgres-backup-local:10-alpine"]
}
