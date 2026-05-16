class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.154"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.154.tar.gz"
      sha256 "4dbdeab9524e8df4838934c4d22608afc9f099081545f9d58cad56a7b2d3d92a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.154.tar.gz"
      sha256 "0dc53dd6d2e7e4acd618c5189869091c5fea62404888174fa4299053bad747be"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
