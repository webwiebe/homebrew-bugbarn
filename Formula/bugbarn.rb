class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.104"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.104.tar.gz"
      sha256 "f867ff10957b65fafb9ff4e0f18400a187e4f6c92bbfca9313bcb6aff50fd334"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.104.tar.gz"
      sha256 "4bcd4e8a6e0a457519fe128ba48392a7e3c4fe3d0728d745da6cf7ade51895d7"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
