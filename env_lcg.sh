if [[ !  ${CPLUS_INCLUDE_PATH} =~ LCG_106/x86_64-el9-gcc13-opt ]]; then
  echo "Setup LCG_106 stack built for x86_64-el9-gcc13-opt which has gcc13 and ROOT 6.32.02"
  . /cvmfs/sft.cern.ch/lcg/views/LCG_106/x86_64-el9-gcc13-opt/setup.sh
fi

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

