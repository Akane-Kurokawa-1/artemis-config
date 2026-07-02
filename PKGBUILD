# Maintainer: Chrysostomus <forum.manjaro.org>
# Contributor: pheiduck <forum.manjaro.org>
# Contributor: Roman Perepelitsa <roman.perepelitsa@gmail.com>

pkgname=artemis-config
pkgver=0.26
pkgrel=4
pkgdesc="Zsh configuration for manjaro"
arch=('any')
#url=("https://github.com/Chrysostomus/manjaro-zsh-config")
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
  'grep')
makedepends=('git')
conflicts=('grml-zsh-config' 'manjaro-zsh-config')
backup=('root/.zshrc')
_git_url=("https://github.com/Chrysostomus/manjaro-zsh-config")
_commit=(1f9d0da2c8408de895156cb65d324636d656df1c)
source=("git+${_git_url[0]}.git#commit=${_commit[0]}" "etc.tar.gz")
sha256sums=('6d814d5b216b380c4894214e19788d1057e4e6c684d5e897b2ff66366b4ab291' SKIP)

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
  cd "$srcdir"
  cp -r etc "${pkgdir}"
}
