<div class="b1">
	<div class="page-title dashboard">
            <div class="container">
                <div class="row">
                    <div class="col-6"> </div>
                    
                </div>
            </div>
        </div>

        <div class="content-body">
            <div class="container">
                <div class="row">
                    
                    <div class="col-xl-12">
                        <div class="card">
                            <div class="card-header-info">
                              <h4 class="card-title-info">Bug Bounty Program</h4>
                            </div>
                            <div class="card-body">
                                <div class="row justify-content-center">
                                    <div class="textinfo"> 
							

<p>The safety of our users’ funds and personal data is our main priority, therefore, the security of our platform and services is the field we work on daily and implement a number of advanced security technologies. Nevertheless, the contribution of the security researchers, who assist us in keeping our products and users safe, is extremely important for us, that is why we launched a vulnerability detection bounty program. The terms and conditions of our bug bounty program are described in this Bug Bounty Policy.</p>
<p><strong>Ineligibility</strong></p>
<p>Vulnerabilities found in out of scope resources are unlikely to be rewarded unless they present a serious business risk (at our sole discretion). In general, the following vulnerabilities do not correspond to the severity threshold:</p>
<p>WEB</p>
<ul>
<li>●&nbsp;&nbsp;&nbsp; Vulnerabilities in third-party applications</li>
<li>●&nbsp;&nbsp;&nbsp; Spam (SMS, email, etc)</li>
<li>●&nbsp;&nbsp;&nbsp; Best practices concerns without real security impact</li>
<li>●&nbsp;&nbsp;&nbsp; Recently (less than 30 days) disclosed vulnerabilities</li>
<li>●&nbsp;&nbsp;&nbsp; Vulnerabilities affecting users of outdated browsers or platforms</li>
<li>●&nbsp;&nbsp;&nbsp; Social engineering, phishing, physical, or other fraud activities</li>
<li>●&nbsp;&nbsp;&nbsp; Publicly accessible login panels without proof of exploitation</li>
<li>●&nbsp;&nbsp;&nbsp; Reports that state that software is out of date/vulnerable without a proof of concept</li>
<li>●&nbsp;&nbsp;&nbsp; Vulnerabilities involving active content such as web browser add-ons</li>
<li>●&nbsp;&nbsp;&nbsp; Most brute-forcing issues without clear impact</li>
<li>●&nbsp;&nbsp;&nbsp; Theoretical issues</li>
<li>●&nbsp;&nbsp;&nbsp; Missing HTTP security headers without real security impact</li>
<li>●&nbsp;&nbsp;&nbsp; TLS/SSL сertificates related issues</li>
<li>●&nbsp;&nbsp;&nbsp; DNS issues (i.e. MX records, SPF records, etc.)</li>
<li>●&nbsp;&nbsp;&nbsp; Server configuration issues (i.e., open ports, TLS, etc.)</li>
<li>●&nbsp;&nbsp;&nbsp; Open redirects</li>
<li>●&nbsp;&nbsp;&nbsp; Session fixation</li>
<li>●&nbsp;&nbsp;&nbsp; User account enumeration</li>
<li>●&nbsp;&nbsp;&nbsp; Clickjacking/Tapjacking and issues only exploitable through clickjacking/tap jacking</li>
<li>●&nbsp;&nbsp;&nbsp; Descriptive error messages (e.g. Stack Traces, application or server errors)</li>
<li>●&nbsp;&nbsp;&nbsp; Self-XSS that cannot be used to exploit other users</li>
<li>●&nbsp;&nbsp;&nbsp; Login &amp; Logout CSRF</li>
<li>●&nbsp;&nbsp;&nbsp; Weak Captcha/Captcha Bypass without clear impact</li>
<li>●&nbsp;&nbsp;&nbsp; Lack of Secure and HTTPOnly cookie flags</li>
<li>●&nbsp;&nbsp;&nbsp; Username/email enumeration via Login/Forgot Password Page error messages</li>
<li>●&nbsp;&nbsp;&nbsp; CSRF in forms that are available to anonymous users (e.g. the contact form)</li>
<li>●&nbsp;&nbsp;&nbsp; OPTIONS/TRACE HTTP method enabled</li>
<li>●&nbsp;&nbsp;&nbsp; Host header issues without proof-of-concept demonstrating the vulnerability</li>
<li>●&nbsp;&nbsp;&nbsp; Content spoofing and text injection issues without showing an attack vector/without being able to modify HTML/CSS</li>
<li>●&nbsp;&nbsp;&nbsp; Content Spoofing without embedded links/HTML</li>
<li>●&nbsp;&nbsp;&nbsp; Reflected File Download (RFD) without clear impact</li>
<li>●&nbsp;&nbsp;&nbsp; Mixed HTTP Content</li>
<li>●&nbsp;&nbsp;&nbsp; HTTPS Mixed Content Scripts</li>
<li>●&nbsp;&nbsp;&nbsp; DoS/DDoS issues</li>
<li>●&nbsp;&nbsp;&nbsp; Manipulation with Password Reset Token</li>
<li>●&nbsp;&nbsp;&nbsp; MitM and local attacks</li>
<li>●&nbsp;&nbsp;&nbsp; Vulnerabilities already known to us, or already reported by someone else (reward goes to first reporter)</li>
<li>●&nbsp;&nbsp;&nbsp; Issues without any security impact</li>
</ul><br>
<p>MOBILE</p>
<ul>
<li>●&nbsp;&nbsp;&nbsp; Attacks requiring physical access to a user's device</li>
<li>●&nbsp;&nbsp;&nbsp; Vulnerabilities requiring extensive user interaction</li>
<li>●&nbsp;&nbsp;&nbsp; Exposure of non-sensitive data on the device</li>
<li>●&nbsp;&nbsp;&nbsp; Reports from static analysis of the binary without PoC that impacts business logic</li>
<li>●&nbsp;&nbsp;&nbsp; Lack of obfuscation/binary protection/root (jailbreak) detection</li>
<li>●&nbsp;&nbsp;&nbsp; Bypass certificate pinning on rooted devices</li>
<li>●&nbsp;&nbsp;&nbsp; Lack of Exploit mitigations i.e., PIE, ARC, or Stack Canaries</li>
<li>●&nbsp;&nbsp;&nbsp; Sensitive data in URLs/request bodies when protected by TLS</li>
<li>●&nbsp;&nbsp;&nbsp; OAuth &amp; app secret hard-coded/recoverable in IPA, APK</li>
<li>●&nbsp;&nbsp;&nbsp; Sensitive information retained as plaintext in the device’s memory</li>
<li>●&nbsp;&nbsp;&nbsp; Crashes due to malformed URL Schemes or Intents sent to exported Activity/Service/Broadcast Receiver (exploiting these for sensitive data leakage is commonly in scope)</li>
<li>●&nbsp;&nbsp;&nbsp; Any kind of sensitive data stored in app private directory</li>
<li>●&nbsp;&nbsp;&nbsp; Runtime hacking exploits using tools like but not limited to Frida/Appmon (exploits only possible in a jailbroken environment)</li>
<li>●&nbsp;&nbsp;&nbsp; Any URIs leaked because a malicious app has permission to view URIs opened</li>
<li>●&nbsp;&nbsp;&nbsp; Exposure of API keys with no security impact (Google Maps API keys etc.)</li>
</ul><br>
<p><strong>Reward</strong></p>
<p>There is no limit on the maximum and minimum reward size, we reserve the right to increase or decrease the size of the reward depending on the seriousness of the vulnerability found. Researchers are more likely to receive increased rewards if they can demonstrate how the found vulnerability may be used to cause the most harm.</p>


