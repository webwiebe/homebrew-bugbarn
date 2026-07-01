class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.114"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.114.tar.gz"
      sha256 "b030f96686dd65321eddd1972d8e08729686c7cdbe04c81e43ff30519405ac70"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.114.tar.gz"
      sha256 "c94478541f80f709136bba6c2a49a2d0da1b281ae121a364e1f8fbdf6d655190"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
