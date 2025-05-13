# Copies the path of given directory or file to the system or X Windows clipboard.
# Copy current directory if no parameter.
function copypath {
  # If no argument passed, use current directory
  local file="${1:-.}"

  # If argument is not an absolute path, prepend $PWD
  [[ $file = /* ]] || file="$PWD/$file"

  # Copy the absolute path without resolving symlinks
  # If clipcopy fails, exit the function with an error
  # print -n "${file:a}" | clipcopy || return 1

  local abs_path="${file:a}"
  
  case "$DEVICE" in
    macOS)
      command -v pbcopy >/dev/null && print -n "$abs_path" | pbcopy
      ;;
    Linux)
      if command -v xclip >/dev/null; then
        print -n "$abs_path" | xclip -selection clipboard
      elif command -v xsel >/dev/null; then
        print -n "$abs_path" | xsel --clipboard --input
      else
        echo "Error: No clipboard tool found (xclip or xsel)." >&2
        return 1
      fi
      ;;
    Windows)
      command -v clip.exe >/dev/null && print -n "$abs_path" | clip.exe
      ;;
    *)
      echo "Error: Unsupported OS or clipboard not configured." >&2
      return 1
      ;;
  esac

  echo ${(%):-"%B${file:a}%b copied to clipboard."}
}
