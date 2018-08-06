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
        @AttributeOverride(name = "id", column = @Column(name = "PURCHASE_ORDER_ID"))
})
@Table(name = "PURCHASE_ORDER")
@Entity(name = "northwind4cuba$PurchaseOrder")
public class PurchaseOrder extends BaseIntIdentityIdEntity {
    private static final long serialVersionUID = -3857550667602324552L;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "SUPPLIER_ID")
    protected Supplier supplier;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CREATED_BY")
    protected Employee createdBy1;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "SUBMITTED_DATE")
    protected Date submittedDate;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "CREATION_DATE")
    protected Date creationDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "STATUS_ID")
    protected PurchaseOrderStatus status;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "EXPECTED_DATE")
    protected Date expectedDate;

    @Column(name = "SHIPPING_FEE", nullable = false, precision = 19, scale = 4)
    protected BigDecimal shippingFee;

    @Column(name = "TAXES", nullable = false, precision = 19, scale = 4)
    protected BigDecimal taxes;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "PAYMENT_DATE")
    protected Date paymentDate;

    @Column(name = "PAYMENT_AMOUNT", precision = 19, scale = 4)
    protected BigDecimal paymentAmount;

    @Column(name = "PAYMENT_METHOD", length = 50)
    protected String paymentMethod;

    @Lob
    @Column(name = "NOTES")
    protected String notes;

    @Column(name = "APPROVED_BY")
    protected Integer approvedBy;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "APPROVED_DATE")
    protected Date approvedDate;

    @Column(name = "SUBMITTED_BY")
    protected Integer submittedBy;

    @Column(name = "\"SSMA_TimeStamp\"", nullable = false)
    protected byte[] ssmaTimestamp;

    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }

    public Supplier getSupplier() {
        return supplier;
    }

    public void setCreatedBy1(Employee createdBy1) {
        this.createdBy1 = createdBy1;
    }

    public Employee getCreatedBy1() {
        return createdBy1;
    }

    public void setSubmittedDate(Date submittedDate) {
        this.submittedDate = submittedDate;
    }

    public Date getSubmittedDate() {
        return submittedDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setStatus(PurchaseOrderStatus status) {
        this.status = status;
    }

    public PurchaseOrderStatus getStatus() {
        return status;
    }

    public void setExpectedDate(Date expectedDate) {
        this.expectedDate = expectedDate;
    }

    public Date getExpectedDate() {
        return expectedDate;
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

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentAmount(BigDecimal paymentAmount) {
        this.paymentAmount = paymentAmount;
    }

    public BigDecimal getPaymentAmount() {
        return paymentAmount;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public String getNotes() {
        return notes;
    }

    public void setApprovedBy(Integer approvedBy) {
        this.approvedBy = approvedBy;
    }

    public Integer getApprovedBy() {
        return approvedBy;
    }

    public void setApprovedDate(Date approvedDate) {
        this.approvedDate = approvedDate;
    }

    public Date getApprovedDate() {
        return approvedDate;
    }

    public void setSubmittedBy(Integer submittedBy) {
        this.submittedBy = submittedBy;
    }

    public Integer getSubmittedBy() {
        return submittedBy;
    }

    public byte[] getSsmaTimestamp() {
        return ssmaTimestamp;
    }


}