class Claudescope < Formula
  desc "Local, read-only viewer for AI coding-agent transcripts"
  homepage "https://github.com/vladar107/claudescope"
  url "https://registry.npmjs.org/@vladar107/claudescope/-/claudescope-0.25.2.tgz"
  sha256 "29736fb4ecff89e433c93a7266f4b883a1e9c61c321d6eb93f6a3612de183616"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claudescope version")
  end
end
