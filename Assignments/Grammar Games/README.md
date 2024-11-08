# 전투 RPG MockUp
## Details 
### Technical requirements
- Language: Dart
- External Libraries: None
### Operations
1. Run and play on your terminal
2. If the file for charcters and monsters can't be found, fix line 44,51 to meet the directories of the file location. 
### Features
- Reading CSV data from the given txt files. 
- Input character name 
- Save current status and close
- Healing option through random 
- Incrementation of defense of monsters in turn 
- Item usage of user
### Error Handling
- Input errors for names (can't be Null)
- Input errors for choice of actions and actionable items
- Errors in reading txt files as CSV
### Class 
- Character: defines user statistics
- Monster: inherits Character. defines the apponent stats
