class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.333"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.333.tar.gz"
      sha256 "99172fbecc39b001bcb1655d4d3963011248d45707d94d7b0bab4fed517a9cea"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.333.tar.gz"
      sha256 "aef65c4b24a989202bc6ee6b742ce025261a3fc6200c29d695166a2807ee4ab8"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
