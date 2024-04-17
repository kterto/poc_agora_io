.PHONY: analyze app coverage format full_test generate_code install perms reset_hooks run set_hooks test

env=dev
device=

bootstrap:
	bash scripts/bootstrap-flutter-project.sh

unbootstrap:
	bash scripts/unbootstrap.sh

install:
	bash scripts/fvm-run.sh flutter pub get

clean:
	bash scripts/fvm-run.sh flutter clean

generate_code:
	bash scripts/fvm-run.sh flutter pub run build_runner watch --delete-conflicting-outputs

format:
	bash scripts/fvm-run.sh dart format .

analyze:
	bash scripts/fvm-run.sh flutter analyze .

test:
	bash scripts/fvm-run.sh flutter test

coverage:
	bash scripts/lcov-install.sh
	bash scripts/fvm-run.sh flutter test --coverage && lcov --remove coverage/lcov.info 'lib/**/*.g.dart' 'lib/**/*.freezed.dart' -o coverage/new_lcov.info && rm coverage/lcov.info && mv coverage/new_lcov.info coverage/lcov.info && genhtml coverage/new_lcov.info -o coverage/html

full_test: format analyze test

full_coverage: format analyze coverage

create-module:
	if [ ! -d "lib/src/${name}" ]; then mkdir -p lib/src/${name} && cp -r module_template/* "lib/src/${name}"; fi
	if [ ! -d "test/src/${name}" ]; then mkdir -p test/src/${name} && cp -r module_template/* "test/src/${name}"; fi

run-debug-envless:
	bash scripts/fvm-run.sh flutter run


run-integration-tests:
	bash scripts/fvm-run.sh flutter test integration_test

run-release-envless:
	bash scripts/fvm-run.sh flutter run --release

run-debug: env/$(env).json
ifeq "" "$(device)"
	bash scripts/fvm-run.sh flutter run --flavor $(env) -t lib/main.dart --dart-define-from-file=$<
else
	bash scripts/fvm-run.sh flutter run -d $(device) --flavor $(env) -t lib/main.dart --dart-define-from-file=$<
endif

run-release: env/$(env).json
ifeq "" "$(device)"
	bash scripts/fvm-run.sh flutter run --flavor $(env) -t lib/main.dart --release --dart-define-from-file=$<
else
	bash scripts/fvm-run.sh flutter run -d $(device) --flavor $(env) -t lib/main.dart --release --dart-define-from-file=$<
endif

run-profile: env/$(env).json
ifeq "" "$(device)"
	bash scripts/fvm-run.sh flutter run --flavor $(env) -t lib/main.dart --profile --dart-define-from-file=$<
else
	bash scripts/fvm-run.sh flutter run -d $(device) --flavor $(env) -t lib/main.dart --profile --dart-define-from-file=$<
endif

build-apk: env/$(env).json
	bash scripts/fvm-run.sh flutter build apk --flavor $(env) -t lib/main.dart --dart-define-from-file=$<

build-ipa: env/$(env).json
	bash scripts/fvm-run.sh flutter build ipa --flavor $(env) -t lib/main.dart --dart-define-from-file=$<

build-obfuscate-apk: env/$(env).json
	bash scripts/fvm-run.sh flutter build apk --obfuscate --split-debug-info=obfuscate-apk-$(env)-symbols --flavor $(env) -t lib/main.dart --dart-define-from-file=$<

build-obfuscate-ipa: env/$(env).json
	bash scripts/fvm-run.sh flutter build ipa --obfuscate --split-debug-info=obfuscate-ipa-$(env)-symbols --flavor $(env) -t lib/main.dart --dart-define-from-file=$<

build-appbundle: env/$(env).json
	bash scripts/fvm-run.sh flutter build appbundle --flavor $(env) -t lib/main.dart --dart-define-from-file=$<

build-obfuscate-appbundle: env/$(env).json
	bash scripts/fvm-run.sh flutter build appbundle --obfuscate --split-debug-info=obfuscate-appbundle-$(env)-symbols --flavor $(env) -t lib/main.dart --dart-define-from-file=$<

set_hooks:
	chmod +x .githooks/*
	git config core.hooksPath .githooks/

reset_hooks:
	git config core.hooksPath .git/hooks/

perms:
	sudo chown -hR ${USER}:${USER} .

setup-fvm:
	dart pub global activate fvm
	fvm install

setup-lefthook:
	snap install --classic lefthook && npm install @arkweid/lefthook

setup-sentry-cli:
	curl -sL https://sentry.io/get-cli/ | bash

setup-verify:
	bash scripts/setup-verify.sh

add-dependency:
	bash scripts/fvm-run.sh flutter pub add $(name)

remove-dependency:
	bash scripts/fvm-run.sh flutter pub remove $(name)

add-dev-dependency:
	bash scripts/fvm-run.sh flutter pub add --dev $(name)

