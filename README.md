Написать bash скрипт, который будет рекурсивно находить в директории /root/backup  архивы tar.gz  старше чем Х дней и удалять самый старый из них,
 но только при условии, если в директории Y и более таких файлов. Количество дней (X) и количество файлов (Y) скрипт должен принимать в виде аргументов.
Пример команды запуска скрипта из консоли:
bash test.sh 5 10
