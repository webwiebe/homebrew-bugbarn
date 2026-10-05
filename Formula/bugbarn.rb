class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.205"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.205.tar.gz"
      sha256 "7e3e8614a95ce4e474857bdcc4cf6f8a431eaea6517a37b25b8b3f78b04659d8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.205.tar.gz"
      sha256 "44e019cedb7637d15cc2ec19fdc675620dca386607a78cf890ad102ba38d0517"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
