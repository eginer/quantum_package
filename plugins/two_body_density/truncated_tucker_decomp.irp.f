program pouet
 implicit none
 read_wf = .true. 
 touch read_wf
 !call truncated_tucker_decomposition 
 !call truncated_tucker_decomposition_2
 call truncated_tucker_decomposition_provider
 !call tucker_decomposition
end  
