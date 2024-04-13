# MandArt-Docs

Documentation for MandArt

- [MandArt](https://github.com/denisecase/MandArt)
- [Documentation](https://denisecase.github.io/MandArt-Docs/documentation/mandart/)

-----

## Delete This Docs folder

In this repo folder on your machine, delete the docs folder.

## Generate New MandArt Documentation

Create new documentatation:

1. In the MandArt project in XCode, click Product / Build Documentation.

1. When viewing the generated docs, right-click on MandArt and click "Export".

1. The default name is MandArt.doccarchive.

## Export for Static Hosting

Run in terminal in MandArt root folder

```terminal
$(xcrun --find docc) process-archive transform-for-static-hosting ./DerivedData/Build/Products/Debug/MandArt.doccarchive --output-path ./docs
```

## Move the Docs Folder

Move Mandart/docs folder to MandArt-Docs/docs.

## Final Adjustments

1. Open PowerShell to this repo's root folder and run `.\redo.ps1`.

1. Git add, commit, and push new GitHub MandArt-Docs.

```shell
git add .
git commit -m "your message"
git push origin main
```

-----

## Links

Documentation hosted at:

- [docs](https://denisecase.github.io/MandArt-Docs/documentation/mandart/)
- [repo](https://github.com/denisecase/MandArt-Docs)
