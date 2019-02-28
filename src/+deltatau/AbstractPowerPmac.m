classdef AbstractPowerPmac < handle
        
    methods (Abstract)
        
        
        % x, y, z (mm)
        % tiltX, tiltY (urad)
        setLocalWaferTransferPosition(this, dX, dY, dZ, dTiltX, dTiltY)
            
        
        
         % x, y, z (mm)
         % tiltX, tiltY (urad)
        setLocalReticleTransferPosition(this, dX, dY, dZ, dTiltX, dTiltY)
            
        

        setWorkingModeUndefined(this)
            
        
        
        setWorkingModeActivate(this)
            
        
        
        setWorkingModeShutdown(this)
            
        
        
        setWorkingModeRunSetup(this)
            
        
        
        setWorkingModeRunExposure(this)
            
        
        
        setWorkingModeRun(this)
            
        
        
        setWorkingModeLsiRun(this)
            
        
        
        setWorkingModeWaferTransfer(this)
            
            
        
        
        setWorkingModeReticleTransfer(this)
            
            
        
        
        % Returns the working mode formatted as a double
        d = getActiveWorkingMode(this)
            
        
        
        % Returns the working mode formatted as a double
        d = getNewWorkingMode(this)
            
        
        
        
        %% Getters
        
        % These return true immediately after this coordinate system
        % is instructed to move to a new destinataino and return false
        % once the destination is achieved or after stopAll() is called
        
        d = getWaferCoarseXMotMin(this)
        
        
        d = getWaferCoarseYMotMin(this)
        
        
        d = getReticleCoarseXMotMin(this)
        
        
        d = getReticleCoarseYMotMin(this)
        
        
        d = getLsiCoarseXMotMin(this)
        
        
        l = getWaferCoarseXYZTipTiltStarted(this)
           
        
        
        l = getReticleCoarseXYZTipTiltStarted(this)
           
        
        
        l = getWaferFineZStarted(this)
           
        
        
        l = getReticleFineXYStarted(this)
           
        
        
        l = getLSICoarseXStarted(this)
           
        
        
        % Returns mm
        d = getWaferCoarseX(this)
            
        
        
        % Returns mm
        d = getWaferCoarseY(this)
            
        
        
        % Returns um
        d = getWaferCoarseZ(this)
            
        
        
        % Returns urad
        d = getWaferCoarseTip(this)
            
        
        
        % Returns urad
        d = getWaferCoarseTilt(this)
            
        
        
        % Returns um
        d = getWaferFineZ(this)
            
        
        
        % Returns the voltage [-5 5] of the DeltaTau ACC20E 16-bit ADC board
        % that are connected to the DAQ of the Lion Amplifier of the Cap
        % Sensors
        % 16-bit gives signed values in [-32768, 32767] 32768 is 2^15
        % Board 2 is connected to slots 1 - 4 of the Lion Chassis
        % Board 3 is connected to slots 5 - 8 of the Lion Chassis
        % This command can be used to get the values of the Mod3 and
        % POB cap sensors sensing the retielc and wafer, respectively
        d = getAcc28EADCValue(this, u8Board, u8Channel)
            
        
        
               
        
        % returns Volts
        d = getReticleCap1V(this)
           
        
        
        % returns Volts
        d = getReticleCap2V(this)
           
        
        
        % returns Volts
        d = getReticleCap3V(this)
           
        
        
        % returns Volts
        d = getReticleCap4V(this)
            
           
            
        
        
        
        
        
        % Returns mm
        d = getReticleCoarseX(this)
            
        
        
        % Returns mm
        d = getReticleCoarseY(this)
            
        
        
        % Returns um
        d = getReticleCoarseZ(this)
            
        
        
        % Returns urad
        d = getReticleCoarseTip(this)
            
        
        
        % Returns urad
        d = getReticleCoarseTilt(this)
            
        
        
        % Returns um
        d = getReticleFineX(this)
            
        
        
        % Returns um
        d = getReticleFineY(this)
            
        
        
        % Returns mm
        d = getLsiCoarseX(this)
            
        
        

        l = getMotorErrorWaferCoarseXHoming(this)
            
        
        
        l = getMotorErrorWaferCoarseYHoming(this)
            
        
        
        l = getMotorErrorReticleCoarseXHoming(this)
            
        
        
        l = getMotorErrorReticleCoarseYHoming(this)
            
        
        
        l = getMotorErrorLsiCoarseXHoming(this)
            
        
        
        
        % Hydra 1
        l = getMotorErrorWaferCoarseX(this)
            
        
        
        l = getMotorErrorWaferCoarseY(this)
           
        
        
        % Hyrda 2
        l = getMotorErrorReticleCoarseX(this)
            
        
        
        l = getMotorErrorReticleCoarseY(this)
        
        
        % Hydra 3
        l = getMotorErrorLsiCoarseX(this)
        
                
               
        l = getMotorErrorWaferCoarseZ(this)
        
        
        l = getMotorErrorWaferCoarseTip(this)
        
        
        l = getMotorErrorWaferCoarseTilt(this)
        
        
        l = getMotorErrorWaferFineZ(this)
        
        
        
        l = getMotorErrorReticleCoarseZ(this)
        
        
        l = getMotorErrorReticleCoarseTip(this)
        
        
        l = getMotorErrorReticleCoarseTilt(this)
        
        
        l = getMotorErrorReticleFineX(this)
        
        
        l = getMotorErrorReticleFineY(this)
        
         
                 
         
        l = getMotorErrorWaferCoarseXAltera(this)
        
        
        l = getMotorErrorWaferCoarseYAltera(this)
        
        
        l = getMotorErrorReticleCoarseXAltera(this)
        
        
        l = getMotorErrorReticleCoarseYAltera(this)
        
        
        l = getMotorErrorLsiCoarseXAltera(this)
        
        
        
        %% MotorStatus1
        
        % Returns locical {1x1}
        l = getMotorStatusWaferCoarseXIsMoving(this)
        
        
        l = getMotorStatusWaferCoarseYIsMoving(this)
        
        
        l = getMotorStatusReticleCoarseXIsMoving(this)
        
        
        l = getMotorStatusReticleCoarseYIsMoving(this)
        
        
        l = getMotorStatusLsiCoarseXIsMoving(this)
        
        
        l = getMotorStatusWaferCoarseZIsMoving(this)
        
        
        l = getMotorStatusWaferCoarseTipIsMoving(this)
        
        
        l = getMotorStatusWaferCoarseTiltIsMoving(this)
        
        
        
        l = getMotorStatusOpenLoopWaferCoarseX(this)
        
        l = getMotorStatusOpenLoopWaferCoarseY(this)
        
        l = getMotorStatusOpenLoopReticleCoarseX(this)
        
        l = getMotorStatusOpenLoopReticleCoarseY(this)
        
        
        l = getMotorStatusOpenLoopLsiCoarseX(this)
        
        l = getMotorStatusOpenLoopWaferCoarseZ(this)
        
        l = getMotorStatusOpenLoopWaferCoarseTip(this)
        
        l = getMotorStatusOpenLoopWaferCoarseTilt(this)
        
        
        l = getMotorStatusMinusLimitWaferCoarseX(this)
        
        l = getMotorStatusMinusLimitWaferCoarseY(this)
        
        l = getMotorStatusMinusLimitReticleCoarseX(this)
        
        l = getMotorStatusMinusLimitReticleCoarseY(this)
        
        
        l = getMotorStatusMinusLimitLsiCoarseX(this)
        
        l = getMotorStatusMinusLimitWaferCoarseZ(this)
        
        l = getMotorStatusMinusLimitWaferCoarseTip(this)
        
        l = getMotorStatusMinusLimitWaferCoarseTilt(this)
        
        
        
        l = getMotorStatusPlusLimitWaferCoarseX(this)
        
        l = getMotorStatusPlusLimitWaferCoarseY(this)
        
        l = getMotorStatusPlusLimitReticleCoarseX(this)
        
        l = getMotorStatusPlusLimitReticleCoarseY(this)
        
        
        l = getMotorStatusPlusLimitLsiCoarseX(this)
        
        l = getMotorStatusPlusLimitWaferCoarseZ(this)
        
        l = getMotorStatusPlusLimitWaferCoarseTip(this)
        
        l = getMotorStatusPlusLimitWaferCoarseTilt(this)
        
        
        
        
        
                
        %% MotorStatus2
        
        
        l = getMotorStatusWaferFineZIsMoving(this)
        
        
        l = getMotorStatusReticleCoarseZIsMoving(this)
        
        
        l = getMotorStatusReticleCoarseTipIsMoving(this)
        
        
        l = getMotorStatusReticleCoarseTiltIsMoving(this)
        
        
        l = getMotorStatusReticleFineXIsMoving(this)
        
        
        l = getMotorStatusReticleFineYIsMoving(this)
        
        
        

         
        l = getMotorStatusOpenLoopWaferFineZ(this)
        
        l = getMotorStatusOpenLoopReticleCoarseZ(this)
        
        l = getMotorStatusOpenLoopReticleCoarseTip(this)
        
        l = getMotorStatusOpenLoopReticleCoarseTilt(this)
        
        
        l = getMotorStatusOpenLoopReticleFineX(this)
        
        l = getMotorStatusOpenLoopReticleFineY(this)
        
       
        
        l = getMotorStatusMinusLimitWaferFineZ(this)
        
        l = getMotorStatusMinusLimitReticleCoarseZ(this)
        
        l = getMotorStatusMinusLimitReticleCoarseTip(this)
        
        l = getMotorStatusMinusLimitReticleCoarseTilt(this)
        
        
        l = getMotorStatusMinusLimitReticleFineX(this)
        
        l = getMotorStatusMinusLimitReticleFineY(this)
        
        
        
        
        l = getMotorStatusPlusLimitWaferFineZ(this)
        
        l = getMotorStatusPlusLimitReticleCoarseZ(this)
        
        l = getMotorStatusPlusLimitReticleCoarseTip(this)
        
        l = getMotorStatusPlusLimitReticleCoarseTilt(this)
        
        
        l = getMotorStatusPlusLimitReticleFineX(this)
        
        l = getMotorStatusPlusLimitReticleFineY(this)
        
        
        
        
        
        
        
        % EncoderError (loss)
        
        l = getEncoderErrorLossWaferCoarseX(this)
        
        
        l = getEncoderErrorLossWaferCoarseY(this)
        
        l = getEncoderErrorLossReticleCoarseX(this)
        
        l = getEncoderErrorLossReticleCoarseY(this)
        
        l = getEncoderErrorLossLsiCoarseX(this)
        
        
        % EncoderError Error
        
        l = getEncoderErrorWaferCoarseX(this)
        
        
        l = getEncoderErrorWaferCoarseY(this)
        
        l = getEncoderErrorReticleCoarseX(this)
        
        l = getEncoderErrorReticleCoarseY(this)
        
        l = getEncoderErrorLsiCoarseX(this)
        
        
        
        l = getEncoderErrorWaferCoarseZ(this)
        
        l = getEncoderErrorWaferCoarseTip(this)
        
        
        l = getEncoderErrorWaferCoarseTilt(this)
        
        
        l = getEncoderErrorWaferFineZ(this)
        
        
        l = getEncoderErrorReticleCoarseZ(this)
        
        
        l = getEncoderErrorReticleCoarseTip(this)
        
        
        l = getEncoderErrorReticleCoarseTilt(this)
        
        
        l = getEncoderErrorReticleFineX(this)
        
        
        l = getEncoderErrorReticleFineY(this)
        
        
        
        
        
        % CSError (runtime)
        
        l = getCsErrorWaferCoarseRunTime(this)
        
        
        l = getCsErrorReticleCoarseRunTime(this)
        
        
        
        l = getCsErrorWaferFineRunTime(this)
        
        
        l = getCsErrorReticleFineRunTime(this)
        
        
        l = getCsErrorLsiCoarseRunTime(this)
        
        
        % CSError (limit stop)
        
        l = getCsErrorWaferCoarseLimitStop(this)
        
        
        l = getCsErrorReticleCoarseLimitStop(this)
        
        
        
        l = getCsErrorWaferFineLimitStop(this)
        
        
        l = getCsErrorReticleFineLimitStop(this)
        
        
        l = getCsErrorLsiCoarseLimitStop(this)
        
        
        
        % CSError (error status)
        
        l = getCsErrorWaferCoarseErrorStatus(this)
        
        
        l = getCsErrorReticleCoarseErrorStatus(this)
        
        
        
        l = getCsErrorWaferFineErrorStatus(this)
        
        
        l = getCsErrorReticleFineErrorStatus(this)
        
        
        l = getCsErrorLsiCoarseErrorStatus(this)
        
        
        
        % CSError (soft limit)
        
        l = getCsErrorWaferCoarseSoftLimit(this)
        
        
        l = getCsErrorReticleCoarseSoftLimit(this)
        
        
        
        l = getCsErrorWaferFineSoftLimit(this)
        
        
        l = getCsErrorReticleFineSoftLimit(this)
        
        
        l = getCsErrorLsiCoarseSoftLimit(this)
        
        
        
                
        % CSStatus (program running)
        
        l = getCsStatusWaferCoarseProgramRunning(this)
        
        
        l = getCsStatusReticleCoarseProgramRunning(this)
        
        
        
        l = getCsStatusWaferFineProgramRunning(this)
        
        
        l = getCsStatusReticleFineProgramRunning(this)
        
        
        l = getCsStatusLsiCoarseProgramRunning(this)
        
        
        
        % CSStatus (not homed)
        
        l = getCsStatusWaferCoarseNotHomed(this)
        
        
        l = getCsStatusReticleCoarseNotHomed(this)
        
        
        
        l = getCsStatusWaferFineNotHomed(this)
        
        
        l = getCsStatusReticleFineNotHomed(this)
        
        
        l = getCsStatusLsiCoarseNotHomed(this)
        
        
        
        
        
        % CSStatus (timebase deviation)
        
        l = getCsStatusWaferCoarseTimebaseDeviation(this)
        
        
        l = getCsStatusReticleCoarseTimebaseDeviation(this)
        
        
        
        l = getCsStatusWaferFineTimebaseDeviation(this)
        
        
        l = getCsStatusReticleFineTimebaseDeviation(this)
        
        
        l = getCsStatusLsiCoarseTimebaseDeviation(this)
        
        
        
        
        l = getGlobErrorNoClocks(this)
        
        
        l = getGlobErrorWdtFault(this)
        
        
        l = getGlobErrorHwChangeError(this)
        
        
        l = getGlobErrorSysPhaseErrorCtr(this)
        
        
        l = getGlobErrorSysServoBusyCtr(this)
        
        
        l = getGlobErrorSysServoErrorCtr(this)
        
        
        l = getGlobErrorSysRtIntBusyCtr(this)
        
        
        l = getGlobErrorSysRtIntErrorCtr(this)
        
        
        % MET50 Errors
        
        % 712 Read / Write Error
        
        l = getMet50Error7121WriteError(this)
        
        
        l = getMet50Error7121ReadError(this)
        
        
        l = getMet50Error7122WriteError(this)
        
        
        l = getMet50Error7122ReadError(this)
        
        
        % Hydra Not Connected
        
        l = getMet50ErrorHydra1NotConnected(this)
        
        
        l = getMet50ErrorHydra2NotConnected(this)
        
        
        l = getMet50ErrorHydra3NotConnected(this)
        
        
        % Hydra Machine Error
        
        l = getMet50ErrorHydra1MachineError(this)
        
        
        l = getMet50ErrorHydra2MachineError(this)
        
        
        l = getMet50ErrorHydra3MachineError(this)
        
        
        % 712 Not Connected
        
        l = getMet50Error7121NotConnected(this)
           
        
        
        l = getMet50Error7122NotConnected(this)
        
        
        l = getMet50ErrorModBusNotConnected(this)
        
        
        l = getMet50ErrorHsStatus(this)
        
        
        l = getMet50ErrorDmiStatus(this)
        
        
        l = getMet50ErrorCAppNotRunning(this)
        
        
        l = getMet50ErrorMoxaNotConnected(this)
        
        
        l = getMet50ErrorTemperatureWarning(this)
        
        
        l = getMet50ErrorTemperatureError(this)
        
        
        l = getMet50ErrorProximitySwitchWaferXLsi(this)
            
        
        
        % IO Info
        l = getIoInfoLockWaferPosition(this)
        
        
        l = getIoInfoLockReticlePosition(this)
        
        
        l = getIoInfoEnableSystemIsZero(this)
        
        
        
        l = getIoInfoAtWaferTransferPosition(this)
        
        
        l = getIoInfoAtReticleTransferPosition(this)
        
        
        l = getIoInfoWaferPositionLocked(this)
        
        
        l = getIoInfoReticlePositionLocked(this)
        
        
        l = getIoInfoSystemEnabledIsZero(this)
        
        
        
                        
        %% Setters
        
        % &1a stops cs1, &2a stops cs2, etc. HOWEVER, stopping doordinate 
        % system 1, 2, 3, etc. prematurely
        % will set CSxReady = -2, -4, -8, -16, -32, respectively so need
        % to change the value of CSxReady before issuing a new CommandCode
        
        % CSxReady=1 readys the system for new commands.  
        % CSxReady=-1 has the benefit of not saying ready.  While the
        % system is moving, CSxReady = 0.  CSxReady = 1 only after a move
        % completes
        % update destinatin
        % CommandCode=24 moves cs2 to destinations
            
        % Expire the cache for all sets
            
        % @param {double 1x1} dVal - mm
        setWaferCoarseX(this, dVal)
            
            
        
        
        % @param {double 1x1} dVal - mm
        setWaferCoarseY(this, dVal)
            
        
        
        % @param {double 1x1} dVal - um
        setWaferCoarseZ(this, dVal)
            
        
        
        % @param {double 1x1} dVal - urad
        setWaferCoarseTip(this, dVal)
            
        
        
        % @param {double 1x1} dVal - urad
        setWaferCoarseTilt(this, dVal)
            
        
        
        % @param {double 1x1} dVal - um
        setWaferFineZ(this, dVal)
            
        
                
        % @param {double 1x1} dVal - mm
        setReticleCoarseX(this, dVal)
           
        
        
        % @param {double 1x1} dVal - mm
        setReticleCoarseY(this, dVal)
            
        
        
        % @param {double 1x1} dVal - um
        setReticleCoarseZ(this, dVal)
            
        
        
        % @param {double 1x1} dVal - urad
        setReticleCoarseTip(this, dVal)
            
        
        
        % @param {double 1x1} dVal - urad
        setReticleCoarseTilt(this, dVal)
            
        
        
        
        % @param {double 1x1} dVal - um
        setReticleFineX(this, dVal)
            
        
        
        % @param {double 1x1} dVal - um
        setReticleFineY(this, dVal)
            
        
        
        
        % @param {double 1x1} dVal - mm
        setLsiCoarseX(this, dVal)
            

        
                

        stopAll(this)
        
    end
    
    
end
            
            
        
        
        
    
    
    
    
    

