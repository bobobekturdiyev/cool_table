
# Cool Data Table in your Flutter app





If you want to display your data in the table, use this package.

### Add dependency:
Add latest version of this package in your pubspec.yaml

```
cool_table: 1.0.0
```

### Usage

If you are familiar with Html, you may easily adapt this package.

WTable is main widget which is the holder of your rows and columns.

WTR means the table row, you may give the style for every row separately

WTD means the cell in the row, it has also some customizations.
```
WTable(
    border: Border.all(color: Colors.black, width: 1),
    padding: EdgeInsets.zero,
    rows: const [
      WTR(
        border:
            Border(bottom: BorderSide(width: 2, color: Colors.blue)),
        children: [
          WTD(child: Text("#"), flex: 1),
          WTD(child: Text("Full name"), flex: 2),
          WTD(child: Text("Website"), flex: 2),
        ],
      ),
      WTR(
        children: [
          WTD(child: Text("1"), flex: 1),
          WTD(child: Text("Bobobek Turdiev"), flex: 2),
          WTD(child: Text("https://bobobek.com"), flex: 2),
        ],
      ),
      WTR(
        children: [
          WTD(child: Text("2"), flex: 1),
          WTD(child: Text("Programmer UZ"), flex: 2),
                  WTD(child: Text("https://programmer.uz"), flex: 2),
        ],
      ),
    ],
  ),
 
 
```
## 🔗 Links
[![portfolio](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://instagram.com/bobobek_com)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/bobobek-t-870a9112a/)
[![twitter](https://img.shields.io/badge/twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/BobobekTurdiyev)

