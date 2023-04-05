# MandArt-Docs

Documentation for MandArt

- [MandArt](https://github.com/denisecase/MandArt)
- [Documentation](https://denisecase.github.io/MandArt-Docs/documentation/mandart/)

-----

## Generate New MandArt Documentation

To create documentatation for the MandArt-Docs repo:

1. Copy the Documentation.docc folder to the same folder in MandArt as the source files.

2. Ensure Package.swift is added to the root folder - it's not part of the project, but is used to generate the documenation. 

3. Open Terminal in the root MandArt repository folder, and run the following command.

    ```shell
    swift package --allow-writing-to-directory ./docs \
        generate-documentation --target MandArt --output-path ./docs \
        --disable-indexing \
        --transform-for-static-hosting  \
        --emit-digest \
        --target MandArt \
        --hosting-base-path 'MandArt-Docs'
    ```

4. Delete this docs folder.

5. Copy the docs folder to the root of this repo.

6. Use VS Code to make any final edits and add / commmit / push / sync to GitHub.

-----

## Links

Documentation hosted at:

- [docs](https://denisecase.github.io/MandArt-Docs/documentation/mandart/)
- [repo](https://github.com/denisecase/MandArt-Docs)

-----

## References

- [Install Plugin](https://apple.github.io/swift-docc-plugin/documentation/swiftdoccplugin)
- [swift-docc-plugin](https://github.com/apple/swift-docc-plugin)
- <https://rhonabwy.com/2022/01/28/hosting-your-swift-library-docs-on-github-pages/>
- [Generating Documentation for Hosting Online](https://apple.github.io/swift-docc-plugin/documentation/swiftdoccplugin/generating-documentation-for-hosting-online/)
- [Publishing to Github Pages](https://apple.github.io/swift-docc-plugin/documentation/swiftdoccplugin/publishing-to-github-pages/)
- [Customizing the look and feel of Swift-DocC-Render](https://forums.swift.org/t/customizing-the-look-and-feel-of-swift-docc-render/58858/1)
