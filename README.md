scrapbox-vim
======

## 機能
* ファイルタイプ検知 (`.scrapbox`, `.scrap`)
* Syntax highlight

## 必要要件

```vim
filetype plugin on
```

## インストール方法

runtimepathに加えるか、各種プラグイン管理ツールを使用してください。

Vim-plug:

```vim
Plug 'syusui-s/scrapbox-vim'
```

dein.vim:

```vim
call dein#add('syusui-s/scrapbox-vim')
```

dein.vim(TOML):

```toml
[[plugins]]
repo = 'syusui-s/scrapbox-vim'
```

## context_filetype設定例
[Shougo/context_filetype.vim: Context filetype library for Vim script](https://github.com/Shougo/context_filetype.vim)の設定例です。

※ 作者は [osyo-manga/vim-precious: Vim constext filetype](https://github.com/osyo-manga/vim-precious)と組み合わせて使っています

```vim
let g:context_filetype#filetypes = {
  \   'scrapbox': [
  \     {
  \       'start' : '^\(\s*)code:[^.]\{1,}\%(\.\(\h\w*\)\)\{0,}',
  \       'end' : '^\(\1\s\)\@<!',
  \       'filetype' : '\2',
  \     }
  \   ]
  \ }
```

## ライセンス

<p xmlns:dct="http://purl.org/dc/terms/" xmlns:vcard="http://www.w3.org/2001/vcard-rdf/3.0#" lang="en">
  <a rel="license"
     href="http://creativecommons.org/publicdomain/zero/1.0/">
    <img src="http://i.creativecommons.org/p/zero/1.0/88x31.png" style="border-style: none;" alt="CC0" />
  </a>
  <br />
  To the extent possible under law,
  <a rel="dct:publisher" href="https://github.com/syusui-s/scrapbox-vim"><span property="dct:title">Syusui Moyatani</span></a>
  has waived all copyright and related or neighboring rights to
  <span property="dct:title">scrapbox-vim</span>.
  This work is published from:
  <span property="vcard:Country" datatype="dct:ISO3166" content="JP" about="https://github.com/syusui-s/scrapbox-vim">日本</span>.
</p>
