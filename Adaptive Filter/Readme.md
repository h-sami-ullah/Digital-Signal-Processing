# 1. Adaptive Filter algorithms 

(1) **Adaptive filtering using Least Mean Square (LMS) algorithm**

(2) **Adaptive filtering using Normalized LMS (NLMS) algorithm**

(3) **Adaptive filtering using Recursive Least Square (RLS) algorithm**



# 2. Applciation of Adaptive filters
Using different configuration of system input signal, adaptation mechanism and required output, one can achieve multiple applications of adaptive filters.

(1) **System Identification**

   Using adaptation to identify an unknown system , One common adaptive filter application is to use adaptive filters to identify an unknown system, such as the response of an unknown communications channel or the frequency response of an auditorium, to pick fairly divergent applications. Other applications include echo cancellation and channel identification.
  
(2) **Inverse System Identification**

   Adapting the inverse response of the system. By placing the unknown system in series with your adaptive filter, your filter adapts to become the inverse of the unknown system as e(k) becomes very small. As shown in the figure, the process requires a delay inserted in the desired signal d(k) path to keep the data at the summation synchronized. Adding the delay keeps the system causal.
   
(3) **Noise Cancellation**

   Adapting the noise and subtracting it from the signal to clean the signal. In noise cancellation, adaptive filters let you remove noise from a signal in real time. Here, the desired signal, the one to clean up, combines noise and desired information. To remove the noise, feed a signal n'(k) to the adaptive filter that is correlated to the noise to be removed from the desired signal.
   
 (4) **Future value Prediction**  
 
   Adapting to future Values of a periodic Signal. Predicting signals requires that you make some key assumptions. Assume that the signal is either steady or slowly varying over time, and periodic over time as well.
   
   
  # 3. Adaptive Filter for noise Cancellation
  Adaptive filters serve many purposes like equalisation, system identification, and noise cancellation. Noise cancellation is similar to system identification problem where the task is to find out a system which tells the relation between the noise translation from reference to source. The below figure gives a overall understanding of adaptive filter.
 
 ![Screenshot](noise.png?raw=true "Adapting filter to cancel noise")
 
 One thing to note in the figure is the configuration of the filter will remain same for any kind of signal input. The only thing we can change is how to effectively learn the adaptive filter. As discussed earlier there are different algorithms with there own pros and cons which are readily useable for adaptive filter learning. The main operation of adaptive filter is to learn such mapping that the end results is minimal error i.e., difference between the reference and source signal is minimum. Given the fact that the source signal and the reference signal are not corelated to each other how can a mapping be learned from reference signal to source signal. This is not possible unless there is some correlation. Again, the purpose of this configuration of adaptive learning is to reduce the noise in the source signal, so we need a system which can map the reference signal in such a way that it cancels out the noise in primary signal. To achieve that, there needs to be correlation in between the noise of the two sources i.e., primary source noise and reference source noise should have a relation achievable mathematically. 
 
 # 4. End Discussion:
 
 This project gives an implementation of three different algorithms for adapting the filter coefficients. It uses 21 number of coefficients for all the algorithms. The Simple and less complex, LMS, little complex but rewarding, NLMS, and more complex and highly competitive, RLS, are implemented. The key findings are:
1.	LMS results in amplified gradient and may not diverge. 
2.	RLS is computationally expensive but rewarding.
3.	Faster convergence in RLS as compared to LMS
4.	RLS accounts for past values of signal whereas LMS do not.
5.	LMS only minimize the current mean square error only.
6.	RLS takes weighted squared error into account.  

 
