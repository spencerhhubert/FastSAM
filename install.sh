find . -name "*.pyc" -delete
find . -name "__pycache__" -type d -exec rm -rf {} +

PYTHON_INTERPRETER="/opt/homebrew/opt/python@3.11/libexec/bin/python"

$PYTHON_INTERPRETER -m pip uninstall fastsam -y
rm -rf fastsam.egg-info
$PYTHON_INTERPRETER -m pip install -e .
