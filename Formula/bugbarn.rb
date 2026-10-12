class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.222"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.222.tar.gz"
      sha256 "5925a5e7810b0325f3594bd10278539e1630cfbae69e1f6bebd81518d55bc4ba"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.222.tar.gz"
      sha256 "8f37d62546c91b28f74d51edff20c7705be94049de1c76d2fb91fd2f959bf6d5"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
