resource "github_repository_file" "this" {
  count               = length(var.file_names)
  repository          = var.repository
  branch              = var.branch
  overwrite_on_create = true
  file                = var.target_path == "" ? "${var.target_path}${basename(var.file_names[count.index])}" : "${var.target_path}/${basename(var.file_names[count.index])}"
  content             = var.content_file[count.index]
  commit_message      = "[Terraform Automation] creating/editing ${var.target_path}/${basename(var.file_names[count.index])}"
  commit_author       = "[Terraform Automation]"
  commit_email        = "terraform@an-utterly-fake-domain.local"
}
