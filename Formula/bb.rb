class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.375"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.375.tar.gz"
      sha256 "7f771c05caa4b8cccb2fa8df702e6022cbf96ecad22596b74c9069b79cc6dc22"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.375.tar.gz"
      sha256 "4899b759c851a3721357720d77bc84d6b1c0324fca798bed36de7b499ed0cc9e"
    end
  end

  def install
    bin.install "bb"
  end
end
