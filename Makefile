clang-format:
	find . -name "*.c" -o -name "*.h" | xargs clang-format -style=google --dry-run --Werror

cppcheck:
	cppcheck --platform=unix64 --error-exitcode=1 --enable=all --suppress=missingInclude .

lint: clang-format cppcheck

format:
	find . -name "*.c" -o -name "*.h" | xargs clang-format -style=google --Werror -i

verify: lint
