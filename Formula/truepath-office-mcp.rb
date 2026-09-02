class TruepathOfficeMcp < Formula
  desc "CLI and MCP server for Word, Excel, PowerPoint and PDF documents"
  homepage "https://joytruepath.com/truepath-office"
  url "https://github.com/JoyTruepath/truepath-office-mcp-releases/releases/download/v0.2.0/truepath-office-mcp-0.2.0-macos-universal.tar.gz"
  sha256 "5ebcfdb72bc7b7ac606bf204bdfeff7b79499f2b40e0db5b8a5c144df402b0cf"
  license :cannot_represent

  depends_on macos: :ventura

  def install
    bin.install "truepath"
    bin.install "truepath-office-mcp"
  end

  test do
    assert_match "truepath", shell_output("#{bin}/truepath version")
    assert_match "Spreadsheet", shell_output("#{bin}/truepath detect xlsx")
  end
end
