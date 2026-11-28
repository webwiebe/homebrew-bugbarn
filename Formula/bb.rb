class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.400"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.400.tar.gz"
      sha256 "53295e586c43186131b092bd92f8daa2fd70e4bf9e585473428b181c32cda265"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.400.tar.gz"
      sha256 "bdc5b89d262e6e7a51fbe7123fd451bcd4a68034348f7a63734145c238883e7d"
    end
  end

  def install
    bin.install "bb"
  end
end
