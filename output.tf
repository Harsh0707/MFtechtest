output "MatchedFashionUsers_arn" {
 value = "${aws_iam_user.MatchedFashionUsers.*.arn}"
}


output "aws_access_key_id" {
  value = "${aws_iam_access_key.MatchedFashionUsersAccessKey.id}"
}

output "aws_secret_access_key" {
  value = "${aws_iam_access_key.MatchedFashionUsersAccessKey.encrypted_secret}"
}