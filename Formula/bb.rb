class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.217"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.217.tar.gz"
      sha256 "467397c516e2372d9b9f615f7ecf7bc0697de4fbba5d631ab32c2a25d0ded3ef"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.217.tar.gz"
      sha256 "89fd04f549f6b761f148e620e9ea8c06af753500b2bbd6ac8cf272b1c243ff7b"
    end
  end

  def install
    bin.install "bb"
  end
end
