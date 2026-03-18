# File Manager

## Description
Manage files and folders: create, move, rename, search, organize, and clean up files on the device.

## Trigger
- User requests file/folder operations
- User says "create file", "delete file", "find file", "clean up", "organize"
- User needs to convert file formats
- User wants to find duplicate files or large files

## Instructions

### When to Activate
- User needs to create/delete/move/rename files or folders
- User wants to search for files by name, type, size, or creation date
- User needs to organize/clean up a directory
- User wants to compress/decompress files

### Process
1. Identify the operation to perform
2. Confirm the file path and file name
3. **For delete operations**: always ask for confirmation before proceeding
4. Execute the action and report the result

### Rules
- **NEVER** delete files without asking for confirmation
- When moving files → check if a file with the same name already exists at the destination
- When creating files → suggest naming using conventions (kebab-case, no special characters)
- Back up before performing batch operations
- Display file sizes in a human-readable format (KB, MB, GB)

### Output Format
```
📁 [Action]: [File/Folder Name]
📍 Path: [path]
📊 Size: [size]
✅ Status: [Success / Failure + reason]
```
