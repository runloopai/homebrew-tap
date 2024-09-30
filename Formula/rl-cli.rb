class RlCli < Formula
  include Language::Python::Virtualenv

  desc "RunLoop AI Command-Line Interface"
  homepage "https://github.com/runloopai/rl-cli"
  url "https://github.com/runloopai/rl-cli/archive/refs/tags/0.1.0.tar.gz"
  sha256 "f5c3139fedbdb5d9204cd097a60a5c663d97bb7df58731ccf1a43eba6de8ecb2"
  license "MIT"

  depends_on "python@3.12"
  depends_on "rust" => :build  # Needed to build pydantic-core from source

  resource "runloop-api-client" do
    url "https://files.pythonhosted.org/packages/ea/cd/9db6d02626d4244258bf4368a979335ef8b9ab4df4b6725d00f0e855c345/runloop_api_client-0.1.0a20.tar.gz"
    sha256 "21f830549ce8ab090ac73a5fe17e2f0635bd5717849334164e26daa3b54ba628"
  end
    resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/78/b6/6307fbef88d9b5ee7421e68d78a9f162e0da4900bc5f5793f6d3d0e34fb8/annotated_types-0.7.0-py3-none-any.whl"
    sha256 "1f02e8b43a8fbbc3f3e0d4f0f4bfc8131bcb4eebe8849b8e5c773f3a1c582a53"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/7b/a2/10639a79341f6c019dedc95bd48a4928eed9f1d1197f4c04f546fc7ae0ff/anyio-4.4.0-py3-none-any.whl"
    sha256 "c1b2d8f46a8a812513012e1107cb0e68c17159a7a594208005a57dc776e1bdc7"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/1c/d5/c84e1a17bf61d4df64ca866a1c9a913874b4e9bdc131ec689a0ad013fb36/certifi-2024.7.4-py3-none-any.whl"
    sha256 "c198e21b1289c2ab85ee4e67bb4b4ef3ead0892059901a8d5b622f24a1101e90"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/28/76/e6222113b83e3622caa4bb41032d0b1bf785250607392e1b778aca0b8a7d/charset_normalizer-3.3.2-py3-none-any.whl"
    sha256 "3e4d1f6587322d2788836a99c69062fbb091331ec940e02d12d179c1d53e25fc"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/12/b3/231ffd4ab1fc9d679809f356cebee130ac7daa00d6d6f3206dd4fd137e9e/distro-1.9.0-py3-none-any.whl"
    sha256 "7bffd925d65168f85027d8da9af6bddab658135b840670a223589bc0c8ef02b2"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/95/04/ff642e65ad6b90db43e668d70ffb6736436c7ce41fcc549f4e9472234127/h11-0.14.0-py3-none-any.whl"
    sha256 "e3fe4ac4b851c468cc8363d500db52c2ead036020723024a109d37346efaa761"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/78/d4/e5d7e4f2174f8a4d63c8897d79eb8fe2503f7ecc03282fee1fa2719c2704/httpcore-1.0.5-py3-none-any.whl"
    sha256 "421f18bac248b25d310f3cacd198d55b8e6125c107797b609ff9b7a6ba7991b5"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/41/7b/ddacf6dcebb42466abd03f368782142baa82e08fc0c1f8eaa05b4bae87d5/httpx-0.27.0-py3-none-any.whl"
    sha256 "71d5465162c13681bff01ad59b2cc68dd838ea1f10e51574bac27103f00c91a5"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/22/7e/d71db821f177828df9dea8c42ac46473366f191be53080e552e628aad991/idna-3.8-py3-none-any.whl"
    sha256 "050b4e5baadcd44d760cedbd2b8e639f2ff89bbc7a5730fcc662954303377aac"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/1f/fa/b7f815b8c9ad021c07f88875b601222ef5e70619391ade4a49234d12d278/pydantic-2.8.2-py3-none-any.whl"
    sha256 "73ee9fddd406dc318b885c7a2eab8a6472b68b8fb5ba8150949fc3db939f23c8"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/12/e3/0d5ad91211dba310f7ded335f4dad871172b9cc9ce204f5a56d76ccd6247/pydantic_core-2.20.1.tar.gz"
    sha256 "a45f84b09ac9c3d35dfcf6a27fd0634d30d183205230a0ebe8373a0e8cfa0906"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/f9/9b/335f9764261e915ed497fcdeb11df5dfd6f7bf257d4a6a2a686d80da4d54/requests-2.32.3-py3-none-any.whl"
    sha256 "70761cfe03c773ceb22aa2f671b4757976145175cdfca038c02654d061d6dcc6"
  end

  resource "runloop-api-client" do
    url "https://files.pythonhosted.org/packages/8b/f3/aea7ceb9da91acf987c249e042c2133a443f0a14fd2708298c25f0d3809d/runloop_api_client-0.1.0a20-py3-none-any.whl"
    sha256 "df4d0bd346b7b4d7cda1f441547e04421176b6de52b1c6d159188cd686ca8f01"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/e9/44/75a9c9421471a6c4805dbf2356f7c181a29c1879239abab1ea2cc8f38b40/sniffio-1.3.1-py3-none-any.whl"
    sha256 "2f6da418d1f1e0fddd844478f41680e794e6051915791a034ff65e5f100525a2"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/26/9f/ad63fc0248c5379346306f8668cda6e2e2e9c95e01216d2b8ffd9ff037d0/typing_extensions-4.12.2-py3-none-any.whl"
    sha256 "04e5ca0351e0f3f85c6853954072df659d0d13fac324d0072316b67d7794700d"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/ca/1c/89ffc63a9605b583d5df2be791a27bc1a42b7c32bab68d3c8f2f73a98cd4/urllib3-2.2.2-py3-none-any.whl"
    sha256 "a448b2f64d686155468037e1ace9f2d2199776e17f0a46610480d311f73e3472"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rl-cli --help")
  end
end
