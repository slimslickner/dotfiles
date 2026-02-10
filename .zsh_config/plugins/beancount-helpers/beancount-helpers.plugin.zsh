# Beancount environment variable
  export BEANCOUNT_DIR="$HOME/Documents/Areas/Financial/Budgets/Beancount"
  export MAIN_BEANCOUNT_FILE="main.bean"
  export BEAN_ROOT=$BEANCOUNT_DIR
  export BEAN_COMMODITIES_FILE=$BEANCOUNT_DIR/beans/commodities.bean

  # Function to run bean-check on main.bc
  bch() {
      local current_dir=$(pwd)
      cd "$BEANCOUNT_DIR" || return 1
      echo "Running: uv run bean-check $MAIN_BEANCOUNT_FILE $@"
      uv run bean-check $MAIN_BEANCOUNT_FILE "$@"
      local exit_code=$?
      cd "$current_dir" || return 1
      return $exit_code
  }
