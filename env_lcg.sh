. /cvmfs/sft.cern.ch/lcg/views/LCG_104c/x86_64-centos7-gcc11-opt/setup.sh

if [[ !  ${PATH} =~ ${PWD}/build/bin ]]; then
  echo "Appending ${PWD}/build/bin to PATH"
  export PATH=${PATH}:${PWD}/build/bin
fi

if [[ !  ${LD_LIBRARY_PATH} =~ ${PWD}/build/lib ]]; then
  echo "Appending ${PWD}/build/lib to LD_LIBRARY_PATH"
  export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${PWD}/build/lib
fi

if [[ !  ${PYTHONPATH} =~ ${PWD}/build/lib/python ]]; then
  echo "Appending ${PWD}/build/lib/python to PYTHONPATH"
  export PYTHONPATH=${PYTHONPATH}:${PWD}/build/lib/python
fi
