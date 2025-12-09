from setuptools import setup, find_packages

setup(
    name='apiverve_magic8-ball',
    version='1.1.12',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Magic 8-Ball is a fun tool that provides random predictions and answers like the classic toy. It returns one of 20 classic Magic 8-Ball responses categorized as affirmative, negative, or non-committal.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
