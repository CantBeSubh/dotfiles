clear_pycache() {
  find . -name "__pycache__" -type d -exec rm -rf {} \;
  find . -name ".pytest_cache" -type d -exec rm -rf {} \;
}

clear_nextjs(){
  find . -name ".next" -type d -exec rm -rf {} \;
}