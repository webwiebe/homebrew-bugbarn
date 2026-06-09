class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.64"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.64.tar.gz"
      sha256 "4b94589e707ff1a6249b83975e05ee306b15b1fd0e857010ecd35005b586ed17"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.64.tar.gz"
      sha256 "0139da02b815157062cc30084a46e58df35a55d49efb2fecdb2fe06d32da5dd5"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
