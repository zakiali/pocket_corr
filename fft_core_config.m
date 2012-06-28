
function fft_core_config(this_block)

  % Revision History:
  %
  %   12-Sep-2010  (15:44 hours):
  %     Original code was machine generated by Xilinx's System Generator after parsing
  %     /home/zaki/fft_core.vhd
  %
  %

  this_block.setTopLevelLanguage('VHDL');

  this_block.setEntityName('fft_core');

  % System Generator has to assume that your entity  has a combinational feed through; 
  %   if it  doesn't, then comment out the following line:

  this_block.addSimulinkInport('sync');
  this_block.addSimulinkInport('shift');
  this_block.addSimulinkInport('pol0');
  this_block.addSimulinkInport('pol1');
  this_block.addSimulinkInport('pol2');
  this_block.addSimulinkInport('pol3');
  
  
  this_block.addSimulinkOutport('sync_out');
  this_block.addSimulinkOutport('plo02_out');
  this_block.addSimulinkOutport('pol13_out');
  this_block.addSimulinkOutport('oflow');

  oflow_port = this_block.port('oflow');
  oflow_port.setType('Bool');
  oflow_port.useHDLVector(false);
  plo02_out_port = this_block.port('plo02_out');
  plo02_out_port.setType('UFix_36_0');
  pol13_out_port = this_block.port('pol13_out');
  pol13_out_port.setType('UFix_36_0');
  sync_out_port = this_block.port('sync_out');
  sync_out_port.setType('Bool');
  sync_out_port.useHDLVector(false);

  % -----------------------------
  if (this_block.inputTypesKnown)
    % do input type checking, dynamic output type and generic setup in this code block.

    if (this_block.port('pol0').width ~= 18);
      this_block.setError('Input data type for port "pol0" must have width=18.');
    end

    if (this_block.port('pol1').width ~= 18);
      this_block.setError('Input data type for port "pol1" must have width=18.');
    end

    if (this_block.port('pol2').width ~= 18);
      this_block.setError('Input data type for port "pol2" must have width=18.');
    end

    if (this_block.port('pol3').width ~= 18);
      this_block.setError('Input data type for port "pol3" must have width=18.');
    end

    if (this_block.port('shift').width ~= 16);
      this_block.setError('Input data type for port "shift" must have width=16.');
    end

    if (this_block.port('sync').width ~= 1);
      this_block.setError('Input data type for port "sync" must have width=1.');
    end

    this_block.port('sync').useHDLVector(false);

  end  % if(inputTypesKnown)
  % -----------------------------

  % -----------------------------
   if (this_block.inputRatesKnown)
     setup_as_single_rate(this_block,'clk_1','ce_1')
   end  % if(inputRatesKnown)
  % -----------------------------

    % (!) Set the inout port rate to be the same as the first input 
    %     rate. Change the following code if this is untrue.
    uniqueInputRates = unique(this_block.getInputRates);


  % Add addtional source files as needed.
  %  |-------------
  %  | Add files in the order in which they should be compiled.
  %  | If two files "a.vhd" and "b.vhd" contain the entities
  %  | entity_a and entity_b, and entity_a contains a
  %  | component of type entity_b, the correct sequence of
  %  | addFile() calls would be:
  %  |    this_block.addFile('b.vhd');
  %  |    this_block.addFile('a.vhd');
  %  |-------------

  %    this_block.addFile('');
  %    this_block.addFile('');
  this_block.addFile('fft_core.vhd');

return;


% ------------------------------------------------------------

function setup_as_single_rate(block,clkname,cename) 
  inputRates = block.inputRates; 
  uniqueInputRates = unique(inputRates); 
  if (length(uniqueInputRates)==1 & uniqueInputRates(1)==Inf) 
    block.addError('The inputs to this block cannot all be constant.'); 
    return; 
  end 
  if (uniqueInputRates(end) == Inf) 
     hasConstantInput = true; 
     uniqueInputRates = uniqueInputRates(1:end-1); 
  end 
  if (length(uniqueInputRates) ~= 1) 
    block.addError('The inputs to this block must run at a single rate.'); 
    return; 
  end 
  theInputRate = uniqueInputRates(1); 
  for i = 1:block.numSimulinkOutports 
     block.outport(i).setRate(theInputRate); 
  end 
  block.addClkCEPair(clkname,cename,theInputRate); 
  return; 

% ------------------------------------------------------------

