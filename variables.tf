variable "repository" {
  type        = string
  description = "(String): (Required) The repository to read the file from. If an unqualified repo name (without an owner) is passed, the owner will be inferred from the owner of the token used to execute the plan. If a name of the type 'owner/repo' (with a slash in the middle) is passed, the owner will be as specified and not the owner of the token."
}

variable "branch" {
  type        = string
  description = "(String): (Required) Git branch. Defaults to the repository's default branch."
}

variable "file_names" {
  type        = list(string)
  description = "(list of strings): (Required) Source files to copy."
}

variable "target_path" {
  type        = list(string)
  description = "(String): (Required) Path to where the file will be copied."
  default     = []
}

variable "content_file" {
  description = "Files' content"
  type        = list(string)
  default     = null
}
