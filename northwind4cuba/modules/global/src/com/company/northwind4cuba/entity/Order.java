package com.company.northwind4cuba.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.AttributeOverrides;
import javax.persistence.AttributeOverride;
import javax.persistence.Column;
import com.haulmont.cuba.core.global.DesignSupport;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.haulmont.cuba.core.entity.BaseIntIdentityIdEntity;

@DesignSupport("{'imported':true}")
@AttributeOverrides({
        @AttributeOverride(name = "id", column = @Column(name = "ORDER_ID"))
})
@Table(name = "ORDER_")
@Entity(name = "northwind4cuba$Order")
public class Order extends BaseIntIdentityIdEntity {
    private static final long serialVersionUID = -1712351114126416309L;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "EMPLOYEE_ID")
    protected Employee employee;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CUSTOMER_ID")
    protected Customer customer;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "ORDER_DATE")
    protected Date orderDate;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "SHIPPED_DATE")
    protected Date shippedDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "SHIPPER_ID")
    protected Shipper shipper;

    @Column(name = "SHIP_NAME", length = 50)
    protected String shipName;

    @Lob
    @Column(name = "SHIP_ADDRESS")
    protected String shipAddress;

    @Column(name = "SHIP_CITY", length = 50)
    protected String shipCity;

    @Column(name = "SHIP_STATE_PROVINCE", length = 50)
    protected String shipStateProvince;

    @Column(name = "SHIP_ZIP_POSTAL_CODE", length = 50)
    protected String shipZipPostalCode;

    @Column(name = "SHIP_COUNTRY_REGION", length = 50)
    protected String shipCountryRegion;

    @Column(name = "SHIPPING_FEE", precision = 19, scale = 4)
    protected BigDecimal shippingFee;

    @Column(name = "TAXES", precision = 19, scale = 4)
    protected BigDecimal taxes;

    @Column(name = "PAYMENT_TYPE", length = 50)
    protected String paymentType;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "PAID_DATE")
    protected Date paidDate;

    @Lob
    @Column(name = "NOTES")
    protected String notes;

    @Column(name = "TAX_RATE")
    protected Double taxRate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TAX_STATUS")
    protected OrdersTaxStatus taxStatus;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "STATUS_ID")
    protected OrdersStatus status;

    @Column(name = "\"SSMA_TimeStamp\"", nullable = false)
    protected byte[] ssmaTimestamp;

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setShippedDate(Date shippedDate) {
        this.shippedDate = shippedDate;
    }

    public Date getShippedDate() {
        return shippedDate;
    }

    public void setShipper(Shipper shipper) {
        this.shipper = shipper;
    }

    public Shipper getShipper() {
        return shipper;
    }

    public void setShipName(String shipName) {
        this.shipName = shipName;
    }

    public String getShipName() {
        return shipName;
    }

    public void setShipAddress(String shipAddress) {
        this.shipAddress = shipAddress;
    }

    public String getShipAddress() {
        return shipAddress;
    }

    public void setShipCity(String shipCity) {
        this.shipCity = shipCity;
    }

    public String getShipCity() {
        return shipCity;
    }

    public void setShipStateProvince(String shipStateProvince) {
        this.shipStateProvince = shipStateProvince;
    }

    public String getShipStateProvince() {
        return shipStateProvince;
    }

    public void setShipZipPostalCode(String shipZipPostalCode) {
        this.shipZipPostalCode = shipZipPostalCode;
    }

    public String getShipZipPostalCode() {
        return shipZipPostalCode;
    }

    public void setShipCountryRegion(String shipCountryRegion) {
        this.shipCountryRegion = shipCountryRegion;
    }

    public String getShipCountryRegion() {
        return shipCountryRegion;
    }

    public void setShippingFee(BigDecimal shippingFee) {
        this.shippingFee = shippingFee;
    }

    public BigDecimal getShippingFee() {
        return shippingFee;
    }

    public void setTaxes(BigDecimal taxes) {
        this.taxes = taxes;
    }

    public BigDecimal getTaxes() {
        return taxes;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaidDate(Date paidDate) {
        this.paidDate = paidDate;
    }

    public Date getPaidDate() {
        return paidDate;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public String getNotes() {
        return notes;
    }

    public void setTaxRate(Double taxRate) {
        this.taxRate = taxRate;
    }

    public Double getTaxRate() {
        return taxRate;
    }

    public void setTaxStatus(OrdersTaxStatus taxStatus) {
        this.taxStatus = taxStatus;
    }

    public OrdersTaxStatus getTaxStatus() {
        return taxStatus;
    }

    public void setStatus(OrdersStatus status) {
        this.status = status;
    }

    public OrdersStatus getStatus() {
        return status;
    }

    public byte[] getSsmaTimestamp() {
        return ssmaTimestamp;
    }


}