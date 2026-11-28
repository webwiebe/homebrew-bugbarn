class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.400"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.400.tar.gz"
      sha256 "2a0f1e47634eeb0a6b70106f344f188737f7227045f1b5267868f05b35cff646"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.400.tar.gz"
      sha256 "a50b1459ff4d4304cf7cbbcfcebf894f53d4d0906806b94306c9ed741e20d4de"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
