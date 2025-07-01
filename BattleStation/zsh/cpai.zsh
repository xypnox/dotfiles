cpai() {
  local clipboard_cmd="xclip"
  local fd_cmd="fd"

  # --- 1. Basic Checks ---
  if ! command -v "$fd_cmd" &> /dev/null; then
    echo "Error: '$fd_cmd' is not installed." >&2; return 1;
  fi
  if ! command -v "$clipboard_cmd" &> /dev/null; then
    echo "Error: '$clipboard_cmd' is not installed." >&2; return 1;
  fi

  # --- 2. Gather All Files to Be Processed ---
  local files_to_process=()
  local file_args=()
  local dir_args=()

  if [ "$#" -eq 0 ]; then
    dir_args=( "." )
  else
    for arg in "$@"; do
      if [ -f "$arg" ]; then
        file_args+=("$arg")
      elif [ -d "$arg" ]; then
        dir_args+=("$arg")
      else
        echo "Warning: Argument '$arg' is not a valid file or directory. Skipping." >&2
      fi
    done
  fi

  if [ ${#file_args[@]} -gt 0 ]; then
    files_to_process+=( "${file_args[@]}" )
  fi

  if [ ${#dir_args[@]} -gt 0 ]; then
    local found_files=()
    # Reads line-by-line, which is the default and highly compatible
    while IFS= read -r file; do
      found_files+=("$file")
    done < <("$fd_cmd" --type f . "${dir_args[@]}")

    if [ ${#found_files[@]} -gt 0 ]; then
      files_to_process+=( "${found_files[@]}" )
    fi
  fi

  # --- 3. Check, Process, and Provide Feedback ---
  if [ ${#files_to_process[@]} -eq 0 ]; then
    echo "No text files found to copy." >&2
    return 1
  fi

  {
    for file in "${files_to_process[@]}"; do
      if [ -r "$file" ]; then
        echo "--- ${file} ---"
        cat "${file}"
        echo ""
      fi
    done
  } | "$clipboard_cmd" -selection clipboard

  echo "Copied the contents of ${#files_to_process[@]} files to the clipboard:" >&2
  printf " - %s\n" "${files_to_process[@]}" >&2
}
