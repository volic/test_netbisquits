//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vhudson-jaxb-ri-2.1-833 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2011.05.12 at 04:11:10 PM EEST 
//


package com.epam.triimob.netbiscuits.xml;

import java.math.BigDecimal;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlValue;


/**
 * <p>Java class for transcript complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="transcript">
 *   &lt;simpleContent>
 *     &lt;extension base="&lt;http://www.w3.org/2001/XMLSchema>string">
 *       &lt;attribute name="c" type="{http://www.w3.org/2001/XMLSchema}decimal" />
 *       &lt;attribute name="d" type="{http://www.w3.org/2001/XMLSchema}decimal" />
 *       &lt;attribute name="i" type="{http://www.w3.org/2001/XMLSchema}int" />
 *       &lt;attribute name="s" type="{http://www.w3.org/2001/XMLSchema}decimal" />
 *     &lt;/extension>
 *   &lt;/simpleContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "transcript", propOrder = {
    "value"
})
public class Transcript {

    @XmlValue
    protected String value;
    @XmlAttribute
    protected BigDecimal c;
    @XmlAttribute
    protected BigDecimal d;
    @XmlAttribute
    protected Integer i;
    @XmlAttribute
    protected BigDecimal s;

    /**
     * Gets the value of the value property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getValue() {
        return value;
    }

    /**
     * Sets the value of the value property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setValue(String value) {
        this.value = value;
    }

    /**
     * Gets the value of the c property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getC() {
        return c;
    }

    /**
     * Sets the value of the c property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setC(BigDecimal value) {
        this.c = value;
    }

    /**
     * Gets the value of the d property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getD() {
        return d;
    }

    /**
     * Sets the value of the d property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setD(BigDecimal value) {
        this.d = value;
    }

    /**
     * Gets the value of the i property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getI() {
        return i;
    }

    /**
     * Sets the value of the i property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setI(Integer value) {
        this.i = value;
    }

    /**
     * Gets the value of the s property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getS() {
        return s;
    }

    /**
     * Sets the value of the s property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setS(BigDecimal value) {
        this.s = value;
    }

}