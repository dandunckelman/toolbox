# Vim/Scala Workflow

## Setup Environment
### JDK

        sudo apt-get install openjdk-7-jdk
        java -version # to verify that it works
### Scala

        wget http://downloads.typesafe.com/scala/2.11.0/scala-2.11.0.tgz
        tar -xf scala-2.11.0.tgz
        sudo mv scala-2.11.0 /opt/
        cd /opt/
        sudo ln -s scala-2.11.0 scala
        echo "export PATH=\"$PATH:/opt/scala/bin\"" >> ~/.bashrc
        source ~/.bashrc
        scala -help # to verify that it works
### SBT

        wget http://dl.bintray.com/sbt/debian/sbt-0.13.2.deb
        sudo dpkg -i sbt-0.13.2.deb
        rm http://dl.bintray.com/sbt/debian/sbt-0.13.2.deb
        sbt -h # to verify that it works

### Vim
- Setup Vundle:  https://github.com/gmarik/Vundle.vim
- Add these "plugins":
  - https://github.com/derekwyatt/vim-scala

- Look into using the "Quick Fix List" with "vimgrep"
  - Or use the Command-T plugin:  https://wincent.com/products/command-t

## Compiling

        sbt ~compile # run this to auto-compile, when changes are made

## Vim
- Install `silver searcher` to integrate better searching in Vim (https://github.com/ggreer/the_silver_searcher)

        sudo apt-get install silversearcher-ag
  - This is then integrated into Vim w/ the `ack.vim` plugin listed below
- Setup Vundle:  https://github.com/gmarik/Vundle.vim
  - Add these plugins:
    - https://github.com/derekwyatt/vim-scala
    - https://github.com/Shougo/neocomplcache.vim
    - https://github.com/mileszs/ack.vim
      - Add this line to `.vimrc` for the `ag` shortcut

                if executable('ag')
                  let g:ackprg = 'ag --nogroup --nocolor --column'
                endif
