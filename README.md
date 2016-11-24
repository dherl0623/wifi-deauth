# wifi-deauth
Automated sender of deauthentication packets to all clients on any networks in range. This bash script piggy-backs off of MDK3, 
which comes with Kali Linux. Use <code>apt-get install mdk3</code> to install MDK3. 

<h1>Usage</h1>
Once downloaded run with <code>wifi-deauth.sh</code>. Upon running, it will display network interfaces and ask which one you would like to
use. Then the wireless networks, their channels, and their signal strength will be displayed. Select which channel or channels
you would like to jam. After that, the interface you selected will be put into monitor mode, and the deauthentication will begin. 
To exit use <code>CTRL</code>+<code>C</code>. The interface will then be put back into managed mode.

<h1>Inspiration Credit</h1>
Original "wifi jammer" code credit goes to Dan McInerney. <link>https://github.com/DanMcInerney/wifijammer</link> This script works
really well, and I recommend you check it out!
<p>

This is my very first bash script, and I would love to hear any suggestions you have or problems you run into as I would like to 
continue to learn more about bash scripting and eventually Python scripting.

<h1>License</h1>

Technical Explanation: <p>
In no way will I be liable for any direct, indirect, incidental, special, exemplary, or consequential damages (including, but not 
limited to, procurement of substitute goods or services; loss of use, data, or profits; or business interruption) however caused 
and on any theory of liability, whether in contract, strict liability, or tort (including negligence or otherwise) arising in any
way out of the use of this software, even if advised of the possibility of such damage. 
<P>
<P>
Basic Explanation: <p>
Users are solely responsible for compliance with all laws of their locality. I claim no responsibility for unauthorized or 
unlawful use of this software. Don't mess with things without expressed approval from network owner.
