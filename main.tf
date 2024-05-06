resource "github_repository_file" "this" {
  count               = length(var.file_names)
  repository          = var.repository
  branch              = var.branch
  overwrite_on_create = true
  file                = var.target_path[count.index] == "" ? "${var.file_names[count.index]}" : "${trim(var.target_path[count.index], "/")}/${basename(var.file_names[count.index])}"
  content             = var.content_file[count.index]
  commit_message      = "[Terraform Automation] creating/editing ${trim(var.target_path[count.index], "/")}/${basename(var.file_names[count.index])}"
  commit_author       = "[Terraform Automation]"
  commit_email        = "terraform@an-utterly-fake-domain.local"
}
