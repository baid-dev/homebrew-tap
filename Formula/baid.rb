class Baid < Formula
  desc "CLI for managing AI agent skills"
  homepage "https://baid.dev"
  url "https://rubygems.org/downloads/baid-0.2.0.gem"
  sha256 "143cf48ceeea75b87431395eb11edc8566921b61479b8390aab7f098974e53f1"
  license "MIT"

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "install", "--no-document", cached_download
    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end

  test do
    assert_match "baid", shell_output("#{bin}/baid version")
  end
end