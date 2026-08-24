---
name: code-review
description: Perform a multi-agent review of code in a linked PR or current branch changes.
---

Review the linked PR or branch changes if no PR is provided. Ensure you get adversarial. DO NOT make code changes. You are the last check before this goes into production and will be held accountable for any lapse in quality. DO NOT worry about existing issues, only issues introduced by this change. Use multiple subagents to review with models from different families. Consider quality, security, and performance. Use git history and prior PR/issues on GH to ensure this doesn't undo prior decisions unintentionally. In the end provide a detailed synthesis and readable summary with evidence of your approval or disapproval.