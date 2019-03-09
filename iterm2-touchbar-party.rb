require 'formula'

class Iterm2TouchbarParty < Formula
  desc "iTerm2 Touchbar Party is a combination of scripts that make your Mac's Touchbar userful when using iTerm2"
  homepage "https://github.com/snooc/iterm2-touchbar-party"
  url "https://github.com/snooc/iterm2-touchbar-party/archive/v0.1.1.tar.gz"
  sha256 "566a33cc7eee5d7d3e8e5e4107e5c3e11d9355aab12be23d24e976ac8eae4201"
  head "https://github.com/snooc/iterm2-touchbar-party.git"

  bottle :unneeded

  def install
    share.install "iterm2-touchbar-party.sh"
  end

  def caveats; <<~EOS
    You sould add the following to your .bash_profile:
      if [[ -f "#{opt_share}/iterm2-touchbar-party.sh" ]]; then
          source "#{opt_share}/iterm2-touchbar-party.sh"
          export PROMPT_COMMAND="__i2tp"
      fi
  EOS
  end

  test do
    system "true"
  end
end
