#!/bin/bash

source scripts/colors.sh
echo -e "${YELLOW}Bootstraping project${NC}"
if [ -f pubspec.yaml ] && cat pubspec.yaml | grep name: ; then
  echo -e "${BLUE}Project already initialized${NC}"
else 
  echo -e "${GREEN}Enter the projects name: (snake_case)${NC}"
  SNAKE_PAT='^[a-z]+((_[a-z]+)*)$'
  read PROJECT_NAME
  if [[ $PROJECT_NAME =~ $SNAKE_PAT ]]; then
      echo -e "${GREEN}Now enter the projects description:${NC}"
      read PROJECT_DESCRIPTION
      echo -e "${GREEN}Which state management do you wish to use?${NC} ${YELLOW}1) for bloc, 2) for StateNotifier + Riverpod${NC}"
      while [ "$STATE_MANAGEMENT" != "1" ] || [ "$STATE_MANAGEMENT" != "2" ] 
      do
        read STATE_MANAGEMENT
        case $STATE_MANAGEMENT in
            1) mv pubspec_BL_HRP.yaml pubspec.yaml && mv lib/src/sample_BL_HRP lib/src/sample && rm -r lib/src/sample_SN_RP && rm pubspec_SN_RP.yaml && break ;;
            2) mv pubspec_SN_RP.yaml pubspec.yaml && mv lib/src/sample_SN_RP lib/src/sample && rm -r lib/src/sample_BL_HRP && rm pubspec_BL_HRP.yaml && break ;;
            *)     echo -e "${RED}Invalid option. Please enter a valid option.${NC}" ;;
        esac
      done

      echo "description: $PROJECT_DESCRIPTION" | cat - pubspec.yaml > temp && mv temp pubspec.yaml
      echo "name: $PROJECT_NAME" | cat - pubspec.yaml > temp && mv temp pubspec.yaml

      importTargets=($(grep -lR "flutter_base" lib))

      for f in ${importTargets[@]}; do
        FILE_NAME="$(echo $f | sed -e "s/flutter_base/$PROJECT_NAME/g")"
        FILE_CONTENT="$(cat $f)"
        
        arr=(${PROJECT_NAME//_/ })  
        VARIABLE_NAME=
        for NAME_PIECE in "${arr[@]}"; do
          if [[ "$NAME_PIECE" == "${arr[0]}" ]]; then
            VARIABLE_NAME="$(tr '[:upper:]' '[:lower:]'  <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          else 
            VARIABLE_NAME="$VARIABLE_NAME$(tr '[:lower:]' '[:upper:]' <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          fi
        done
        TYPE_NAME=
        for NAME_PIECE in "${arr[@]}"; do
          if [[ "$NAME_PIECE" == "${arr[0]}" ]]; then
            TYPE_NAME="$(tr '[:lower:]' '[:upper:]'  <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          else 
            TYPE_NAME="$TYPE_NAME$(tr '[:lower:]' '[:upper:]' <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          fi
        done
        FIXED_IMPORTS="$(echo $FILE_CONTENT | sed -e "s/flutter_base/$PROJECT_NAME/g")"
        FIXED_VARIABLES="$(echo $FIXED_IMPORTS | sed -e "s/flutterBase/$VARIABLE_NAME/g")"
        FIXED_TYPES="$(echo $FIXED_VARIABLES | sed -e "s/FlutterBase/$TYPE_NAME/g")"
        echo $FIXED_TYPES > temp && mv temp $f && mv $f $FILE_NAME 
      done

      testImportTargets=($(grep -lR "flutter_base" test))

      for f in ${testImportTargets[@]}; do
        FILE_NAME="$(echo $f | sed -e "s/flutter_base/$PROJECT_NAME/g")"
        FILE_CONTENT="$(cat $f)"
        
        arr=(${PROJECT_NAME//_/ })  
        VARIABLE_NAME=
        for NAME_PIECE in "${arr[@]}"; do
          if [[ "$NAME_PIECE" == "${arr[0]}" ]]; then
            VARIABLE_NAME="$(tr '[:upper:]' '[:lower:]'  <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          else 
            VARIABLE_NAME="$VARIABLE_NAME$(tr '[:lower:]' '[:upper:]' <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          fi
        done
        TYPE_NAME=
        for NAME_PIECE in "${arr[@]}"; do
          if [[ "$NAME_PIECE" == "${arr[0]}" ]]; then
            TYPE_NAME="$(tr '[:lower:]' '[:upper:]'  <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          else 
            TYPE_NAME="$TYPE_NAME$(tr '[:lower:]' '[:upper:]' <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          fi
        done
        FIXED_IMPORTS="$(echo $FILE_CONTENT | sed -e "s/flutter_base/$PROJECT_NAME/g")"
        FIXED_VARIABLES="$(echo $FIXED_IMPORTS | sed -e "s/flutterBase/$VARIABLE_NAME/g")"
        FIXED_TYPES="$(echo $FIXED_VARIABLES | sed -e "s/FlutterBase/$TYPE_NAME/g")"
        echo $FIXED_TYPES > temp && mv temp $f && mv $f $FILE_NAME 
      done

      integrationTestImportTargets=($(grep -lR "flutter_base" integration_test))

      for f in ${integrationTestImportTargets[@]}; do
        FILE_NAME="$(echo $f | sed -e "s/flutter_base/$PROJECT_NAME/g")"
        FILE_CONTENT="$(cat $f)"
        
        arr=(${PROJECT_NAME//_/ })  
        VARIABLE_NAME=
        for NAME_PIECE in "${arr[@]}"; do
          if [[ "$NAME_PIECE" == "${arr[0]}" ]]; then
            VARIABLE_NAME="$(tr '[:upper:]' '[:lower:]'  <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          else 
            VARIABLE_NAME="$VARIABLE_NAME$(tr '[:lower:]' '[:upper:]' <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          fi
        done
        TYPE_NAME=
        for NAME_PIECE in "${arr[@]}"; do
          if [[ "$NAME_PIECE" == "${arr[0]}" ]]; then
            TYPE_NAME="$(tr '[:lower:]' '[:upper:]'  <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          else 
            TYPE_NAME="$TYPE_NAME$(tr '[:lower:]' '[:upper:]' <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          fi
        done
        FIXED_IMPORTS="$(echo $FILE_CONTENT | sed -e "s/flutter_base/$PROJECT_NAME/g")"
        FIXED_VARIABLES="$(echo $FIXED_IMPORTS | sed -e "s/flutterBase/$VARIABLE_NAME/g")"
        FIXED_TYPES="$(echo $FIXED_VARIABLES | sed -e "s/FlutterBase/$TYPE_NAME/g")"
        echo $FIXED_TYPES > temp && mv temp $f && mv $f $FILE_NAME 
      done

      typeTargets=($(grep -lR "FlutterBase" lib))

      for f in ${typeTargets[@]}; do
        FILE_NAME="$(echo $f | sed -e "s/flutter_base/$PROJECT_NAME/g")"
        FILE_CONTENT="$(cat $f)"
        
        arr=(${PROJECT_NAME//_/ })  
        VARIABLE_NAME=
        for NAME_PIECE in "${arr[@]}"; do
          if [[ "$NAME_PIECE" == "${arr[0]}" ]]; then
            VARIABLE_NAME="$(tr '[:upper:]' '[:lower:]'  <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          else 
            VARIABLE_NAME="$VARIABLE_NAME$(tr '[:lower:]' '[:upper:]' <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          fi
        done
        TYPE_NAME=
        for NAME_PIECE in "${arr[@]}"; do
          if [[ "$NAME_PIECE" == "${arr[0]}" ]]; then
            TYPE_NAME="$(tr '[:lower:]' '[:upper:]'  <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          else 
            TYPE_NAME="$TYPE_NAME$(tr '[:lower:]' '[:upper:]' <<< ${NAME_PIECE:0:1})${NAME_PIECE:1}"
          fi
        done
        FIXED_IMPORTS="$(echo $FILE_CONTENT | sed -e "s/flutter_base/$PROJECT_NAME/g")"
        FIXED_VARIABLES="$(echo $FIXED_IMPORTS | sed -e "s/flutterBase/$VARIABLE_NAME/g")"
        FIXED_TYPES="$(echo $FIXED_VARIABLES | sed -e "s/FlutterBase/$TYPE_NAME/g")"
        echo $FIXED_TYPES > temp && mv temp $f && mv $f $FILE_NAME 
      done

      bash scripts/fvm-run.sh flutter create .
      bash scripts/fvm-run.sh dart format .
      bash scripts/fvm-run.sh flutter pub run build_runner build --delete-conflicting-outputs
      rm test/widget_test.dart
      printf "\nflutter.minSdkVersion=21" >> android/local.properties
      bash scripts/read_file_line_by_line_and_insert_after.sh android/app/build.gradle "versionName flutterVersionName" "\t\tmultiDexEnabled true"
      bash scripts/read_file_line_by_line_and_replace.sh android/app/build.gradle "minSdkVersion flutter.minSdkVersion" "\t\tminSdkVersion 19"

      echo -e "${BLUE}Completed bootstraping $PROJECT_NAME project${NC}"

    else
      echo -e "${RED}Invalid dart project name!${NC}"; exit
  fi
fi
