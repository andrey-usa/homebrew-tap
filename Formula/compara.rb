class Compara < Formula
  desc "Compare two tables (CSV, NDJSON, Parquet) on a composite key: counts, per-column statistics and a self-contained HTML report."
  homepage "https://andrey-usa.github.io/compara/"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.8.0/compara-x86_64-apple-darwin.tar.gz"
      sha256 "4e3b53497e7c7369d27ae02876822a6b0bf802ba2f0459508fa70856ba84693d"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.8.0/compara-aarch64-apple-darwin.tar.gz"
      sha256 "c8f5426de9d63b2fbac6f17593d3f391bb8aae64981b379dca3b927b4100abad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.8.0/compara-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b2d2467a5230ebc1c033b17d63edb7525fd9aa0ac2b13350ac5e7a4af31c9a8"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.8.0/compara-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e750c707bbc8560d1ed042d0e0f571266741fa47a826bae8a39aae6261240fe9"
    end
  end

  def install
    bin.install "compara"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compara --version")
  end
end
