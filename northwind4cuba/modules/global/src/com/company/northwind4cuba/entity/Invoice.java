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
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.haulmont.cuba.core.entity.BaseIntIdentityIdEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s : %s|id,amountDue")
@DesignSupport("{'imported':true}")
@AttributeOverrides({
        @AttributeOverride(name = "id", column = @Column(name = "INVOICE_ID"))
})
@Table(name = "INVOICE")
@Entity(name = "northwind4cuba$Invoice")
public class Invoice extends BaseIntIdentityIdEntity {
    private static final long serialVersionUID = -5579574107173933701L;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ORDER_ID")
    protected Order order;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "INVOICE_DATE")
    protected Date invoiceDate;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "DUE_DATE")
    protected Date dueDate;

    @Column(name = "TAX", precision = 19, scale = 4)
    protected BigDecimal tax;

    @Column(name = "SHIPPING", precision = 19, scale = 4)
    protected BigDecimal shipping;

    @Column(name = "AMOUNT_DUE", precision = 19, scale = 4)
    protected BigDecimal amountDue;

    public void setOrder(Order order) {
        this.order = order;
    }

    public Order getOrder() {
        return order;
    }

    public void setInvoiceDate(Date invoiceDate) {
        this.invoiceDate = invoiceDate;
    }

    public Date getInvoiceDate() {
        return invoiceDate;
    }

    public void setDueDate(Date dueDate) {
        this.dueDate = dueDate;
    }

    public Date getDueDate() {
        return dueDate;
    }

    public void setTax(BigDecimal tax) {
        this.tax = tax;
    }

    public BigDecimal getTax() {
        return tax;
    }

    public void setShipping(BigDecimal shipping) {
        this.shipping = shipping;
    }

    public BigDecimal getShipping() {
        return shipping;
    }

    public void setAmountDue(BigDecimal amountDue) {
        this.amountDue = amountDue;
    }

    public BigDecimal getAmountDue() {
        return amountDue;
    }


}