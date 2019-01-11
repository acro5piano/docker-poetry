# docker-poetry

This repository is for research of Docker + Poetry errors.

# googleapis-common-protos cannot be installed

```
Step 9/10 : RUN poetry install
 ---> Running in 6841b43a0ef2
Creating virtualenv docker-poetry-py3.6 in /root/.cache/pypoetry/virtualenvs
Updating dependencies
Resolving dependencies...
Package operations: 24 installs, 0 updates, 0 removals
Writing lock file
  - Installing pyasn1 (0.4.5)
  - Installing six (1.12.0)
  - Installing cachetools (3.0.0)
  - Installing certifi (2018.11.29)
  - Installing chardet (3.0.4)
  - Installing idna (2.8)
  - Installing protobuf (3.6.1)
  - Installing pyasn1-modules (0.2.3)
  - Installing rsa (4.0)
  - Installing urllib3 (1.24.1)
  - Installing google-auth (1.6.2)
  - Installing googleapis-common-protos (1.5.5)

[EnvCommandError]
Command ['/root/.cache/pypoetry/virtualenvs/docker-poetry-py3.6/bin/pip', 'i
nstall', '--no-deps', 'googleapis-common-protos==1.5.5'] errored with the fo
llowing output:
Collecting googleapis-common-protos==1.5.5
  Downloading https://files.pythonhosted.org/packages/ae/94/a256572abf5d10347301c638d5df552fab1515497270726e6b56698d2e99/googleapis-common-protos-1.5.5.tar.gz
    Complete output from command python setup.py egg_info:
    Traceback (most recent call last):
      File "<string>", line 1, in <module>
      File "/root/.cache/pypoetry/virtualenvs/docker-poetry-py3.6/lib/python3.6/site-packages/setuptools/__init__.py", line 10, in <module>
        from setuptools.extern.six.moves import filter, filterfalse, map
      File "/root/.cache/pypoetry/virtualenvs/docker-poetry-py3.6/lib/python3.6/site-packages/setuptools/extern/__init__.py", line 1, in <module>
        from pkg_resources.extern import VendorImporter
      File "/root/.cache/pypoetry/virtualenvs/docker-poetry-py3.6/lib/python3.6/site-packages/pkg_resources/__init__.py", line 3017, in <module>
        @_call_aside
      File "/root/.cache/pypoetry/virtualenvs/docker-poetry-py3.6/lib/python3.6/site-packages/pkg_resources/__init__.py", line 3003, in _call_aside
        f(*args, **kwargs)
      File "/root/.cache/pypoetry/virtualenvs/docker-poetry-py3.6/lib/python3.6/site-packages/pkg_resources/__init__.py", line 3045, in _initialize_master_working_set
        dist.activate(replace=False)
      File "/root/.cache/pypoetry/virtualenvs/docker-poetry-py3.6/lib/python3.6/site-packages/pkg_resources/__init__.py", line 2577, in activate
        declare_namespace(pkg)
      File "/root/.cache/pypoetry/virtualenvs/docker-poetry-py3.6/lib/python3.6/site-packages/pkg_resources/__init__.py", line 2151, in declare_namespace
        _handle_ns(packageName, path_item)
      File "/root/.cache/pypoetry/virtualenvs/docker-poetry-py3.6/lib/python3.6/site-packages/pkg_resources/__init__.py", line 2091, in _handle_ns
        _rebuild_mod_path(path, packageName, module)
      File "/root/.cache/pypoetry/virtualenvs/docker-poetry-py3.6/lib/python3.6/site-packages/pkg_resources/__init__.py", line 2120, in _rebuild_mod_path
        orig_path.sort(key=position_in_sys_path)
    AttributeError: '_NamespacePath' object has no attribute 'sort'
    ----------------------------------------
Command "python setup.py egg_info" failed with error code 1 in /tmp/pip-build-i60z97p4/googleapis-common-protos/

You are using pip version 9.0.1, however version 18.1 is available.
You should consider upgrading via the 'pip install --upgrade pip' command.
install [--no-dev] [--dry-run] [-E|--extras EXTRAS] [--develop DEVELOP]
The command '/bin/sh -c poetry install' returned a non-zero code: 1
```
