# GavathiLang

## Steps for linux users

### Step 1. clone Repo

```
git clone https://github.com/SonuSV7719/GavathiLang.git
```

### Step 2. Open terminal in cloned directory and type following commands

1
 ```
chmod +x GavathiLang.sh
```
or

```
sudo chmod +x GavathiLang.sh
```

2

```
sudo  cp GavathiLang.sh /usr/local/bin/GavathiLang
```

### Step 3: Create file_name.gavathi file and write gavathilang code

### Step 4: Run code using following command

```
GavathiLang file_name.gavathi
```

## VS Code Setup

1. Go to settings -->  search setting.json --> edit settings.json by adding following line at last

```
 "highlight.regexes": {
        "\\b(nahi tar jewha bhawa|jewha bhawa|bhawa he ahe|bol naa bhawa|ahe|hello gavathilang|nahi tar|nahi tar bhawa|bye gavathilang|asel|jewha paryant bhawa|thamb|chalu thew|bhawa input de naa|thamb bhawa|chalu thew bhawa)\\b": {
            "filterFileRegex": "\\.gavathi$",
            "decorations": [
                {
                    "color": "#f19640",
                    // "fontWeight": "bold"
                },
            ]
        },
        "\\b#.*$\\b": {
            "filterFileRegex": "\\.gavathi$",
            "decorations": [
                {
                    "color": "#088632",
                }
            ]
        },
        "\\b([a-zA-Z_][a-zA-Z0-9_]*)\\b": {
            "filterFileRegex": "\\.gavathi$",
            "decorations": [
                {
                    "color": "#a89ddb"
                }
            ]
        },
    },
    
    "[gavathi]": {
    
    },
```

