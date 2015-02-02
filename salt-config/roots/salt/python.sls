python2:
  pkg:
    - installed
    - names:
      - python-dev
      - python

pip2:
  pkg:
    - installed
    - name: python-pip
    - require:
      - pkg: python2

virtualenv:
  pip:
    - installed
    - require:
      - pkg: pip2

flake8:
  pip:
    - installed
    - require:
      - pkg: pip2

tox:
  pip:
    - installed
    - require:
      - pkg: pip2

isort:
  pip:
    - installed
    - require:
      - pkg: pip2

python3:
  pkg:
    - installed
    - names:
      - python3-dev
      - python3
