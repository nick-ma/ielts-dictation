# ielts-dictation

This shell script ONLY works on Apple Mac OS X.

Thanks for the great and powerful Accessibility Tools which provided by OS X system.

## How to use
Using this script is quite strightforward.

```bash
./st.sh <word_list_file> <interval> <keep_silence>
``` 

| params | description | mandarin |
|--------|-------------|----------|
|word_list_file| path to word list file | Y |
|interval| interval time between 2 words, default is 2 seconds | N |
|keep_silence| shut up and just start dictation | N |

### Examples

#### use data/wl01.txt as word list file and set interval time to 5 seconds
```bash
./st.sh data/wl01.txt 5
```

#### use data/wl01.txt as word list file and set interval time to 3 seconds and skip the introduction section
```bash
./st.sh data/wl01.txt 3 s
```

## FAQ
### How to build my own word list?
It's a very simple task to build your own word list file, just create a file and write words or phrases in it, one word or phrase per line. That's ALL.

### How can I change the voice and speaking speed?
You can access the setup page via Settings > Accessibility > Speech, where you can select the voice and the speaking rate as you like.

### Can I use this script in Windows or other Operation System? like Linxu?
No, you can't.  
This script works only on MAC OS X, and the core is say command which provided by Speech, an Accessibility Tool shipping with OS X.  
However, you can fork this repository and make a port version on your own.

## License
MIT