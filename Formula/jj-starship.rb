class JjStarship < Formula
  desc "Unified Starship prompt module for Git and Jujutsu repositories"
  homepage "https://github.com/dmmulroy/jj-starship"
  url "https://github.com/dmmulroy/jj-starship/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "9960581410e8b9d8560bdf15582fac5a5c98f1070041524dc3d547783f6110ae"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "jj-starship", shell_output("#{bin}/jj-starship --help")
  end
end
