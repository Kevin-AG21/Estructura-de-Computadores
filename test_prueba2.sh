echo "Running tests..."
echo

output=$(./ejecutable2.out  < entrada2.txt)
expected_output="Escribe un número de kilómetros: Las millas son:14.375000 
Las yardas son:25153.105469 
Los pies son:75459.320312 
Fin del algoritmo"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [ "$output" == "$expected_output" ] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output' but got: $output"
  exit 1
fi

echo
echo "All tests passed."

exit 0
