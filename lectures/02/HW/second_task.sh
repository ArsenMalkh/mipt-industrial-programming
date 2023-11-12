#С помощью find и grep напишите команду, которая выведет на экран все записи с кодом ответа 200 (содержащие "status-code:"200).

#!/usr/bin/bash
find data/ -name '*.log' -exec grep -H 'status-code":200' {} \;
