provider "aws" {
}

resource "aws_iam_user" "MatchedFashionUsers" {
  count = "${length(var.username)}"
  name = "${element(var.username,count.index )}"
}

resource "aws_iam_access_key" "MatchedFashionUsersAccessKey" {
  count = "${length(var.username)}"
  users = "${element(aws_iam_user.MatchedFashionUsers.name,count.index )}"
  pgp_key = "${var.pgp_key}"
}
