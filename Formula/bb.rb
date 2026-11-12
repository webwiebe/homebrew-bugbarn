class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.355"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.355.tar.gz"
      sha256 "67f773b819082a5af2b5f37e33ed2500278360d854fc70ff69dcaeecc26858fe"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.355.tar.gz"
      sha256 "f23efe82162daab6409a1db2ea9ce383847266180a03645571949f0f8d0f1d61"
    end
  end

  def install
    bin.install "bb"
  end
end
