class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.275"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.275.tar.gz"
      sha256 "f0fcbc31c0b6aec80def148aee1c512dba23b3b9079b5c69745f4f4405302f6f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.275.tar.gz"
      sha256 "1f7f732b667a263f47ffeddd3b9a934f42ec1308002eb1904f8a5fa824eb9f4a"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
