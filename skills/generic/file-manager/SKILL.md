---
name: file-manager
description: Manages file and folder operations including creating, moving, renaming, searching, organizing, compressing, and deleting files. Use when the user asks to create, delete, find, move, rename, organize, or clean up files and directories, or asks about file sizes and disk usage.
---

# File Manager

## Quick Start
Identify the file operation, verify paths exist, check for conflicts, and always confirm before destructive or batch operations. Display file sizes in human-readable format.

## Workflow
1. Determine the operation: create, delete, move/copy, rename, search, organize, or compress/decompress
2. Verify file paths and directory structure exist and are accessible
3. Check for conflicts: duplicate names at destination, permissions, disk space
4. For destructive or batch operations, present a preview and require explicit confirmation
5. Execute the operation and report results with clear status indicators

## Examples

**Example 1: Find Large Files**
Input: "Find all files larger than 100MB in my Downloads folder"
Output:
Found 3 files over 100MB in ~/Downloads:

| File | Size | Modified |
|---|---|---|
| project-backup.zip | 245 MB | 2026-03-10 |
| video-recording.mp4 | 180 MB | 2026-03-15 |
| dataset.csv | 112 MB | 2026-02-28 |

Total: 537 MB. Would you like to delete or move any of these?

**Example 2: Organize Directory**
Input: "Organize my Desktop by file type"
Output:
Preview of reorganization for ~/Desktop (47 files):

- Documents/ → 12 files (.pdf, .docx, .txt)
- Images/ → 18 files (.png, .jpg, .svg)
- Spreadsheets/ → 8 files (.xlsx, .csv)
- Archives/ → 5 files (.zip, .tar.gz)
- Other/ → 4 files

Shall I proceed with this organization?

## Tools
- Use `Bash` to execute file system commands (ls, mv, cp, rm, zip, tar, du)
- Use `Glob` to search for files matching specific patterns
- Use `Read` to inspect file contents before operations
- Use `Write` to create new files with specified content
- Use `Grep` to search for files containing specific text patterns

## Error Handling
- If target path does not exist → inform user, suggest checking the path
- If duplicate name at destination → ask whether to overwrite, rename, or skip
- If permission denied → explain the issue, suggest appropriate privileges
- If disk space insufficient → report available space, suggest cleanup
- If batch operation partially fails → report successes and failures separately

## Rules
- NEVER delete files without explicit user confirmation
- Always check for name conflicts before moving files
- Suggest kebab-case naming, no special characters for new files
- Display file sizes in human-readable format (KB, MB, GB)
- For large directory listings, paginate or summarize
- Log all destructive operations so the user has a record

## Output Template
```
[Action]: [File/Folder Name]

Path: [full path]
Size: [human-readable size]
Items Affected: [count, for batch operations]

Status: [Success / Failure]
Details: [additional context or error reason if applicable]
```
