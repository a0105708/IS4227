
package wss;

import javax.xml.ws.WebFault;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.10-b140803.1500
 * Generated source version: 2.2
 * 
 */
@WebFault(name = "AccountNotFoundException", targetNamespace = "http://WSS/")
public class AccountNotFoundException_Exception
    extends Exception
{

    /**
     * Java type that goes as soapenv:Fault detail element.
     * 
     */
    private AccountNotFoundException faultInfo;

    /**
     * 
     * @param faultInfo
     * @param message
     */
    public AccountNotFoundException_Exception(String message, AccountNotFoundException faultInfo) {
        super(message);
        this.faultInfo = faultInfo;
    }

    /**
     * 
     * @param faultInfo
     * @param cause
     * @param message
     */
    public AccountNotFoundException_Exception(String message, AccountNotFoundException faultInfo, Throwable cause) {
        super(message, cause);
        this.faultInfo = faultInfo;
    }

    /**
     * 
     * @return
     *     returns fault bean: wss.AccountNotFoundException
     */
    public AccountNotFoundException getFaultInfo() {
        return faultInfo;
    }

}
