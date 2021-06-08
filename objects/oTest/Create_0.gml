key       = 0x320894631095863;
input     = "Sphinx of black quartz, judge my vow.";
encrypted = SphinxEncryptString(input, key);
output    = SphinxDecryptString(encrypted, key);