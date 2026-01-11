class JjStarship < Formula
  desc "Unified Starship prompt module for Git and Jujutsu repositories"
  homepage "https://github.com/dmmulroy/jj-starship"
  url "https://github.com/dmmulroy/jj-starship/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "127b4e88027ec1315e93f1e5a7613df861a5ff44cb46897dc67e97a76f7f21d2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "jj-starship", shell_output("#{bin}/jj-starship --help")
  end
end
