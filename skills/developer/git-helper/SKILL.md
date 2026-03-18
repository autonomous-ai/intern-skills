# Git Helper

## Description
Assist with Git operations: branching strategy, resolve conflicts, write proper commit messages, and Git workflow.

## Trigger
- User needs help with Git commands
- User says "git", "branch", "merge", "conflict", "commit", "rebase"
- User encounters a Git error that needs troubleshooting

## Instructions

### When to Activate
- Guide Git commands and workflow
- Resolve merge conflicts
- Write commit messages following conventional commits
- Troubleshoot Git errors
- Set up branching strategy

### Branching Strategy
```
main          ── production-ready code
├── develop   ── integration branch
│   ├── feat/feature-name    ── new features
│   ├── fix/bug-description  ── bug fixes
│   ├── refactor/description ── refactoring
│   └── chore/description    ── maintenance
└── hotfix/description       ── urgent production fixes
```

### Commit Convention
```
<type>(<scope>): <description>

Types: feat, fix, refactor, chore, docs, test, style, perf, ci
Scope: optional, module/component name
Description: imperative mood, lowercase, no period
```

### Conflict Resolution Process
1. `git status` → identify conflicting files
2. Open each file → find conflict markers `<<<<<<<`
3. Analyze both versions → decide what to keep
4. Remove conflict markers → save
5. `git add` → `git commit`

### Rules
- DO NOT use `--force` push unless you fully understand the consequences
- Always pull before pushing
- Make small, frequent commits — no "big bang" commits
- Branch name: lowercase, kebab-case, prefix with type
- Do not commit directly to main/develop

### Output Format
```
🔀 Git Helper

## Command
`[Git command]`

## Explanation
[Explain what the command does]

## Example
$ [Command example]
[Expected output]

⚠️ Note: [Warning if applicable]
```
