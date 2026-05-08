class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.89"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.89.tar.gz"
      sha256 "f19f7def47a670e2756248a59538fefd1e01ef96c634832104dff59abf87d8cc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.89.tar.gz"
      sha256 "542dfc3f1d59ebaa81ff7a33185c0ff8a529613fef6c34318e1665ae51873cea"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
