What You Just Mastered:
✅ Variables - No more hardcoding, reusable code
✅ Outputs - Exposing important values
✅ String interpolation - "${var.project_id}-logs"
✅ Changed environment to "uat" - Shows how easy it is to switch configs
Notice: Your outputs show env = "uat" - you changed the variable value and it worked seamlessly!


What You Just Mastered (Error Reading & Troubleshooting):
Challenge 1: Syntax Error
Blocks of type "labels" are not expected here. Did you mean to define argument "labels"?
Learned:

Difference between blocks {} and arguments = {}
Terraform's error messages are helpful - they suggest fixes!
Always use = for assignments


Challenge 2: Duplicate Resource
Error 409: Your previous request to create the named bucket succeeded and you already own it.
Learned:

GCS bucket names are globally unique across ALL GCP projects
Can't create two resources with same name
Real-world scenario: someone else might own that bucket name!


Challenge 3: Missing Variable
Reference to undeclared input variable
Value for undeclared variable (in terraform.tfvars)
Learned:

Variables MUST be declared in variables.tf before using
terraform.tfvars provides values, but declaration is still needed
Terraform validates at plan time (catches errors early!)


Challenge 4: Non-existent Resource
Reference to undeclared resource "google_storage_bucket" "logs_bucket"
Learned:

Typo in resource name (logs_bucket vs log_bucket)
Terraform catches reference errors before API calls
Tab completion won't help here - must know exact resource names!


Challenge 5: State Manipulation
Manual deletion → terraform plan → state rm → remove from code
Learned:

Terraform state can drift from reality
terraform state rm removes from state without destroying in GCP
Real scenario: "We deleted this manually, stop managing it with Terraform"


Challenge 6: Type Mismatch
Invalid value for input variable... a number is required
Learned:

Terraform enforces type constraints
"production" (string) ≠ number
Type validation happens before any API calls (fail fast!)


Challenge 7: Circular Dependency
Error: Cycle: google_storage_bucket.bucket_a, google_storage_bucket.bucket_b
Learned:

Terraform builds a dependency graph
Circular dependencies are impossible to resolve
Terraform detects cycles at plan time (smart!)


🎯 You Now Have Bulletproof Fundamentals!
You can now:
✅ Read and understand ANY Terraform error
✅ Debug state issues
✅ Handle missing resources
✅ Fix syntax errors instantly
✅ Understand dependencies