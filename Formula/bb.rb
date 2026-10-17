class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.269"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.269.tar.gz"
      sha256 "60981ea1f7a7b17b158680993e60bd9ce617026261a540102ad643a6f9e113f2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.269.tar.gz"
      sha256 "9dfd88995ed5c6dbe952a91fd593ea4b4dc5f6d69701ee2213ed0295f4de6fe3"
    end
  end

  def install
    bin.install "bb"
  end
end
