#!/bin/dash

echo -ne "\e[H\e[2J" > /etc/issue
echo "\e[2m" >> /etc/issue
tee -a /etc/issue >/dev/null << "EOF"
\s \r (\l)

EOF
echo  "\e[0;32m                  __.;=====;.__" >> /etc/issue
echo  "              _.=+==++=++=+=+===;." >> /etc/issue
echo  "               -=+++=+===+=+=+++++=_" >> /etc/issue
echo  "          .     -=:\`\`     \`--==+=++==." >> /etc/issue
echo  "         _vi,    \`            --+=++++:" >> /etc/issue
echo  "        .uvnvi.       _._       -==+==+." >> /etc/issue
echo  "       .vvnvnI\`    .;==|==;.     :|=||=|." >> /etc/issue
echo  "  \e[1;32m+QmQQm\e[0;32mpvvnv; \e[1;32m_yYsyQQWUUQQQm #QmQ#\e[0;32m:\e[1;32mQQQWUV\$QQm." >> /etc/issue
echo  "   -QQWQW\e[0;32mpvvo\e[1;32mwZ?.wQQQE\e[0;32m==<\e[1;32mQWWQ/QWQW.QQWW\e[0;32m(: \e[1;32mjQWQE" >> /etc/issue
echo  "    -\$QQQQmmU\'  jQQQ\@\e[0;32m+=<\e[1;32mQWQQ)mQQQ.mQQQC\e[0;32m+;\e[1;32mjWQQ\@'" >> /etc/issue
echo  "     -\$WQ8Y\e[0;32mnI:   \e[1;32mQWQQwgQQWV\e[0;32m\`\e[1;32mmWQQ.jQWQQgyyWW\@!\e[0;32m" >> /etc/issue
echo  "       -1vvnvv.     \`~+++\`        ++|+++" >> /etc/issue
echo  "        +vnvnnv,                 \`-|===" >> /etc/issue
echo  "         +vnvnvns.           .      :=-" >> /etc/issue
echo  "          -Invnvvnsi..___..=sv=.     \`" >> /etc/issue
echo  "            +Invnvnvnnnnnnnnvvnn;." >> /etc/issue
echo  "              ~|Invnvnvvnvvvnnv}+\`" >> /etc/issue
echo  "                  -~|{*l}*|~\e[0m" >> /etc/issue
echo  "\e[0m" >> /etc/issue
echo  " " >> /etc/issue
echo  " " >> /etc/issue
