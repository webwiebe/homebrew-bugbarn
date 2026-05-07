class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.72"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.72.tar.gz"
      sha256 "658dc7702d7288659546d437b2315ab3830f5dac571b6c61959cb713c070bb6d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.72.tar.gz"
      sha256 "3428fe7ecf5428921219528a4eaeb5ae45d2c4de8980a0f5089aa30192b6c8f8"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