<p>Remote code execution: $10,000</p>
<p>Manipulating user balances: $10,000</p>
<p>XSS/CSRF/Clickjacking affecting user balances/trading/exchange/deposits: $2,000</p>
<p>Theft of information related to passwords/API keys/personal information: $2,000</p>
<p>Partial authentication bypass: $1,500</p>
<p>Other vulnerability with clear potential for financial or data loss: $500</p>
<p>Other CSRF (excluding logout CSRF): $500</p>




<br>
<p><strong>Rules and Guidelines to Report the Vulnerabilities and Get the Reward</strong></p>
<p>Taking into account the illegal nature of unauthorized access to the computer systems, we agree not to take legal action against the researchers nor ask law enforcement bodies to investigate the cases of the security breach by the researchers in case they comply with the industry standards and responsible disclosure guidelines described in this section.</p>
<ol>
<li>1. Main points to receive a reward for detecting vulnerabilities:</li>
</ol>
<ul>
<li>
<p>●&nbsp;&nbsp;&nbsp; immediately submit a report to security@bitcharge.eu</p>
</li>
<li>
<p>●&nbsp;&nbsp;&nbsp; provide us with enough time to fix the vulnerability/weakness/issue before any information regarding it will become in any manner publicly announced</p>
</li>
<li>
<p>●&nbsp;&nbsp;&nbsp; NOT cause any damage to Bitcharge infrastructure and its users</p>
</li>
<li>
<p>●&nbsp;&nbsp;&nbsp; NOT mislead users or employees of Bitcharge while detecting vulnerabilities</p>
</li>
</ul>
<ol start="2">
<li>
<p>2. You must be the first to report a vulnerability to receive a reward.</p>
</li>
<li>
<p>3. In case you find chain vulnerabilities we pay only for vulnerability with the highest severity.</p>
</li>
<li>
<p>4. You should send a clear textual description of the work done, along with steps to reproduce the vulnerability.</p>
</li>
<li>
<p>5. Responsible disclosure guidelines:</p>
</li>
</ol>
<ul>
<li>
<p>●&nbsp;&nbsp;&nbsp; Provide details of the vulnerability, including information needed to reproduce and validate the vulnerability.</p>
</li>
<li>
<p>●&nbsp;&nbsp;&nbsp; Make a good faith effort to avoid privacy violations, destruction of data, and interruption or degradation of our services.</p>
</li>
<li>
<p>●&nbsp;&nbsp;&nbsp; Do not modify or access data that does not belong to you.</p>
</li>
<li>
<p>●&nbsp;&nbsp;&nbsp; Report the vulnerability as soon as possible.</p>
</li>
<li>
<p>●&nbsp;&nbsp;&nbsp; Do not use the detected vulnerabilities for unjust enrichment. If you use the vulnerability in such a way that can cause harm to Bitcharge, our users and third parties and do not report to Bitcharge about the vulnerability, you will not receive a reward and we reserve the right to commence legal action against you.</p>
</li>
<li>
<p>●&nbsp;&nbsp;&nbsp; Do not violate any law and stay in the defined scope, and do not participate in any illegal actions (activities).</p>
</li>
<li>
<p>●&nbsp;&nbsp;&nbsp; After sending a report, you cannot tell anyone or anywhere about the vulnerability. Public disclosure of a vulnerability makes it ineligible for a reward. Furthermore, you shall not store screenshots and/or executable codes and scripts related to the vulnerability not to make the information available to third parties.</p>
</li>
</ul>
<p><strong>Non-security Issues</strong></p>
<p>You may let us know about non-security issues at security@bitcharge.eu</p>





                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-12">
                        <div class="car"> </div>
                    </div>
                </div>
            </div>
        </div>
</div>


</div>