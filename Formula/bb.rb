class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.347"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.347.tar.gz"
      sha256 "fea6a99c22700bdeb6718a3246124c7eff3987c426ba8028d9a4bd053a92dfac"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.347.tar.gz"
      sha256 "063e33844d358123440f7a1fb76244f5542437711078c4145cce643d814ac21d"
    end
  end

  def install
    bin.install "bb"
  end
end
