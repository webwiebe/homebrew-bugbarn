class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.242"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.242.tar.gz"
      sha256 "cdad0e71e8bd45c19a2fb2f5cab08eca550cc646d35db634108abad632e573f7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.242.tar.gz"
      sha256 "54c6b4f5ea5806056619f0787f5869f255e8749b0fd96bad0a53251ba9c27caf"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
