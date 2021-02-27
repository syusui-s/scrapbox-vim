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

```
Plug 'syusui-s/scrapbox-vim', { 'for': 'scrapbox' }
```

dein.vim:

```vim
call dein#add('syusui-s/scrapbox-vim')
```

dein.vim(TOML):

```toml
[[plugins]]
repo = 'syusui-s/scrapbox-vim'
on_ft = 'scrapbox'
```

## オススメ設定
### インデント表示
インデント可視化プラグインを導入しておくと、リストが見やすくなります。

* [Yggdroot/indentLine](https://github.com/Yggdroot/indentLine)
* [nathanaelkane/vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)

### context_filetype 設定例
[Shougo/context_filetype.vim: Context filetype library for Vim script](https://github.com/Shougo/context_filetype.vim)の設定例です。

※ 私は [osyo-manga/vim-precious: Vim constext filetype](https://github.com/osyo-manga/vim-precious)と組み合わせて使っています

拡張子がそのままfiletypeとして使われる設定になっています。

```vim
let g:context_filetype#filetypes = {
  \   'scrapbox': [
  \     {
  \       'start' : '^\(\s*\)code:[^.]*\.\(\w\+\)',
  \       'end' : '^\1\(\s\)\@!',
  \       'filetype' : '\2',
  \     }
  \   ]
  \ }
```

拡張子とファイルタイプのマップを用意して動的に生成することもできます。

```vim
let g:context_filetype#filetypes = {}

let filetype_map = {
  \ 'js': 'javascript',
  \ 'rs': 'rust',
  \ 'fs': 'fsharp',
  \ 'fsx': 'fsharp',
  \}

let scrapbox = []
for ext in keys(filetype_map)
  let def = {
    \   'start' : '^\(\s*\)code:[^.]*\.' . ext,
    \   'end' : '^\1\(\s\)\@!',
    \   'filetype' : filetype_map[ext],
    \ }
  call add(scrapbox, def)
endfor

let g:context_filetype#filetypes = {}
let g:context_filetype#filetypes['scrapbox'] = scrapbox
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
