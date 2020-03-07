import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

with open('requirements.txt') as f:
    required = f.read().splitlines()


setuptools.setup(
    name="src-rvpt", # Replace with your own username
    version="0.0.2",
    author="RVPT",
    description="Speech separation, train, model and utility",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://gitlab.org/vitrioil/Speech-Separation",
    packages=setuptools.find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "Operating System :: POSIX :: Linux",
        "Development Status :: 3 - Alpha"
    ],
    python_requires='>=3.6',
    install_requires=required
)
