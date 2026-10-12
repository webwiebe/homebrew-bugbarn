class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.225"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.225.tar.gz"
      sha256 "fca9b90968fdf56709a44c07eed8b7b84be5dbed7906b7a386dcf3b372a0237e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.225.tar.gz"
      sha256 "7a874ef23909a6c7d37efd403c9690a5b4a3262efaade32e0384f674919f066c"
    end
  end

  def install
    bin.install "bb"
  end
end
