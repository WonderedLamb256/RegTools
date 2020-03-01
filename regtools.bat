@echo off
rem WonderedLamb256's Registry Tools 1.0.0
rem DESCRIPTION - RegTools is a script that can modify, backup, and check the registry.
rem
rem ARGUMENTS - load, backup, restore
if "%1" == "backup" (
      echo "RegTools is going to backup the entire registry. Are you sure [Y/N]?"
      :loop
      set /p choice="RegTools > "
      if /i choice == "Y" (
            ./backup.bat
      )
      if /i choice == "N" (
            echo "You picked N, exiting on code 0..."
            exit 0
      )
      else (
            echo "Improper argument - %choice%, [Q]uit or [G]o back?"
            set /p choice="RegTools > "
            if /i choice == "Q" (
                  echo "Exiting on code 0..."
                  exit 0
            )
            if /i choice == "G" (
                  goto loop
            )
            else (
                  echo "Improper agrument. It can go on forever... defaulting to G."
                  goto loop
            )
      )
)
else (
      echo "Improper argument - %1, exiting on code 0..."
      exit 0
)
