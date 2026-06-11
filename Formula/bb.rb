class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.67"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.67.tar.gz"
      sha256 "f93f15fa62ec00fb9a22284ebfd9579f3fbe5630752618bdca10afc4fcdaa45d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.67.tar.gz"
      sha256 "c0bd2f9a13d84ceda34647f06df2091a19d46f33a392bf2b63b1be8c8fbe65d7"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
