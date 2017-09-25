
//Assume:
// 1. pX, pY and pZ are 'combinatorial' processes (i.e. do not need heartbeat signals)
// 2. pX receives from pY and pX sends to pZ a message of length= pX_outK1_msg_len (experimental max is 80 and theoretical max is 126)

//The following are software APIs that need to be used for initialisation, sending and receiving

//Initialisation:
   // Send Channel, TDN, Target z, y, x, Source PID, Dest PID
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_pX_to_pZ,TDN,TARGETZ_pZ,TARGETY_pZ,TARGETX_pZ,pX_pid,pZ_pid);
	// TDN values allows sending slots for the NI (it could be 0-15). 
	// TDN effect is to make the communication time bounded within Nostrum.
	// For 2x2, TDN value of '1' at nodes 0 and 1, and '4' for nodes 2 and 3 are optimum for fully connected mesh irrespective of actual message injection time.
   // Recv Channels - Dest MoC Type, IRQ, Dest PID, Source PID
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_pX_from_pY,COMB,1,pX_pid,pY_pid);

//Reading style:
	// Once got an interrupt, check for its sourse
         if (NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_pX_from_pY)>0)
     	{
	//If got message, do the reading
	(*pX_outK1)=(*pX_inK2);
	//clear the flag to indicate that the message is read
        NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_pX_from_pY);
	//clear respective interrupt flag
	NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_pX_from_pY);
	}

//Sending style: (Send channel, priority, message length)
	NOC_RNI_SEND(NOC_RNI_BASE,send_channel_pX_to_pZ,0,pX_outK1_msg_len);


