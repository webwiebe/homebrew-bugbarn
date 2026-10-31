class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.306"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.306.tar.gz"
      sha256 "7a9042bc5dc1ba382abd737df7314ba53f809aecdd5bb8273dce75c0411c4984"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.306.tar.gz"
      sha256 "02f9de64f166eb4290848808b7d0999bb31b5bc0f1333f5ec942cb851fd268ab"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
