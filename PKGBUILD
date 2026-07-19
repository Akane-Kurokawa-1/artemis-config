# Maintainer: Chrysostomus <forum.manjaro.org>
# Contributor: pheiduck <forum.manjaro.org>
# Contributor: Roman Perepelitsa <roman.perepelitsa@gmail.com>

pkgname=artemis-config
pkgver=0.27
pkgrel=1
pkgdesc="Zsh configuration for manjaro"
arch=('any')
url="https://github.com/Akane-Kurokawa-1/artemis-config"
license=('MIT')
depends=('zsh-autosuggestions'
  'zsh-syntax-highlighting'
  'zsh-completions'
  'zsh-history-substring-search'
  'zsh'
  'ttf-meslo-nerd-font-powerlevel10k'
  'zsh-theme-powerlevel10k'
  'flatpak'
  'libnotify'
  'breeze-icons'
  'grep'
  'util-linux'
  'nano'
  'neovim'
  'fastfetch'
  'wl-clipboard')
makedepends=('git')
conflicts=('grml-zsh-config' 'manjaro-zsh-config' 'cachyos-zsh-config')
backup=('root/.zshrc')
_git_url=("https://github.com/Chrysostomus/manjaro-zsh-config" "https://github.com/Akane-Kurokawa-1/artemis-config")
_commit=(1f9d0da2c8408de895156cb65d324636d656df1c 0d711a490225b88b973ec0432a4cfb80c0646094)
source=("git+${_git_url[0]}.git#commit=${_commit[0]}" "git+${_git_url[1]}.git#commit=${_commit[1]}")
sha256sums=('6d814d5b216b380c4894214e19788d1057e4e6c684d5e897b2ff66366b4ab291'
            '501d0af0303fedf57fd5bec5627f74fc6b2f7a6ebe83dc8b60353bd9ac4bfb49')
install=$pkgname.install

prepare() {
  #mv "$srcdir/manjaro-zsh-config" "$srcdir/$pkgname"
  true
}

package() {
  cd "$srcdir/manjaro-zsh-config"
  echo starting pkg in `pwd` or ${pkgdir} with $pkgname
  install -D -m644 .zshrc -t "${pkgdir}/etc/skel/"
  install -D -m644 manjaro-zsh-config -t "${pkgdir}/usr/share/zsh/"
  install -D -m644 manjaro-zsh-prompt -t "${pkgdir}/usr/share/zsh"
  install -D -m644 zsh-maia-prompt -t "${pkgdir}/usr/share/zsh/"
  install -D -m644 p10k.zsh -t "${pkgdir}/usr/share/zsh/"
  install -D -m644 p10k-portable.zsh -t "${pkgdir}/usr/share/zsh/"
  install -D -m640 .zshrc -t "${pkgdir}/root/"
  chmod 750 "${pkgdir}/root"
  install -d "${pkgdir}/usr/share/zsh/scripts"
  cp -r base16-shell "${pkgdir}/usr/share/zsh/scripts/"
  chmod a+x "${pkgdir}/usr/share/zsh/scripts/base16-shell/"*
  install -D -m644 LICENSE -t "${pkgdir}/usr/share/licenses/manjaro-zsh-config/"
  cd "$srcdir/$pkgname"
  cp -r etc "${pkgdir}"
  install -D -m644 LICENSE -t "${pkgdir}/usr/share/licenses/artemis-config/"
  install -D -m755 install_chaur -t "${pkgdir}/usr/bin/"
}
