class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.87"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.87.tar.gz"
      sha256 "3c59c3ce186c575a2ef1b7a170b3ce8424b31fd7d451c7511bf02a443115f800"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.87.tar.gz"
      sha256 "9695d086884f0735bc5fb2c9f03296bc46243eb52070de4d00e112dd986d5095"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
