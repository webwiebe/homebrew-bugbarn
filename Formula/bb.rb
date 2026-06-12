class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.78"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.78.tar.gz"
      sha256 "564e8438c20bb66b3439da87a4c986ac3cdacb3489de0fc32591fa545d456bef"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.78.tar.gz"
      sha256 "25ff3dd13a144e35b6faae0636fc8eaac08e37a0bcf19abe3f0576c91cd737ad"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
