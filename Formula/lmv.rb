class Lmv < Formula
  desc "Local Markdown Viewer - view and edit markdown files in your browser"
  homepage "https://github.com/dmmulroy/lmv"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dmmulroy/lmv/releases/download/v0.1.0/lmv-darwin-arm64.tar.gz"
      sha256 "f41f92bb99ede2932ba4b6e61f3b693f7bbf9f7b68189504fe3917163a7c91cc"
    else
      url "https://github.com/dmmulroy/lmv/releases/download/v0.1.0/lmv-darwin-x64.tar.gz"
      sha256 "0f1be73a211d1acfba7d46f057715f6dfa42a53d81e55b944cd0d46a277b0461"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dmmulroy/lmv/releases/download/v0.1.0/lmv-linux-arm64.tar.gz"
      sha256 "63c0a5bfa54efae2b0738f7cfce0eea1d243187d3db53bee8ed6d3b747493d89"
    else
      url "https://github.com/dmmulroy/lmv/releases/download/v0.1.0/lmv-linux-x64.tar.gz"
      sha256 "57b8239f13ca3398ab41dca94fc3d6fb5f647ee1835564c6634e2b411d981b22"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "lmv-darwin-arm64" => "lmv"
      else
        bin.install "lmv-darwin-x64" => "lmv"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "lmv-linux-arm64" => "lmv"
      else
        bin.install "lmv-linux-x64" => "lmv"
      end
    end
  end

  test do
    assert_match "lmv", shell_output("#{bin}/lmv --help")
  end
end
