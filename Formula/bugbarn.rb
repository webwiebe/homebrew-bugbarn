class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.336"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.336.tar.gz"
      sha256 "db3e63f5bdbc0655608f4fbdbb8e006a21a1308dfe681e3c1e5fe12359ab0ff5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.336.tar.gz"
      sha256 "78210eaa16d47acb7bd8f9a009c85f78e8493280207add22b76aa4a9bd4421ca"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
