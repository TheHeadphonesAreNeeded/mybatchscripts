@echo off
setlocal enabledelayedexpansion

:: Game initialization
set /a target=%random% %% 10 + 1
set guess=
set attempts=0

echo Welcome to the Number Guessing Game!
echo Guess a number between 1 and 10.

:guess_loop
set /p guess=Enter your guess: 
set /a attempts+=1

:: Check if the input is a valid number
if not "!guess!"=="" set /a dummy=!guess! 2>nul
if not defined dummy (
    echo Please enter a valid number.
    goto guess_loop
)

:: Check if the guess is correct
if !guess!==!target! (
    echo Congratulations! You guessed the correct number in !attempts! attempts.
    goto end_game
) else (
    echo Incorrect guess. Try again.
    goto guess_loop
)

:end_game
echo Thank you for playing the Number Guessing Game!
pause

:: Clean up
endlocal
exit /b
